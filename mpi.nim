include mpiRaw
import os, sequtils, macros



const Root*: int = 0  ## Traditionally root is process no 0


type Comm* = object  ## Type-safe, idiomatic variant of MPI_Comm
  value: MPI_COMM

const
  CommWorld* = Comm(value: MPI_COMM_WORLD)
  CommSelf*  = Comm(value: MPI_COMM_SELF)


type Op* = object  ## Type-safe, idiomatic variant of MPI_Op
  value: MPI_OP

const
  OpNull*    = Op(value: MPI_OP_NULL)
  OpMax*     = Op(value: MPI_MAX)
  OpMin*     = Op(value: MPI_MIN)
  OpSum*     = Op(value: MPI_SUM)
  OpProd*    = Op(value: MPI_PROD)
  OpLand*    = Op(value: MPI_LAND)
  OpBand*    = Op(value: MPI_BAND)
  OpLor*     = Op(value: MPI_LOR)
  OpBor*     = Op(value: MPI_BOR)
  OpLxor*    = Op(value: MPI_LXOR)
  OpBxor*    = Op(value: MPI_BXOR)
  OpMinloc*  = Op(value: MPI_MINLOC)
  OpMaxloc*  = Op(value: MPI_MAXLOC)
  OpReplace* = Op(value: MPI_REPLACE)
  OpNoOp*    = Op(value: MPI_NO_OP)


template mpiType[T](ty: typedesc[T]): MPI_Datatype =
  ## Returns MPI variant of a type.
  when T is cint or T is int:
    MPI_INT
  elif T is cfloat:
    MPI_FLOAT
  elif T is cdouble:
    MPI_DOUBLE
  elif T is float:
    when sizeof(float) == 32:
      MPI_FLOAT
    else:
      MPI_DOUBLE
  elif T is cchar or T is char:
    MPI_CHAR
  else:
    {.error: "not an MPI-compatible type!".}


type
  Err = object of Exception    ## MPI error
  ErrBuffer = object of Err    ## Invalid buffer pointer
  ErrCount = object of Err     ## Invalid count argument
  ErrType = object of Err      ## Invalid datatype argument
  ErrTag = object of Err       ## Invalid tag argument
  ErrComm = object of Err      ## Invalid communicator
  ErrRank = object of Err      ## Invalid rank
  ErrRequest = object of Err   ## Invalid request (handle)
  ErrRoot = object of Err      ## Invalid root
  ErrGroup = object of Err     ## Invalid group
  ErrOp = object of Err        ## Invalid operation
  ErrTopology = object of Err  ## Invalid topology
  ErrDims = object of Err      ## Invalid dimension argument
  ErrArg = object of Err       ## Invalid argument of some other kind
  ErrUnknown = object of Err   ## Unknown error
  ErrTruncate = object of Err  ## Message truncated on receive
  ErrOther = object of Err     ## Known error not in this list
  ErrIntern = object of Err    ## Internal MPI (implementation) error
  ErrInStatus = object of Err  ## Error code is in status
  ErrPending = object of Err   ## Pending request
  # ...others...


proc unwrapErr(err: cint): ref Err =
  case err:
  of MPI_SUCCESS:
    nil
  of MPI_ERR_BUFFER:
    newException(ErrBuffer, "Invalid buffer pointer")
  of MPI_ERR_COUNT:
    newException(ErrCount, "Invalid count argument")
  of MPI_ERR_TYPE:
    newException(ErrType, "Invalid datatype argument")
  of MPI_ERR_TAG:
    newException(ErrTag, "Invalid tag argument")
  of MPI_ERR_COMM:
    newException(ErrComm, "Invalid communicator")
  of MPI_ERR_RANK:
    newException(ErrRank, "Invalid rank")
  of MPI_ERR_REQUEST:
    newException(ErrRequest, "Invalid request (handle)")
  of MPI_ERR_ROOT:
    newException(ErrRoot, "Invalid root")
  of MPI_ERR_GROUP:
    newException(ErrGroup, "Invalid group")
  of MPI_ERR_OP:
    newException(ErrOp, "Invalid operation")
  of MPI_ERR_TOPOLOGY:
    newException(ErrTopology, "Invalid topology")
  of MPI_ERR_DIMS:
    newException(ErrDims, "Invalid dimension argument")
  of MPI_ERR_ARG:
    newException(ErrArg, "Invalid argument of some other kind")
  of MPI_ERR_UNKNOWN:
    newException(ErrUnknown, "Unknown error")
  of MPI_ERR_TRUNCATE:
    newException(ErrTruncate, "Message truncated on receive")
  of MPI_ERR_OTHER:
    newException(ErrOther, "Known error not in this list")
  of MPI_ERR_INTERN:
    newException(ErrIntern, "Internal MPI (implementation) error")
  of MPI_ERR_IN_STATUS:
    newException(ErrInStatus, "Error code is in status")
  of MPI_ERR_PENDING:
    newException(ErrPending, "Pending request")
  # ...others...
  else:
    nil

proc maybeThrows(err: cint) =
  ## Throw MPI error codes as exceptions.
  let exc = unwrapErr(err)
  if exc != nil:
    raise exc


type Status = object
  countLo*: int
  countHiAndCancelled: int
  source: int
  tag: int
  error: ref Err

proc newStatus(status: MPI_Status): Status =
  result.countLo = status.count_lo.int
  result.countHiAndCancelled = status.count_hi_and_cancelled.int
  result.source = status.MPI_SOURCE.int
  result.tag = status.MPI_TAG.int
  result.error = status.MPI_ERROR.unwrapErr()



proc init*(args: seq[string]) =
  ## Type-safe, idiomatic variant of MPI_Init
  var clen = args.len.cint
  var carr = allocCStringArray(args)
  maybeThrows MPI_Init(clen.addr, carr.addr)
  deallocCStringArray(carr)

proc init*() =
  ## Type-safe, idiomatic variant of MPI_Init, by default it is called
  ## with program name and params.
  let aname = getAppFilename()
  var params = commandLineParams().mapIt(it.string)
  params.insert(aname, 0)
  init(params)

proc finalize*() =
  ## Type-safe, idiomatic variant of MPI_Finalize
  discard MPI_Finalize()

var mpiMain {.compileTime.}: NimNode = nil
macro mpiApp*(routine: untyped): typed =
  ## Safe, idiomatic procedural pragma encapsulating init and finalize.
  ## Errors if annotates more than one routine.
  if mpiMain != nil:
    error "Main MPI routine already declared at: " & $mpiMain.lineinfo
  routine.expectKind RoutineNodes
  mpiMain = routine
  result  = routine
  template main =
    init()
    defer:
      finalize()
  result.body.insert(0, getAst(main()))


proc commSize*(comm: Comm = CommWorld): int =
  ## Type-safe, idiomatic variant of MPI_Comm_size
  var cSize: cint
  maybeThrows MPI_Comm_size(comm.value, cSize.addr)
  cSize.int

proc commRank*(comm: Comm = CommWorld): int =
  ## Type-safe, idiomatic variant of MPI_Comm_rank
  var cRank: cint
  maybeThrows MPI_Comm_rank(comm.value, cRank.addr)
  cRank.int

proc send*[T](ty: typedesc[T],
              buf: pointer,
              buflen: int,
              dest: int,
              tag: int = 0,
              comm: Comm = CommWorld) =
  ## Unsafe but idiomatic variant of MPI_Send.
  maybeThrows MPI_Send(buf, buflen.cint, T.mpiType,
                       dest.cint, tag.cint, comm.value)

proc send*[T](buf: var openArray[T],
              dest: int,
              tag: int = 0,
              comm: Comm = CommWorld) =
  ## Type-safe, idiomatic variant of MPI_Send.
  ## Array needs to be mutable for it to have an address.
  send(T, buf[0].addr, buf.len, dest, tag, comm)


proc send*[T](buf: seq[T]{call},
              dest: int,
              tag: int = 0,
              comm: Comm = CommWorld) =
  ## Type-safe, idiomatic variant of MPI_Send.
  ## Array from call is moved (shallow copied).
  ## Works with slices too.
  var mbuf: seq[T]
  shallowCopy mbuf, buf
  send(mbuf, dest, tag, comm)


proc recv*[T](ty: typedesc[T],
             buf: pointer,
             buflen: int,
             src: int,
             tag: int = 0,
             comm: Comm = CommWorld): Status =
  ## Unsafe but idiomatic variant of MPI_Recv
  var stat: MPI_Status
  maybeThrows MPI_Recv(buf, buflen.cint, T.mpiType,
                       src.cint, tag.cint, comm.value,
                       stat.addr)
  result = newStatus(stat)

proc recv*[T](buf: var openArray[T],
              src: int,
              tag: int = 0,
              comm: Comm = CommWorld): Status {.discardable.} =
  ## Type-safe, idiomatic variant of MPI_Recv
  recv(T, buf[0].addr, buf.len, src, tag, comm)

macro recv*[T](buf: seq[T]{call},
              src: int,
              tag: int = 0,
              comm: Comm = CommWorld): typed {.discardable.} =
  ## Type-safe, idiomatic variant of MPI_Recv
  ## which works in-place for simple seq slices.
  buf.expectKind nnkCall
  assert buf[0].eqIdent("[]")
  let start = buf[1][1]
  assert start.kind in {nnkIdent, nnkSym}
  var impl = buf[2]
  if impl.kind in {nnkStmtList, nnkStmtListExpr} and
     impl.len == 2 and
     impl[0].kind == nnkCommentStmt:
    impl = impl[1]
  impl.expectKind nnkInfix
  assert impl[0].eqIdent("..")
  let offset = impl[1]
  var ending = impl[2]
  if ending.len > 1 and ending[0].eqIdent("BackwardsIndex"):
    ending = infix(newCall("len", start), "-", ending[1])
  let length = infix(infix(ending, "-", offset), "+", 1.newLit)

  template genCode(start, offset, length, src, tag, comm): Status =
    type T = start[0].type
    let totalOffset = offset * sizeof(T)
    let address = cast[pointer](cast[int](start[0].addr) + totalOffset)
    # trick to make it discardable:
    proc disc: Status {.discardable.} =
      recv(T, address, length, src, tag, comm)
    disc()

  result = getAst(genCode(start, offset, length, src, tag, comm))


proc reduce*[T](ty: typedesc[T], sendbuf, recvbuf: pointer, count: int,
                op: Op, root: int = Root, comm: Comm = CommWorld) =
  ## Unsafe but idiomatic variant of MPI_Reduce.
  maybeThrows MPI_Reduce(sendbuf, recvbuf, count.cint,
                         T.mpiType, op.value, root.cint, comm.value)

proc reduce*[T](sendbuf: var openArray[T], recvbuf: var openArray[T],
                op: Op, root: int = Root, comm: Comm = CommWorld) =
  ## Type-safe, idiomatic variant of MPI_Reduce. Works for calling send.
  assert sendbuf.len == recvbuf.len
  reduce(T, sendbuf.addr, recvbuf.addr, sendbuf.len, op, root, comm)

proc reduce*[T](buf: var seq[T],
                op: Op, root: int = Root, comm: Comm = CommWorld) =
  ## Type-safe, idiomatic variant of MPI_Reduce, "in-place".
  var recvbuf = newSeq[T](buf.len)
  reduce(buf, recvbuf, op, root, comm)
  shallowCopy buf, recvbuf

proc reduce*[T](sendbuf: seq[T]{call}, recvbuf: var openArray[T],
                op: Op, root: int = Root, comm: Comm = CommWorld) =
  ## Type-safe, idiomatic variant of MPI_Reduce. Works for calling send.
  var mbuf: seq[T]
  shallowCopy mbuf, sendbuf
  reduce(mbuf, recvbuf, op, root, comm)



template opReduce(fname, opname): typed =
  template fname*(sendbuf: typed, recvbuf: typed,
                  root: int = Root, comm: Comm = CommWorld) =
    reduce(sendbuf, recvbuf, opname, root, comm)
  template fname*(buf: typed,
                  root: int = Root, comm: Comm = CommWorld) =
    reduce(buf, opname, root, comm)

opReduce max,    OpMax
opReduce min,    OpMin
opReduce maxLoc, OpMaxLoc
opReduce minLoc, OpMinLoc
opReduce sum,    OpSum
opReduce prod,   OpProd


proc barrier*(comm: Comm = CommWorld) =
  ## Type-safe, idiomatic variant of MPI_Barrier.
  maybeThrows MPI_Barrier(comm.value)
