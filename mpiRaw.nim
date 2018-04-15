const hmpi = "mpi.h"
{.passC: "-I/usr/include/mpich -L/usr/lib/i386-linux-gnu".}
{.passL: "-Bsymbolic-functions -z,relro" &
         "-I/usr/include/mpich -L/usr/lib/i386-linux-gnu -lmpich".}


   
type
  int8_t* = cchar
  int16_t* = cshort
  int32_t* = cint
  int64_t* = clonglong
  uint8_t* = cuchar
  uint16_t* = cushort
  uint32_t* = cuint
  uint64_t* = culonglong
  int_least8_t* = cchar
  int_least16_t* = cshort
  int_least32_t* = cint
  int_least64_t* = clonglong
  uint_least8_t* = cuchar
  uint_least16_t* = cushort
  uint_least32_t* = cuint
  uint_least64_t* = culonglong
  int_fast8_t* = cchar
  int_fast16_t* = cint
  int_fast32_t* = cint
  int_fast64_t* = clonglong
  uint_fast8_t* = cuchar
  uint_fast16_t* = cuint
  uint_fast32_t* = cuint
  uint_fast64_t* = culonglong
  intptr_t* = cint
  uintptr_t* = cuint
  intmax_t* = clonglong
  uintmax_t* = culonglong
  MPI_Request* = cint
  MPI_Message* = cint
  MPI_User_function* = proc (a2: pointer; a3: pointer; a4: ptr cint; a5: ptr MPI_Datatype)
  MPI_Copy_function* = proc (a2: MPI_Comm; a3: cint; a4: pointer; a5: pointer; a6: pointer;
                          a7: ptr cint): cint
  MPI_Delete_function* = proc (a2: MPI_Comm; a3: cint; a4: pointer; a5: pointer): cint
  MPI_Datatype* = cint
  MPI_Comm* = cint
  MPI_Group* = cint
  MPI_Win* = cint
  MPI_File* = pointer
  MPI_Op* = cint
  MPI_Errhandler* = cint

const MPI_COMM_NULL*: MPI_Comm = (cast[MPI_Comm](0x04000000))

const MPI_OP_NULL*: MPI_Op = (cast[MPI_Op](0x18000000))

const MPI_GROUP_NULL*: MPI_Group = (cast[MPI_Group](0x08000000))

const MPI_DATATYPE_NULL*: MPI_Datatype = (cast[MPI_Datatype](0x0C000000))

const MPI_REQUEST_NULL*: MPI_Request = (cast[MPI_Request](0x2C000000))

const MPI_ERRHANDLER_NULL*: MPI_Errhandler = (cast[MPI_Errhandler](0x14000000))

const MPI_MESSAGE_NULL*: MPI_Message = (cast[MPI_Message](0x2C000000))

const MPI_MESSAGE_NO_PROC*: MPI_Message = (cast[MPI_Message](0x6C000000))

const MPI_IDENT*: cint = 0

const MPI_CONGRUENT*: cint = 1

const MPI_SIMILAR*: cint = 2

const MPI_UNEQUAL*: cint = 3

const MPI_CHAR*: MPI_Datatype = (cast[MPI_Datatype](0x4C000101))

const MPI_SIGNED_CHAR*: MPI_Datatype = (cast[MPI_Datatype](0x4C000118))

const MPI_UNSIGNED_CHAR*: MPI_Datatype = (cast[MPI_Datatype](0x4C000102))

const MPI_BYTE*: MPI_Datatype = (cast[MPI_Datatype](0x4C00010D))

const MPI_WCHAR*: MPI_Datatype = (cast[MPI_Datatype](0x4C00040E))

const MPI_SHORT*: MPI_Datatype = (cast[MPI_Datatype](0x4C000203))

const MPI_UNSIGNED_SHORT*: MPI_Datatype = (cast[MPI_Datatype](0x4C000204))

const MPI_INT*: MPI_Datatype = (cast[MPI_Datatype](0x4C000405))

const MPI_UNSIGNED*: MPI_Datatype = (cast[MPI_Datatype](0x4C000406))

const MPI_LONG*: MPI_Datatype = (cast[MPI_Datatype](0x4C000407))

const MPI_UNSIGNED_LONG*: MPI_Datatype = (cast[MPI_Datatype](0x4C000408))

const MPI_FLOAT*: MPI_Datatype = (cast[MPI_Datatype](0x4C00040A))

const MPI_DOUBLE*: MPI_Datatype = (cast[MPI_Datatype](0x4C00080B))

const MPI_LONG_DOUBLE*: MPI_Datatype = (cast[MPI_Datatype](0x4C000C0C))

const MPI_LONG_LONG_INT*: MPI_Datatype = (cast[MPI_Datatype](0x4C000809))

const MPI_UNSIGNED_LONG_LONG*: MPI_Datatype = (cast[MPI_Datatype](0x4C000819))

const MPI_LONG_LONG*: MPI_Datatype = MPI_LONG_LONG_INT

const MPI_PACKED*: MPI_Datatype = (cast[MPI_Datatype](0x4C00010F))

const MPI_LB*: MPI_Datatype = (cast[MPI_Datatype](0x4C000010))

const MPI_UB*: MPI_Datatype = (cast[MPI_Datatype](0x4C000011))

const MPI_FLOAT_INT*: MPI_Datatype = (cast[MPI_Datatype](0x8C000000.toU32))

const MPI_DOUBLE_INT*: MPI_Datatype = (cast[MPI_Datatype](0x8C000001.toU32))

const MPI_LONG_INT*: MPI_Datatype = (cast[MPI_Datatype](0x8C000002.toU32))

const MPI_SHORT_INT*: MPI_Datatype = (cast[MPI_Datatype](0x8C000003.toU32))

const MPI_2INT*: MPI_Datatype = (cast[MPI_Datatype](0x4C000816))

const MPI_LONG_DOUBLE_INT*: MPI_Datatype = (cast[MPI_Datatype](0x8C000004.toU32))

const MPI_COMPLEX*: MPI_Datatype = (cast[MPI_Datatype](1275070494))

const MPI_DOUBLE_COMPLEX*: MPI_Datatype = (cast[MPI_Datatype](1275072546))

const MPI_LOGICAL*: MPI_Datatype = (cast[MPI_Datatype](1275069469))

const MPI_REAL*: MPI_Datatype = (cast[MPI_Datatype](1275069468))

const MPI_DOUBLE_PRECISION*: MPI_Datatype = (cast[MPI_Datatype](1275070495))

const MPI_INTEGER*: MPI_Datatype = (cast[MPI_Datatype](1275069467))

const MPI_2INTEGER*: MPI_Datatype = (cast[MPI_Datatype](1275070496))

const MPI_2REAL*: MPI_Datatype = (cast[MPI_Datatype](1275070497))

const MPI_2DOUBLE_PRECISION*: MPI_Datatype = (cast[MPI_Datatype](1275072547))

const MPI_CHARACTER*: MPI_Datatype = (cast[MPI_Datatype](1275068698))

const MPI_REAL4*: MPI_Datatype = (cast[MPI_Datatype](0x4C000427))

const MPI_REAL8*: MPI_Datatype = (cast[MPI_Datatype](0x4C000829))

const MPI_REAL16*: MPI_Datatype = (cast[MPI_Datatype](MPI_DATATYPE_NULL))

const MPI_COMPLEX8*: MPI_Datatype = (cast[MPI_Datatype](0x4C000828))

const MPI_COMPLEX16*: MPI_Datatype = (cast[MPI_Datatype](0x4C00102A))

const MPI_COMPLEX32*: MPI_Datatype = (cast[MPI_Datatype](MPI_DATATYPE_NULL))

const MPI_INTEGER1*: MPI_Datatype = (cast[MPI_Datatype](0x4C00012D))

const MPI_INTEGER2*: MPI_Datatype = (cast[MPI_Datatype](0x4C00022F))

const MPI_INTEGER4*: MPI_Datatype = (cast[MPI_Datatype](0x4C000430))

const MPI_INTEGER8*: MPI_Datatype = (cast[MPI_Datatype](0x4C000831))

const MPI_INTEGER16*: MPI_Datatype = (cast[MPI_Datatype](MPI_DATATYPE_NULL))

const MPI_INT8_T*: MPI_Datatype = (cast[MPI_Datatype](0x4C000137))

const MPI_INT16_T*: MPI_Datatype = (cast[MPI_Datatype](0x4C000238))

const MPI_INT32_T*: MPI_Datatype = (cast[MPI_Datatype](0x4C000439))

const MPI_INT64_T*: MPI_Datatype = (cast[MPI_Datatype](0x4C00083A))

const MPI_UINT8_T*: MPI_Datatype = (cast[MPI_Datatype](0x4C00013B))

const MPI_UINT16_T*: MPI_Datatype = (cast[MPI_Datatype](0x4C00023C))

const MPI_UINT32_T*: MPI_Datatype = (cast[MPI_Datatype](0x4C00043D))

const MPI_UINT64_T*: MPI_Datatype = (cast[MPI_Datatype](0x4C00083E))

const MPI_C_BOOL*: MPI_Datatype = (cast[MPI_Datatype](0x4C00013F))

const MPI_C_FLOAT_COMPLEX*: MPI_Datatype = (cast[MPI_Datatype](0x4C000840))

const MPI_C_COMPLEX*: MPI_Datatype = MPI_C_FLOAT_COMPLEX

const MPI_C_DOUBLE_COMPLEX*: MPI_Datatype = (cast[MPI_Datatype](0x4C001041))

const MPI_C_LONG_DOUBLE_COMPLEX*: MPI_Datatype = (cast[MPI_Datatype](0x4C001842))

const MPI_AINT_DATATYPE*: MPI_Datatype = (cast[MPI_Datatype](0x4C000443))

const MPI_OFFSET_DATATYPE*: MPI_Datatype = (cast[MPI_Datatype](0x4C000844))

const MPI_COUNT_DATATYPE*: MPI_Datatype = (cast[MPI_Datatype](0x4C000845))

const MPI_CXX_BOOL*: MPI_Datatype = (cast[MPI_Datatype](0x4C000133))

const MPI_CXX_FLOAT_COMPLEX*: MPI_Datatype = (cast[MPI_Datatype](0x4C000834))

const MPI_CXX_DOUBLE_COMPLEX*: MPI_Datatype = (cast[MPI_Datatype](0x4C001035))

const MPI_CXX_LONG_DOUBLE_COMPLEX*: MPI_Datatype = (cast[MPI_Datatype](0x4C001836))

const MPI_TYPECLASS_REAL*: cint = 1

const MPI_TYPECLASS_INTEGER*: cint = 2

const MPI_TYPECLASS_COMPLEX*: cint = 3

const MPI_COMM_WORLD*: MPI_Comm = (cast[MPI_Comm](0x44000000))

const MPI_COMM_SELF*: MPI_Comm = (cast[MPI_Comm](0x44000001))

const MPI_GROUP_EMPTY*: MPI_Group = (cast[MPI_Group](0x48000000))

const MPI_WIN_NULL*: MPI_Win = (cast[MPI_Win](0x20000000))

const MPI_MAX*: MPI_Op = cast[MPI_Op](0x58000001)

const MPI_MIN*: MPI_Op = cast[MPI_Op](0x58000002)

const MPI_SUM*: MPI_Op = cast[MPI_Op](0x58000003)

const MPI_PROD*: MPI_Op = cast[MPI_Op](0x58000004)

const MPI_LAND*: MPI_Op = cast[MPI_Op](0x58000005)

const MPI_BAND*: MPI_Op = cast[MPI_Op](0x58000006)

const MPI_LOR*: MPI_Op = cast[MPI_Op](0x58000007)

const MPI_BOR*: MPI_Op = cast[MPI_Op](0x58000008)

const MPI_LXOR*: MPI_Op = cast[MPI_Op](0x58000009)

const MPI_BXOR*: MPI_Op = cast[MPI_Op](0x5800000A)

const MPI_MINLOC*: MPI_Op = cast[MPI_Op](0x5800000B)

const MPI_MAXLOC*: MPI_Op = cast[MPI_Op](0x5800000C)

const MPI_REPLACE*: MPI_Op = cast[MPI_Op](0x5800000D)

const MPI_NO_OP*: MPI_Op = cast[MPI_Op](0x5800000E)

const MPI_TAG_UB*: cint = 0x64400001

const MPI_HOST*: cint = 0x64400003

const MPI_IO*: cint = 0x64400005

const MPI_WTIME_IS_GLOBAL*: cint = 0x64400007

const MPI_UNIVERSE_SIZE*: cint = 0x64400009

const MPI_LASTUSEDCODE*: cint = 0x6440000B

const MPI_APPNUM*: cint = 0x6440000D

const MPI_WIN_BASE*: cint = 0x66000001

const MPI_WIN_SIZE*: cint = 0x66000003

const MPI_WIN_DISP_UNIT*: cint = 0x66000005

const MPI_WIN_CREATE_FLAVOR*: cint = 0x66000007

const MPI_WIN_MODEL*: cint = 0x66000009

const MPI_MAX_PROCESSOR_NAME*: cint = 128

const MPI_MAX_LIBRARY_VERSION_STRING*: cint = 8192

const MPI_MAX_ERROR_STRING*: cint = 512

const MPI_MAX_PORT_NAME*: cint = 256

const MPI_MAX_OBJECT_NAME*: cint = 128

const MPI_UNDEFINED*: cint = (-32766)

const MPI_KEYVAL_INVALID*: cint = 0x24000000

type
  MPIR_Win_flavor_t* = enum
    MPI_WIN_FLAVOR_CREATE = 1, MPI_WIN_FLAVOR_ALLOCATE = 2,
    MPI_WIN_FLAVOR_DYNAMIC = 3, MPI_WIN_FLAVOR_SHARED = 4
  MPIR_Win_model_t* = enum
    MPI_WIN_SEPARATE = 1, MPI_WIN_UNIFIED = 2



const MPI_BSEND_OVERHEAD*: cint = 56

type
  MPIR_Topo_type* = enum
    MPI_GRAPH = 1, MPI_CART = 2, MPI_DIST_GRAPH = 3


const MPI_BOTTOM*: pointer = cast[pointer](0)

var MPI_UNWEIGHTED*: ptr cint

var MPI_WEIGHTS_EMPTY*: ptr cint

const MPI_PROC_NULL*: cint = (-1)

const MPI_ANY_SOURCE*: cint = (-2)

const MPI_ROOT*: cint = (-3)

const MPI_ANY_TAG*: cint = (-1)

const MPI_LOCK_EXCLUSIVE*: cint = 234

const MPI_LOCK_SHARED*: cint = 235

type
  MPI_Handler_function* = proc (a2: ptr MPI_Comm; a3: ptr cint) {.varargs.}
  MPI_Comm_copy_attr_function* = proc (a2: MPI_Comm; a3: cint; a4: pointer; a5: pointer;
                                    a6: pointer; a7: ptr cint): cint
  MPI_Comm_delete_attr_function* = proc (a2: MPI_Comm; a3: cint; a4: pointer; a5: pointer): cint
  MPI_Type_copy_attr_function* = proc (a2: MPI_Datatype; a3: cint; a4: pointer;
                                    a5: pointer; a6: pointer; a7: ptr cint): cint
  MPI_Type_delete_attr_function* = proc (a2: MPI_Datatype; a3: cint; a4: pointer;
                                      a5: pointer): cint
  MPI_Win_copy_attr_function* = proc (a2: MPI_Win; a3: cint; a4: pointer; a5: pointer;
                                   a6: pointer; a7: ptr cint): cint
  MPI_Win_delete_attr_function* = proc (a2: MPI_Win; a3: cint; a4: pointer; a5: pointer): cint
  MPI_Comm_errhandler_function* = proc (a2: ptr MPI_Comm; a3: ptr cint) {.varargs.}
  MPI_File_errhandler_function* = proc (a2: ptr MPI_File; a3: ptr cint) {.varargs.}
  MPI_Win_errhandler_function* = proc (a2: ptr MPI_Win; a3: ptr cint) {.varargs.}
  MPI_Comm_errhandler_fn* = MPI_Comm_errhandler_function
  MPI_File_errhandler_fn* = MPI_File_errhandler_function
  MPI_Win_errhandler_fn* = MPI_Win_errhandler_function

const MPI_ERRORS_ARE_FATAL*: MPI_Errhandler = (cast[MPI_Errhandler](0x54000000))

const MPI_ERRORS_RETURN*: MPI_Errhandler = (cast[MPI_Errhandler](0x54000001))

const MPIR_ERRORS_THROW_EXCEPTIONS*: MPI_Errhandler = (
    cast[MPI_Errhandler](0x54000002))

const MPI_NULL_COPY_FN*: ptr MPI_Copy_function = (cast[ptr MPI_Copy_function](0))

const MPI_NULL_DELETE_FN*: ptr MPI_Delete_function = (cast[ptr MPI_Delete_function](0))

const MPI_COMM_NULL_COPY_FN*: ptr MPI_Comm_copy_attr_function =
    cast[ptr MPI_Comm_copy_attr_function](nil)

const MPI_COMM_NULL_DELETE_FN*: ptr MPI_Comm_delete_attr_function =
    cast[ptr MPI_Comm_delete_attr_function](nil)


const MPI_WIN_NULL_COPY_FN*: ptr MPI_Win_copy_attr_function =
    cast[ptr MPI_Win_copy_attr_function](nil)

const MPI_WIN_NULL_DELETE_FN*: ptr MPI_Win_delete_attr_function =
    cast[ptr MPI_Win_delete_attr_function](nil)


const MPI_TYPE_NULL_COPY_FN*: ptr MPI_Type_copy_attr_function =
    cast[ptr MPI_Type_copy_attr_function](nil)

const MPI_TYPE_NULL_DELETE_FN*: ptr MPI_Type_delete_attr_function =
    cast[ptr MPI_Type_delete_attr_function](nil)


const MPI_VERSION*: cint = 3

const MPI_SUBVERSION*: cint = 1

const MPICH_NAME*: cint = 3

const MPICH*: cint = 1

const MPICH_HAS_C2F*: cint = 1

const MPICH_VERSION*: cstring = "3.2"

const MPICH_NUMVERSION*: cint = 30200300

const MPICH_RELEASE_TYPE_ALPHA*: cint = 0

const MPICH_RELEASE_TYPE_BETA*: cint = 1

const MPICH_RELEASE_TYPE_RC*: cint = 2

const MPICH_RELEASE_TYPE_PATCH*: cint = 3

type
  MPIR_Combiner_enum* = enum
    MPI_COMBINER_NAMED = 1, MPI_COMBINER_DUP = 2, MPI_COMBINER_CONTIGUOUS = 3,
    MPI_COMBINER_VECTOR = 4, MPI_COMBINER_HVECTOR_INTEGER = 5,
    MPI_COMBINER_HVECTOR = 6, MPI_COMBINER_INDEXED = 7,
    MPI_COMBINER_HINDEXED_INTEGER = 8, MPI_COMBINER_HINDEXED = 9,
    MPI_COMBINER_INDEXED_BLOCK = 10, MPI_COMBINER_STRUCT_INTEGER = 11,
    MPI_COMBINER_STRUCT = 12, MPI_COMBINER_SUBARRAY = 13, MPI_COMBINER_DARRAY = 14,
    MPI_COMBINER_F90_REAL = 15, MPI_COMBINER_F90_COMPLEX = 16,
    MPI_COMBINER_F90_INTEGER = 17, MPI_COMBINER_RESIZED = 18,
    MPI_COMBINER_HINDEXED_BLOCK = 19


type
  MPI_Info* = cint

const MPI_INFO_NULL*: MPI_INFO = (cast[MPI_Info](0x1C000000))

const MPI_INFO_ENV*: MPI_INFO = (cast[MPI_Info](0x5C000001))

const MPI_MAX_INFO_KEY*: cint = 255

const MPI_MAX_INFO_VAL*: cint = 1024

const MPI_ORDER_C*: cint = 56

const MPI_ORDER_FORTRAN*: cint = 57

const MPI_DISTRIBUTE_BLOCK*: cint = 121

const MPI_DISTRIBUTE_CYCLIC*: cint = 122

const MPI_DISTRIBUTE_NONE*: cint = 123

const MPI_DISTRIBUTE_DFLT_DARG*: cint = -49767

const MPI_IN_PLACE*: pointer = cast[pointer](-1)

const MPI_MODE_NOCHECK*: cint = 1024

const MPI_MODE_NOSTORE*: cint = 2048

const MPI_MODE_NOPUT*: cint = 4096

const MPI_MODE_NOPRECEDE*: cint = 8192

const MPI_MODE_NOSUCCEED*: cint = 16384

const MPI_COMM_TYPE_SHARED*: cint = 1

type
  MPI_Aint* = cint
  MPI_Fint* = cint
  MPI_Count* = culonglong

const MPI_AINT_FMT_DEC_SPEC*: cstring = "%d"

const MPI_AINT_FMT_HEX_SPEC*: cstring = "%x"

type
  MPI_Offset* = culonglong
  MPI_Status* {.bycopy, importC, header: hmpi.} = object
    count_lo*: cint
    count_hi_and_cancelled*: cint
    MPI_SOURCE*: cint
    MPI_TAG*: cint
    MPI_ERROR*: cint

  MPIR_T_enum_s* {.bycopy.} = object
  
  MPIR_T_cvar_handle_s* {.bycopy.} = object
  
  MPIR_T_pvar_handle_s* {.bycopy.} = object
  
  MPIR_T_pvar_session_s* {.bycopy.} = object
  
  MPI_T_enum* = ptr MPIR_T_enum_s
  MPI_T_cvar_handle* = ptr MPIR_T_cvar_handle_s
  MPI_T_pvar_handle* = ptr MPIR_T_pvar_handle_s
  MPI_T_pvar_session* = ptr MPIR_T_pvar_session_s

var MPI_T_PVAR_ALL_HANDLES*: ptr MPIR_T_pvar_handle_s

const MPI_T_ENUM_NULL*: MPI_T_enum = (cast[MPI_T_enum](nil))

const MPI_T_CVAR_HANDLE_NULL*: MPI_T_cvar_handle = (cast[MPI_T_cvar_handle](nil))

const MPI_T_PVAR_HANDLE_NULL*: MPI_T_pvar_handle = (cast[MPI_T_pvar_handle](nil))

const MPI_T_PVAR_SESSION_NULL*: MPI_T_pvar_session = (cast[MPI_T_pvar_session](nil))

type
  MPIR_T_verbosity_t* = enum
    MPIX_T_VERBOSITY_INVALID = 0, MPI_T_VERBOSITY_USER_BASIC = 221,
    MPI_T_VERBOSITY_USER_DETAIL, MPI_T_VERBOSITY_USER_ALL,
    MPI_T_VERBOSITY_TUNER_BASIC, MPI_T_VERBOSITY_TUNER_DETAIL,
    MPI_T_VERBOSITY_TUNER_ALL, MPI_T_VERBOSITY_MPIDEV_BASIC,
    MPI_T_VERBOSITY_MPIDEV_DETAIL, MPI_T_VERBOSITY_MPIDEV_ALL
  MPIR_T_bind_t* = enum
    MPIX_T_BIND_INVALID = 0, MPI_T_BIND_NO_OBJECT = 9700, MPI_T_BIND_MPI_COMM,
    MPI_T_BIND_MPI_DATATYPE, MPI_T_BIND_MPI_ERRHANDLER, MPI_T_BIND_MPI_FILE,
    MPI_T_BIND_MPI_GROUP, MPI_T_BIND_MPI_OP, MPI_T_BIND_MPI_REQUEST,
    MPI_T_BIND_MPI_WIN, MPI_T_BIND_MPI_MESSAGE, MPI_T_BIND_MPI_INFO
  MPIR_T_scope_t* = enum
    MPIX_T_SCOPE_INVALID = 0, MPI_T_SCOPE_CONSTANT = 60438, MPI_T_SCOPE_READONLY,
    MPI_T_SCOPE_LOCAL, MPI_T_SCOPE_GROUP, MPI_T_SCOPE_GROUP_EQ, MPI_T_SCOPE_ALL,
    MPI_T_SCOPE_ALL_EQ
  MPIR_T_pvar_class_t* {.importC, header: hmpi.} = enum
    MPIX_T_PVAR_CLASS_INVALID = 0, MPIR_T_PVAR_CLASS_FIRST = 240,
    MPI_T_PVAR_CLASS_LEVEL, MPI_T_PVAR_CLASS_SIZE, MPI_T_PVAR_CLASS_PERCENTAGE,
    MPI_T_PVAR_CLASS_HIGHWATERMARK, MPI_T_PVAR_CLASS_LOWWATERMARK,
    MPI_T_PVAR_CLASS_COUNTER, MPI_T_PVAR_CLASS_AGGREGATE, MPI_T_PVAR_CLASS_TIMER,
    MPI_T_PVAR_CLASS_GENERIC, MPIR_T_PVAR_CLASS_LAST,
    MPIR_T_PVAR_CLASS_NUMBER




const
  MPI_T_PVAR_CLASS_STATE* = MPIR_T_PVAR_CLASS_FIRST

template MPI_Comm_c2f*(comm: untyped): untyped =
  cast[MPI_Fint](comm)
template MPI_Comm_f2c*(comm: untyped): untyped =
  cast[MPI_Comm](comm)
template MPI_Type_c2f*(datatype: untyped): untyped =
  cast[MPI_Fint](datatype)
template MPI_Type_f2c*(datatype: untyped): untyped =
  cast[MPI_Datatype](datatype)
template MPI_Group_c2f*(group: untyped): untyped =
  cast[MPI_Fint](group)
template MPI_Group_f2c*(group: untyped): untyped =
  cast[MPI_Group](group)
template MPI_Info_c2f*(info: untyped): untyped =
  cast[MPI_Fint](info)
template MPI_Info_f2c*(info: untyped): untyped =
  cast[MPI_Info](info)
template MPI_Request_f2c*(request: untyped): untyped =
  cast[MPI_Request](request)
template MPI_Request_c2f*(request: untyped): untyped =
  cast[MPI_Fint](request)
template MPI_Op_c2f*(op: untyped): untyped =
  cast[MPI_Fint](op)
template MPI_Op_f2c*(op: untyped): untyped =
  cast[MPI_Op](op)
template MPI_Errhandler_c2f*(errhandler: untyped): untyped =
  cast[MPI_Fint](errhandler)
template MPI_Errhandler_f2c*(errhandler: untyped): untyped =
  cast[MPI_Errhandler](errhandler)
template MPI_Win_c2f*(win: untyped): untyped =
    cast[MPI_Fint](win)
template MPI_Win_f2c*(win: untyped): untyped =
    cast[MPI_Win](win)
template MPI_Message_c2f*(msg: untyped): untyped =
  cast[MPI_Fint](msg)
template MPI_Message_f2c*(msg: untyped): untyped =
  cast[MPI_Message](msg)
template PMPI_Comm_c2f*(comm: untyped): untyped =
  cast[MPI_Fint](comm)
template PMPI_Comm_f2c*(comm: untyped): untyped =
  cast[MPI_Comm](comm)
template PMPI_Type_c2f*(datatype: untyped): untyped =
  cast[MPI_Fint](datatype)
template PMPI_Type_f2c*(datatype: untyped): untyped =
  cast[MPI_Datatype](datatype)
template PMPI_Group_c2f*(group: untyped): untyped =
  cast[MPI_Fint](group)
template PMPI_Group_f2c*(group: untyped): untyped =
  cast[MPI_Group](group)
template PMPI_Info_c2f*(info: untyped): untyped =
  cast[MPI_Fint](info)
template PMPI_Info_f2c*(info: untyped): untyped =
  cast[MPI_Info](info)
template PMPI_Request_f2c*(request: untyped): untyped =
  cast[MPI_Request](request)
template PMPI_Request_c2f*(request: untyped): untyped =
  cast[MPI_Fint](request)
template PMPI_Op_c2f*(op: untyped): untyped =
  cast[MPI_Fint](op)
template PMPI_Op_f2c*(op: untyped): untyped =
  cast[MPI_Op](op)
template PMPI_Errhandler_c2f*(errhandler: untyped): untyped =
  cast[MPI_Fint](errhandler)
template PMPI_Errhandler_f2c*(errhandler: untyped): untyped =
  cast[MPI_Errhandler](errhandler)
template PMPI_Win_c2f*(win: untyped): untyped =
    cast[MPI_Fint](win)
template PMPI_Win_f2c*(win: untyped): untyped =
    cast[MPI_Win](win)
template PMPI_Message_c2f*(msg: untyped): untyped =
  cast[MPI_Fint](msg)
template PMPI_Message_f2c*(msg: untyped): untyped =
  cast[MPI_Message](msg)
const MPI_STATUS_IGNORE*: ptr MPI_Status = cast[ptr MPI_Status](1)

const MPI_STATUSES_IGNORE*: ptr MPI_Status = cast[ptr MPI_Status](1)

const MPI_ERRCODES_IGNORE*: ptr cint = cast[ptr cint](0)

var MPI_F_STATUS_IGNORE*: ptr MPI_Fint

var MPI_F_STATUSES_IGNORE*: ptr MPI_Fint

const MPI_ARGV_NULL*: cstringArray = cast[cstringArray](0)

const MPI_ARGVS_NULL*: ptr cstringArray = cast[ptr cstringArray](0)

type
  MPI_F08_Status* {.bycopy.} = object
    count_lo*: MPI_Fint
    count_hi_and_cancelled*: MPI_Fint
    MPI_SOURCE*: MPI_Fint
    MPI_TAG*: MPI_Fint
    MPI_ERROR*: MPI_Fint


var MPIR_F08_MPI_STATUS_IGNORE_OBJ*: MPI_F08_Status

var MPIR_F08_MPI_STATUSES_IGNORE_OBJ*: array[1, MPI_F08_Status]

var MPIR_F08_MPI_IN_PLACE*: cint

var MPIR_F08_MPI_BOTTOM*: cint

var MPI_F08_STATUS_IGNORE*: ptr MPI_F08_Status

var MPI_F08_STATUSES_IGNORE*: ptr MPI_F08_Status

const MPI_THREAD_SINGLE*: cint = 0

const MPI_THREAD_FUNNELED*: cint = 1

const MPI_THREAD_SERIALIZED*: cint = 2

const MPI_THREAD_MULTIPLE*: cint = 3

type
  MPI_Grequest_cancel_function* = proc (a2: pointer; a3: cint): cint
  MPI_Grequest_free_function* = proc (a2: pointer): cint
  MPI_Grequest_query_function* = proc (a2: pointer; a3: ptr MPI_Status): cint
  MPIX_Grequest_poll_function* = proc (a2: pointer; a3: ptr MPI_Status): cint
  MPIX_Grequest_wait_function* = proc (a2: cint; a3: ptr pointer; a4: cdouble;
                                    a5: ptr MPI_Status): cint

const MPI_SUCCESS*: cint = 0

const MPI_ERR_BUFFER*: cint = 1

const MPI_ERR_COUNT*: cint = 2

const MPI_ERR_TYPE*: cint = 3

const MPI_ERR_TAG*: cint = 4

const MPI_ERR_COMM*: cint = 5

const MPI_ERR_RANK*: cint = 6

const MPI_ERR_ROOT*: cint = 7

const MPI_ERR_TRUNCATE*: cint = 14

const MPI_ERR_GROUP*: cint = 8

const MPI_ERR_OP*: cint = 9

const MPI_ERR_REQUEST*: cint = 19

const MPI_ERR_TOPOLOGY*: cint = 10

const MPI_ERR_DIMS*: cint = 11

const MPI_ERR_ARG*: cint = 12

const MPI_ERR_OTHER*: cint = 15

const MPI_ERR_UNKNOWN*: cint = 13

const MPI_ERR_INTERN*: cint = 16

const MPI_ERR_IN_STATUS*: cint = 17

const MPI_ERR_PENDING*: cint = 18

const MPI_ERR_ACCESS*: cint = 20

const MPI_ERR_AMODE*: cint = 21

const MPI_ERR_BAD_FILE*: cint = 22

const MPI_ERR_CONVERSION*: cint = 23

const MPI_ERR_DUP_DATAREP*: cint = 24

const MPI_ERR_FILE_EXISTS*: cint = 25

const MPI_ERR_FILE_IN_USE*: cint = 26

const MPI_ERR_FILE*: cint = 27

const MPI_ERR_IO*: cint = 32

const MPI_ERR_NO_SPACE*: cint = 36

const MPI_ERR_NO_SUCH_FILE*: cint = 37

const MPI_ERR_READ_ONLY*: cint = 40

const MPI_ERR_UNSUPPORTED_DATAREP*: cint = 43

const MPI_ERR_INFO*: cint = 28

const MPI_ERR_INFO_KEY*: cint = 29

const MPI_ERR_INFO_VALUE*: cint = 30

const MPI_ERR_INFO_NOKEY*: cint = 31

const MPI_ERR_NAME*: cint = 33

const MPI_ERR_NO_MEM*: cint = 34

const MPI_ERR_NOT_SAME*: cint = 35

const MPI_ERR_PORT*: cint = 38

const MPI_ERR_QUOTA*: cint = 39

const MPI_ERR_SERVICE*: cint = 41

const MPI_ERR_SPAWN*: cint = 42

const MPI_ERR_UNSUPPORTED_OPERATION*: cint = 44

const MPI_ERR_WIN*: cint = 45

const MPI_ERR_BASE*: cint = 46

const MPI_ERR_LOCKTYPE*: cint = 47

const MPI_ERR_KEYVAL*: cint = 48

const MPI_ERR_RMA_CONFLICT*: cint = 49

const MPI_ERR_RMA_SYNC*: cint = 50

const MPI_ERR_SIZE*: cint = 51

const MPI_ERR_DISP*: cint = 52

const MPI_ERR_ASSERT*: cint = 53

const MPI_ERR_RMA_RANGE*: cint = 55

const MPI_ERR_RMA_ATTACH*: cint = 56

const MPI_ERR_RMA_SHARED*: cint = 57

const MPI_ERR_RMA_FLAVOR*: cint = 58

const MPI_T_ERR_MEMORY*: cint = 59

const MPI_T_ERR_NOT_INITIALIZED*: cint = 60

const MPI_T_ERR_CANNOT_INIT*: cint = 61

const MPI_T_ERR_INVALID_INDEX*: cint = 62

const MPI_T_ERR_INVALID_ITEM*: cint = 63

const MPI_T_ERR_INVALID_HANDLE*: cint = 64

const MPI_T_ERR_OUT_OF_HANDLES*: cint = 65

const MPI_T_ERR_OUT_OF_SESSIONS*: cint = 66

const MPI_T_ERR_INVALID_SESSION*: cint = 67

const MPI_T_ERR_CVAR_SET_NOT_NOW*: cint = 68

const MPI_T_ERR_CVAR_SET_NEVER*: cint = 69

const MPI_T_ERR_PVAR_NO_STARTSTOP*: cint = 70

const MPI_T_ERR_PVAR_NO_WRITE*: cint = 71

const MPI_T_ERR_PVAR_NO_ATOMIC*: cint = 72

const MPI_T_ERR_INVALID_NAME*: cint = 73

const MPI_T_ERR_INVALID*: cint = 74

const MPI_ERR_LASTCODE*: cint = 0x3FFFFFFF

const MPICH_ERR_LAST_CLASS*: cint = 74

const MPICH_ERR_FIRST_MPIX*: cint = 100

const MPIX_ERR_PROC_FAILED*: cint = MPICH_ERR_FIRST_MPIX + 1

const MPIX_ERR_PROC_FAILED_PENDING*: cint = MPICH_ERR_FIRST_MPIX + 2

const MPIX_ERR_REVOKED*: cint = MPICH_ERR_FIRST_MPIX + 3

const MPICH_ERR_LAST_MPIX*: cint = MPICH_ERR_FIRST_MPIX + 3

type
  MPI_Datarep_conversion_function* = proc (a2: ptr; a3: MPI_Datatype; a4: cint;
                                        a5: ptr; a6: MPI_Offset; a7: ptr): cint
  MPI_Datarep_extent_function* = proc (datatype: MPI_Datatype; a3: ptr MPI_Aint;
                                    a4: pointer): cint

const MPI_CONVERSION_FN_NULL*: ptr MPI_Datarep_conversion_function = nil

proc MPI_Send*(buf: pointer; count: cint; datatype: MPI_Datatype; dest: cint; tag: cint;
              comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Recv*(buf: pointer; count: cint; datatype: MPI_Datatype; source: cint;
              tag: cint; comm: MPI_Comm; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_Get_count*(status: ptr MPI_Status; datatype: MPI_Datatype; count: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Bsend*(buf: pointer; count: cint; datatype: MPI_Datatype; dest: cint; tag: cint;
               comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Ssend*(buf: pointer; count: cint; datatype: MPI_Datatype; dest: cint; tag: cint;
               comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Rsend*(buf: pointer; count: cint; datatype: MPI_Datatype; dest: cint; tag: cint;
               comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Buffer_attach*(buffer: pointer; size: cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Buffer_detach*(buffer_addr: pointer; size: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Isend*(buf: pointer; count: cint; datatype: MPI_Datatype; dest: cint; tag: cint;
               comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Ibsend*(buf: pointer; count: cint; datatype: MPI_Datatype; dest: cint;
                tag: cint; comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Issend*(buf: pointer; count: cint; datatype: MPI_Datatype; dest: cint;
                tag: cint; comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Irsend*(buf: pointer; count: cint; datatype: MPI_Datatype; dest: cint;
                tag: cint; comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Irecv*(buf: pointer; count: cint; datatype: MPI_Datatype; source: cint;
               tag: cint; comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Wait*(request: ptr MPI_Request; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_Test*(request: ptr MPI_Request; flag: ptr cint; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_Request_free*(request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Waitany*(count: cint; array_of_requests: ptr MPI_Request; indx: ptr cint;
                 status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_Testany*(count: cint; array_of_requests: ptr MPI_Request; indx: ptr cint;
                 flag: ptr cint; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_Waitall*(count: cint; array_of_requests: ptr MPI_Request;
                 array_of_statuses: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_Testall*(count: cint; array_of_requests: ptr MPI_Request; flag: ptr cint;
                 array_of_statuses: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_Waitsome*(incount: cint; array_of_requests: ptr MPI_Request;
                  outcount: ptr cint; array_of_indices: ptr cint;
                  array_of_statuses: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_Testsome*(incount: cint; array_of_requests: ptr MPI_Request;
                  outcount: ptr cint; array_of_indices: ptr cint;
                  array_of_statuses: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_Iprobe*(source: cint; tag: cint; comm: MPI_Comm; flag: ptr cint;
                status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_Probe*(source: cint; tag: cint; comm: MPI_Comm; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_Cancel*(request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Test_cancelled*(status: ptr MPI_Status; flag: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Send_init*(buf: pointer; count: cint; datatype: MPI_Datatype; dest: cint;
                   tag: cint; comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Bsend_init*(buf: pointer; count: cint; datatype: MPI_Datatype; dest: cint;
                    tag: cint; comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Ssend_init*(buf: pointer; count: cint; datatype: MPI_Datatype; dest: cint;
                    tag: cint; comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Rsend_init*(buf: pointer; count: cint; datatype: MPI_Datatype; dest: cint;
                    tag: cint; comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Recv_init*(buf: pointer; count: cint; datatype: MPI_Datatype; source: cint;
                   tag: cint; comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Start*(request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Startall*(count: cint; array_of_requests: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Sendrecv*(sendbuf: pointer; sendcount: cint; sendtype: MPI_Datatype;
                  dest: cint; sendtag: cint; recvbuf: pointer; recvcount: cint;
                  recvtype: MPI_Datatype; source: cint; recvtag: cint; comm: MPI_Comm;
                  status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_Sendrecv_replace*(buf: pointer; count: cint; datatype: MPI_Datatype;
                          dest: cint; sendtag: cint; source: cint; recvtag: cint;
                          comm: MPI_Comm; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_contiguous*(count: cint; oldtype: MPI_Datatype;
                         newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_vector*(count: cint; blocklength: cint; stride: cint;
                     oldtype: MPI_Datatype; newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_hvector*(count: cint; blocklength: cint; stride: MPI_Aint;
                      oldtype: MPI_Datatype; newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_indexed*(count: cint; array_of_blocklengths: ptr cint;
                      array_of_displacements: ptr cint; oldtype: MPI_Datatype;
                      newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_hindexed*(count: cint; array_of_blocklengths: ptr cint;
                       array_of_displacements: ptr MPI_Aint; oldtype: MPI_Datatype;
                       newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_struct*(count: cint; array_of_blocklengths: ptr cint;
                     array_of_displacements: ptr MPI_Aint;
                     array_of_types: ptr MPI_Datatype; newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_Address*(location: pointer; address: ptr MPI_Aint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_extent*(datatype: MPI_Datatype; extent: ptr MPI_Aint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_size*(datatype: MPI_Datatype; size: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_lb*(datatype: MPI_Datatype; displacement: ptr MPI_Aint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_ub*(datatype: MPI_Datatype; displacement: ptr MPI_Aint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_commit*(datatype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_free*(datatype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_Get_elements*(status: ptr MPI_Status; datatype: MPI_Datatype; count: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Pack*(inbuf: pointer; incount: cint; datatype: MPI_Datatype; outbuf: pointer;
              outsize: cint; position: ptr cint; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Unpack*(inbuf: pointer; insize: cint; position: ptr cint; outbuf: pointer;
                outcount: cint; datatype: MPI_Datatype; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Pack_size*(incount: cint; datatype: MPI_Datatype; comm: MPI_Comm;
                   size: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Barrier*(comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Bcast*(buffer: pointer; count: cint; datatype: MPI_Datatype; root: cint;
               comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Gather*(sendbuf: pointer; sendcount: cint; sendtype: MPI_Datatype;
                recvbuf: pointer; recvcount: cint; recvtype: MPI_Datatype; root: cint;
                comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Gatherv*(sendbuf: pointer; sendcount: cint; sendtype: MPI_Datatype;
                 recvbuf: pointer; recvcounts: ptr cint; displs: ptr cint;
                 recvtype: MPI_Datatype; root: cint; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Scatter*(sendbuf: pointer; sendcount: cint; sendtype: MPI_Datatype;
                 recvbuf: pointer; recvcount: cint; recvtype: MPI_Datatype;
                 root: cint; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Scatterv*(sendbuf: pointer; sendcounts: ptr cint; displs: ptr cint;
                  sendtype: MPI_Datatype; recvbuf: pointer; recvcount: cint;
                  recvtype: MPI_Datatype; root: cint; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Allgather*(sendbuf: pointer; sendcount: cint; sendtype: MPI_Datatype;
                   recvbuf: pointer; recvcount: cint; recvtype: MPI_Datatype;
                   comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Allgatherv*(sendbuf: pointer; sendcount: cint; sendtype: MPI_Datatype;
                    recvbuf: pointer; recvcounts: ptr cint; displs: ptr cint;
                    recvtype: MPI_Datatype; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Alltoall*(sendbuf: pointer; sendcount: cint; sendtype: MPI_Datatype;
                  recvbuf: pointer; recvcount: cint; recvtype: MPI_Datatype;
                  comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Alltoallv*(sendbuf: pointer; sendcounts: ptr cint; sdispls: ptr cint;
                   sendtype: MPI_Datatype; recvbuf: pointer; recvcounts: ptr cint;
                   rdispls: ptr cint; recvtype: MPI_Datatype; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Alltoallw*(sendbuf: pointer; sendcounts: ptr cint; sdispls: ptr cint;
                   sendtypes: ptr MPI_Datatype; recvbuf: pointer;
                   recvcounts: ptr cint; rdispls: ptr cint;
                   recvtypes: ptr MPI_Datatype; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Exscan*(sendbuf: pointer; recvbuf: pointer; count: cint;
                datatype: MPI_Datatype; op: MPI_Op; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Reduce*(sendbuf: pointer; recvbuf: pointer; count: cint;
                datatype: MPI_Datatype; op: MPI_Op; root: cint; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Op_create*(user_fn: ptr MPI_User_function; commute: cint; op: ptr MPI_Op): cint {.cdecl, importC, header: hmpi.}
proc MPI_Op_free*(op: ptr MPI_Op): cint {.cdecl, importC, header: hmpi.}
proc MPI_Allreduce*(sendbuf: pointer; recvbuf: pointer; count: cint;
                   datatype: MPI_Datatype; op: MPI_Op; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Reduce_scatter*(sendbuf: pointer; recvbuf: pointer; recvcounts: ptr cint;
                        datatype: MPI_Datatype; op: MPI_Op; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Scan*(sendbuf: pointer; recvbuf: pointer; count: cint; datatype: MPI_Datatype;
              op: MPI_Op; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Group_size*(group: MPI_Group; size: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Group_rank*(group: MPI_Group; rank: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Group_translate_ranks*(group1: MPI_Group; n: cint; ranks1: ptr cint;
                               group2: MPI_Group; ranks2: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Group_compare*(group1: MPI_Group; group2: MPI_Group; result: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_group*(comm: MPI_Comm; group: ptr MPI_Group): cint {.cdecl, importC, header: hmpi.}
proc MPI_Group_union*(group1: MPI_Group; group2: MPI_Group; newgroup: ptr MPI_Group): cint {.cdecl, importC, header: hmpi.}
proc MPI_Group_intersection*(group1: MPI_Group; group2: MPI_Group;
                            newgroup: ptr MPI_Group): cint {.cdecl, importC, header: hmpi.}
proc MPI_Group_difference*(group1: MPI_Group; group2: MPI_Group;
                          newgroup: ptr MPI_Group): cint {.cdecl, importC, header: hmpi.}
proc MPI_Group_incl*(group: MPI_Group; n: cint; ranks: ptr cint; newgroup: ptr MPI_Group): cint {.cdecl, importC, header: hmpi.}
proc MPI_Group_excl*(group: MPI_Group; n: cint; ranks: ptr cint; newgroup: ptr MPI_Group): cint {.cdecl, importC, header: hmpi.}
proc MPI_Group_range_incl*(group: MPI_Group; n: cint; ranges: ptr array[3, cint];
                          newgroup: ptr MPI_Group): cint {.cdecl, importC, header: hmpi.}
proc MPI_Group_range_excl*(group: MPI_Group; n: cint; ranges: ptr array[3, cint];
                          newgroup: ptr MPI_Group): cint {.cdecl, importC, header: hmpi.}
proc MPI_Group_free*(group: ptr MPI_Group): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_size*(comm: MPI_Comm; size: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_rank*(comm: MPI_Comm; rank: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_compare*(comm1: MPI_Comm; comm2: MPI_Comm; result: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_dup*(comm: MPI_Comm; newcomm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_dup_with_info*(comm: MPI_Comm; info: MPI_Info; newcomm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_create*(comm: MPI_Comm; group: MPI_Group; newcomm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_split*(comm: MPI_Comm; color: cint; key: cint; newcomm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_free*(comm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_test_inter*(comm: MPI_Comm; flag: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_remote_size*(comm: MPI_Comm; size: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_remote_group*(comm: MPI_Comm; group: ptr MPI_Group): cint {.cdecl, importC, header: hmpi.}
proc MPI_Intercomm_create*(local_comm: MPI_Comm; local_leader: cint;
                          peer_comm: MPI_Comm; remote_leader: cint; tag: cint;
                          newintercomm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Intercomm_merge*(intercomm: MPI_Comm; high: cint; newintracomm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Keyval_create*(copy_fn: ptr MPI_Copy_function;
                       delete_fn: ptr MPI_Delete_function; keyval: ptr cint;
                       extra_state: pointer): cint {.cdecl, importC, header: hmpi.}
proc MPI_Keyval_free*(keyval: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Attr_put*(comm: MPI_Comm; keyval: cint; attribute_val: pointer): cint {.cdecl, importC, header: hmpi.}
proc MPI_Attr_get*(comm: MPI_Comm; keyval: cint; attribute_val: pointer; flag: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Attr_delete*(comm: MPI_Comm; keyval: cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Topo_test*(comm: MPI_Comm; status: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Cart_create*(comm_old: MPI_Comm; ndims: cint; dims: ptr cint;
                     periods: ptr cint; reorder: cint; comm_cart: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Dims_create*(nnodes: cint; ndims: cint; dims: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Graph_create*(comm_old: MPI_Comm; nnodes: cint; indx: ptr cint;
                      edges: ptr cint; reorder: cint; comm_graph: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Graphdims_get*(comm: MPI_Comm; nnodes: ptr cint; nedges: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Graph_get*(comm: MPI_Comm; maxindex: cint; maxedges: cint; indx: ptr cint;
                   edges: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Cartdim_get*(comm: MPI_Comm; ndims: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Cart_get*(comm: MPI_Comm; maxdims: cint; dims: ptr cint; periods: ptr cint;
                  coords: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Cart_rank*(comm: MPI_Comm; coords: ptr cint; rank: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Cart_coords*(comm: MPI_Comm; rank: cint; maxdims: cint; coords: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Graph_neighbors_count*(comm: MPI_Comm; rank: cint; nneighbors: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Graph_neighbors*(comm: MPI_Comm; rank: cint; maxneighbors: cint;
                         neighbors: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Cart_shift*(comm: MPI_Comm; direction: cint; disp: cint;
                    rank_source: ptr cint; rank_dest: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Cart_sub*(comm: MPI_Comm; remain_dims: ptr cint; newcomm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Cart_map*(comm: MPI_Comm; ndims: cint; dims: ptr cint; periods: ptr cint;
                  newrank: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Graph_map*(comm: MPI_Comm; nnodes: cint; indx: ptr cint; edges: ptr cint;
                   newrank: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Get_processor_name*(name: cstring; resultlen: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Get_version*(version: ptr cint; subversion: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Get_library_version*(version: cstring; resultlen: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Errhandler_create*(function: ptr MPI_Handler_function;
                           errhandler: ptr MPI_Errhandler): cint {.cdecl, importC, header: hmpi.}
proc MPI_Errhandler_set*(comm: MPI_Comm; errhandler: MPI_Errhandler): cint {.cdecl, importC, header: hmpi.}
proc MPI_Errhandler_get*(comm: MPI_Comm; errhandler: ptr MPI_Errhandler): cint {.cdecl, importC, header: hmpi.}
proc MPI_Errhandler_free*(errhandler: ptr MPI_Errhandler): cint {.cdecl, importC, header: hmpi.}
proc MPI_Error_string*(errorcode: cint; string: cstring; resultlen: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Error_class*(errorcode: cint; errorclass: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Wtime*(): cdouble {.cdecl, importC, header: hmpi.}
proc MPI_Wtick*(): cdouble {.cdecl, importC, header: hmpi.}
proc MPI_Init*(argc: ptr cint; argv: ptr cstringArray): cint {.cdecl, importC, header: hmpi.}
proc MPI_Finalize*(): cint {.cdecl, importC, header: hmpi.}
proc MPI_Initialized*(flag: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Abort*(comm: MPI_Comm; errorcode: cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Pcontrol*(level: cint): cint {.varargs, cdecl, importC, header: hmpi.}
proc MPIR_Dup_fn*(oldcomm: MPI_Comm; keyval: cint; extra_state: pointer;
                 attribute_val_in: pointer; attribute_val_out: pointer;
                 flag: ptr cint): cint {.importC, header: hmpi.}
template MPI_COMM_DUP_FN*: ptr MPI_Comm_copy_attr_function = MPIR_Dup_fn
template MPI_WIN_DUP_FN*: ptr MPI_Win_copy_attr_function = MPIR_Dup_fn
template MPI_TYPE_DUP_FN*: ptr MPI_Type_copy_attr_function = MPIR_Dup_fn
 {.cdecl, importC, header: hmpi.}
proc MPI_Close_port*(port_name: cstring): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_accept*(port_name: cstring; info: MPI_Info; root: cint; comm: MPI_Comm;
                     newcomm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_connect*(port_name: cstring; info: MPI_Info; root: cint; comm: MPI_Comm;
                      newcomm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_disconnect*(comm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_get_parent*(parent: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_join*(fd: cint; intercomm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_spawn*(command: cstring; argv: ptr cstring; maxprocs: cint;
                    info: MPI_Info; root: cint; comm: MPI_Comm;
                    intercomm: ptr MPI_Comm; array_of_errcodes: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_spawn_multiple*(count: cint; array_of_commands: ptr cstring;
                             array_of_argv: ptr cstringArray;
                             array_of_maxprocs: ptr cint;
                             array_of_info: ptr MPI_Info; root: cint; comm: MPI_Comm;
                             intercomm: ptr MPI_Comm; array_of_errcodes: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Lookup_name*(service_name: cstring; info: MPI_Info; port_name: cstring): cint {.cdecl, importC, header: hmpi.}
proc MPI_Open_port*(info: MPI_Info; port_name: cstring): cint {.cdecl, importC, header: hmpi.}
proc MPI_Publish_name*(service_name: cstring; info: MPI_Info; port_name: cstring): cint {.cdecl, importC, header: hmpi.}
proc MPI_Unpublish_name*(service_name: cstring; info: MPI_Info; port_name: cstring): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_set_info*(comm: MPI_Comm; info: MPI_Info): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_get_info*(comm: MPI_Comm; info: ptr MPI_Info): cint {.cdecl, importC, header: hmpi.}
proc MPI_Accumulate*(origin_addr: pointer; origin_count: cint;
                    origin_datatype: MPI_Datatype; target_rank: cint;
                    target_disp: MPI_Aint; target_count: cint;
                    target_datatype: MPI_Datatype; op: MPI_Op; win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc MPI_Get*(origin_addr: pointer; origin_count: cint;
             origin_datatype: MPI_Datatype; target_rank: cint;
             target_disp: MPI_Aint; target_count: cint;
             target_datatype: MPI_Datatype; win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc MPI_Put*(origin_addr: pointer; origin_count: cint;
             origin_datatype: MPI_Datatype; target_rank: cint;
             target_disp: MPI_Aint; target_count: cint;
             target_datatype: MPI_Datatype; win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_complete*(win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_create*(base: pointer; size: MPI_Aint; disp_unit: cint; info: MPI_Info;
                    comm: MPI_Comm; win: ptr MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_fence*(assert: cint; win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_free*(win: ptr MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_get_group*(win: MPI_Win; group: ptr MPI_Group): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_lock*(lock_type: cint; rank: cint; assert: cint; win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_post*(group: MPI_Group; assert: cint; win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_start*(group: MPI_Group; assert: cint; win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_test*(win: MPI_Win; flag: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_unlock*(rank: cint; win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_wait*(win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_allocate*(size: MPI_Aint; disp_unit: cint; info: MPI_Info; comm: MPI_Comm;
                      baseptr: pointer; win: ptr MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_allocate_shared*(size: MPI_Aint; disp_unit: cint; info: MPI_Info;
                             comm: MPI_Comm; baseptr: pointer; win: ptr MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_shared_query*(win: MPI_Win; rank: cint; size: ptr MPI_Aint;
                          disp_unit: ptr cint; baseptr: pointer): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_create_dynamic*(info: MPI_Info; comm: MPI_Comm; win: ptr MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_attach*(win: MPI_Win; base: pointer; size: MPI_Aint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_detach*(win: MPI_Win; base: pointer): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_get_info*(win: MPI_Win; info_used: ptr MPI_Info): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_set_info*(win: MPI_Win; info: MPI_Info): cint {.cdecl, importC, header: hmpi.}
proc MPI_Get_accumulate*(origin_addr: pointer; origin_count: cint;
                        origin_datatype: MPI_Datatype; result_addr: pointer;
                        result_count: cint; result_datatype: MPI_Datatype;
                        target_rank: cint; target_disp: MPI_Aint;
                        target_count: cint; target_datatype: MPI_Datatype;
                        op: MPI_Op; win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc MPI_Fetch_and_op*(origin_addr: pointer; result_addr: pointer;
                      datatype: MPI_Datatype; target_rank: cint;
                      target_disp: MPI_Aint; op: MPI_Op; win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc MPI_Compare_and_swap*(origin_addr: pointer; compare_addr: pointer;
                          result_addr: pointer; datatype: MPI_Datatype;
                          target_rank: cint; target_disp: MPI_Aint; win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc MPI_Rput*(origin_addr: pointer; origin_count: cint;
              origin_datatype: MPI_Datatype; target_rank: cint;
              target_disp: MPI_Aint; target_count: cint;
              target_datatype: MPI_Datatype; win: MPI_Win; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Rget*(origin_addr: pointer; origin_count: cint;
              origin_datatype: MPI_Datatype; target_rank: cint;
              target_disp: MPI_Aint; target_count: cint;
              target_datatype: MPI_Datatype; win: MPI_Win; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Raccumulate*(origin_addr: pointer; origin_count: cint;
                     origin_datatype: MPI_Datatype; target_rank: cint;
                     target_disp: MPI_Aint; target_count: cint;
                     target_datatype: MPI_Datatype; op: MPI_Op; win: MPI_Win;
                     request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Rget_accumulate*(origin_addr: pointer; origin_count: cint;
                         origin_datatype: MPI_Datatype; result_addr: pointer;
                         result_count: cint; result_datatype: MPI_Datatype;
                         target_rank: cint; target_disp: MPI_Aint;
                         target_count: cint; target_datatype: MPI_Datatype;
                         op: MPI_Op; win: MPI_Win; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_lock_all*(assert: cint; win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_unlock_all*(win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_flush*(rank: cint; win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_flush_all*(win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_flush_local*(rank: cint; win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_flush_local_all*(win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_sync*(win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc MPI_Add_error_class*(errorclass: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Add_error_code*(errorclass: cint; errorcode: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Add_error_string*(errorcode: cint; string: cstring): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_call_errhandler*(comm: MPI_Comm; errorcode: cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_create_keyval*(comm_copy_attr_fn: ptr MPI_Comm_copy_attr_function;
    comm_delete_attr_fn: ptr MPI_Comm_delete_attr_function; comm_keyval: ptr cint;
                            extra_state: pointer): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_delete_attr*(comm: MPI_Comm; comm_keyval: cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_free_keyval*(comm_keyval: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_get_attr*(comm: MPI_Comm; comm_keyval: cint; attribute_val: pointer;
                       flag: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_get_name*(comm: MPI_Comm; comm_name: cstring; resultlen: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_set_attr*(comm: MPI_Comm; comm_keyval: cint; attribute_val: pointer): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_set_name*(comm: MPI_Comm; comm_name: cstring): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_call_errhandler*(fh: MPI_File; errorcode: cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Grequest_complete*(request: MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Grequest_start*(query_fn: ptr MPI_Grequest_query_function;
                        free_fn: ptr MPI_Grequest_free_function;
                        cancel_fn: ptr MPI_Grequest_cancel_function;
                        extra_state: pointer; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Init_thread*(argc: ptr cint; argv: ptr cstringArray; required: cint;
                     provided: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Is_thread_main*(flag: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Query_thread*(provided: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Status_set_cancelled*(status: ptr MPI_Status; flag: cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Status_set_elements*(status: ptr MPI_Status; datatype: MPI_Datatype;
                             count: cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_create_keyval*(type_copy_attr_fn: ptr MPI_Type_copy_attr_function;
    type_delete_attr_fn: ptr MPI_Type_delete_attr_function; type_keyval: ptr cint;
                            extra_state: pointer): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_delete_attr*(datatype: MPI_Datatype; type_keyval: cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_dup*(oldtype: MPI_Datatype; newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_free_keyval*(type_keyval: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_get_attr*(datatype: MPI_Datatype; type_keyval: cint;
                       attribute_val: pointer; flag: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_get_contents*(datatype: MPI_Datatype; max_integers: cint;
                           max_addresses: cint; max_datatypes: cint;
                           array_of_integers: ptr cint;
                           array_of_addresses: ptr MPI_Aint;
                           array_of_datatypes: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_get_envelope*(datatype: MPI_Datatype; num_integers: ptr cint;
                           num_addresses: ptr cint; num_datatypes: ptr cint;
                           combiner: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_get_name*(datatype: MPI_Datatype; type_name: cstring;
                       resultlen: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_set_attr*(datatype: MPI_Datatype; type_keyval: cint;
                       attribute_val: pointer): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_set_name*(datatype: MPI_Datatype; type_name: cstring): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_match_size*(typeclass: cint; size: cint; datatype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_call_errhandler*(win: MPI_Win; errorcode: cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_create_keyval*(win_copy_attr_fn: ptr MPI_Win_copy_attr_function;
    win_delete_attr_fn: ptr MPI_Win_delete_attr_function; win_keyval: ptr cint;
                           extra_state: pointer): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_delete_attr*(win: MPI_Win; win_keyval: cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_free_keyval*(win_keyval: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_get_attr*(win: MPI_Win; win_keyval: cint; attribute_val: pointer;
                      flag: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_get_name*(win: MPI_Win; win_name: cstring; resultlen: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_set_attr*(win: MPI_Win; win_keyval: cint; attribute_val: pointer): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_set_name*(win: MPI_Win; win_name: cstring): cint {.cdecl, importC, header: hmpi.}
proc MPI_Alloc_mem*(size: MPI_Aint; info: MPI_Info; baseptr: pointer): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_create_errhandler*(comm_errhandler_fn: ptr MPI_Comm_errhandler_function;
                                errhandler: ptr MPI_Errhandler): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_get_errhandler*(comm: MPI_Comm; errhandler: ptr MPI_Errhandler): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_set_errhandler*(comm: MPI_Comm; errhandler: MPI_Errhandler): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_create_errhandler*(file_errhandler_fn: ptr MPI_File_errhandler_function;
                                errhandler: ptr MPI_Errhandler): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_get_errhandler*(file: MPI_File; errhandler: ptr MPI_Errhandler): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_set_errhandler*(file: MPI_File; errhandler: MPI_Errhandler): cint {.cdecl, importC, header: hmpi.}
proc MPI_Finalized*(flag: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Free_mem*(base: pointer): cint {.cdecl, importC, header: hmpi.}
proc MPI_Get_address*(location: pointer; address: ptr MPI_Aint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Info_create*(info: ptr MPI_Info): cint {.cdecl, importC, header: hmpi.}
proc MPI_Info_delete*(info: MPI_Info; key: cstring): cint {.cdecl, importC, header: hmpi.}
proc MPI_Info_dup*(info: MPI_Info; newinfo: ptr MPI_Info): cint {.cdecl, importC, header: hmpi.}
proc MPI_Info_free*(info: ptr MPI_Info): cint {.cdecl, importC, header: hmpi.}
proc MPI_Info_get*(info: MPI_Info; key: cstring; valuelen: cint; value: cstring;
                  flag: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Info_get_nkeys*(info: MPI_Info; nkeys: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Info_get_nthkey*(info: MPI_Info; n: cint; key: cstring): cint {.cdecl, importC, header: hmpi.}
proc MPI_Info_get_valuelen*(info: MPI_Info; key: cstring; valuelen: ptr cint;
                           flag: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Info_set*(info: MPI_Info; key: cstring; value: cstring): cint {.cdecl, importC, header: hmpi.}
proc MPI_Pack_external*(datarep: ptr char; inbuf: pointer; incount: cint;
                       datatype: MPI_Datatype; outbuf: pointer; outsize: MPI_Aint;
                       position: ptr MPI_Aint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Pack_external_size*(datarep: ptr char; incount: cint; datatype: MPI_Datatype;
                            size: ptr MPI_Aint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Request_get_status*(request: MPI_Request; flag: ptr cint;
                            status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_Status_c2f*(c_status: ptr MPI_Status; f_status: ptr MPI_Fint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Status_f2c*(f_status: ptr MPI_Fint; c_status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_create_darray*(size: cint; rank: cint; ndims: cint;
                            array_of_gsizes: ptr cint; array_of_distribs: ptr cint;
                            array_of_dargs: ptr cint; array_of_psizes: ptr cint;
                            order: cint; oldtype: MPI_Datatype;
                            newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_create_hindexed*(count: cint; array_of_blocklengths: ptr cint;
                              array_of_displacements: ptr MPI_Aint;
                              oldtype: MPI_Datatype; newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_create_hvector*(count: cint; blocklength: cint; stride: MPI_Aint;
                             oldtype: MPI_Datatype; newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_create_indexed_block*(count: cint; blocklength: cint;
                                   array_of_displacements: ptr cint;
                                   oldtype: MPI_Datatype;
                                   newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_create_hindexed_block*(count: cint; blocklength: cint;
                                    array_of_displacements: ptr MPI_Aint;
                                    oldtype: MPI_Datatype;
                                    newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_create_resized*(oldtype: MPI_Datatype; lb: MPI_Aint; extent: MPI_Aint;
                             newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_create_struct*(count: cint; array_of_blocklengths: ptr cint;
                            array_of_displacements: ptr MPI_Aint;
                            array_of_types: ptr MPI_Datatype;
                            newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_create_subarray*(ndims: cint; array_of_sizes: ptr cint;
                              array_of_subsizes: ptr cint;
                              array_of_starts: ptr cint; order: cint;
                              oldtype: MPI_Datatype; newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_get_extent*(datatype: MPI_Datatype; lb: ptr MPI_Aint;
                         extent: ptr MPI_Aint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_get_true_extent*(datatype: MPI_Datatype; true_lb: ptr MPI_Aint;
                              true_extent: ptr MPI_Aint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Unpack_external*(datarep: ptr char; inbuf: pointer; insize: MPI_Aint;
                         position: ptr MPI_Aint; outbuf: pointer; outcount: cint;
                         datatype: MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_create_errhandler*(win_errhandler_fn: ptr MPI_Win_errhandler_function;
                               errhandler: ptr MPI_Errhandler): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_get_errhandler*(win: MPI_Win; errhandler: ptr MPI_Errhandler): cint {.cdecl, importC, header: hmpi.}
proc MPI_Win_set_errhandler*(win: MPI_Win; errhandler: MPI_Errhandler): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_create_f90_integer*(range: cint; newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_create_f90_real*(precision: cint; range: cint;
                              newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_create_f90_complex*(precision: cint; range: cint;
                                 newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_Reduce_local*(inbuf: pointer; inoutbuf: pointer; count: cint;
                      datatype: MPI_Datatype; op: MPI_Op): cint {.cdecl, importC, header: hmpi.}
proc MPI_Op_commutative*(op: MPI_Op; commute: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Reduce_scatter_block*(sendbuf: pointer; recvbuf: pointer; recvcount: cint;
                              datatype: MPI_Datatype; op: MPI_Op; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Dist_graph_create_adjacent*(comm_old: MPI_Comm; indegree: cint;
                                    sources: ptr cint; sourceweights: ptr cint;
                                    outdegree: cint; destinations: ptr cint;
                                    destweights: ptr cint; info: MPI_Info;
                                    reorder: cint; comm_dist_graph: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Dist_graph_create*(comm_old: MPI_Comm; n: cint; sources: ptr cint;
                           degrees: ptr cint; destinations: ptr cint;
                           weights: ptr cint; info: MPI_Info; reorder: cint;
                           comm_dist_graph: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Dist_graph_neighbors_count*(comm: MPI_Comm; indegree: ptr cint;
                                    outdegree: ptr cint; weighted: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Dist_graph_neighbors*(comm: MPI_Comm; maxindegree: cint; sources: ptr cint;
                              sourceweights: ptr cint; maxoutdegree: cint;
                              destinations: ptr cint; destweights: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Improbe*(source: cint; tag: cint; comm: MPI_Comm; flag: ptr cint;
                 message: ptr MPI_Message; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_Imrecv*(buf: pointer; count: cint; datatype: MPI_Datatype;
                message: ptr MPI_Message; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Mprobe*(source: cint; tag: cint; comm: MPI_Comm; message: ptr MPI_Message;
                status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_Mrecv*(buf: pointer; count: cint; datatype: MPI_Datatype;
               message: ptr MPI_Message; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_idup*(comm: MPI_Comm; newcomm: ptr MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Ibarrier*(comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Ibcast*(buffer: pointer; count: cint; datatype: MPI_Datatype; root: cint;
                comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Igather*(sendbuf: pointer; sendcount: cint; sendtype: MPI_Datatype;
                 recvbuf: pointer; recvcount: cint; recvtype: MPI_Datatype;
                 root: cint; comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Igatherv*(sendbuf: pointer; sendcount: cint; sendtype: MPI_Datatype;
                  recvbuf: pointer; recvcounts: ptr cint; displs: ptr cint;
                  recvtype: MPI_Datatype; root: cint; comm: MPI_Comm;
                  request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Iscatter*(sendbuf: pointer; sendcount: cint; sendtype: MPI_Datatype;
                  recvbuf: pointer; recvcount: cint; recvtype: MPI_Datatype;
                  root: cint; comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Iscatterv*(sendbuf: pointer; sendcounts: ptr cint; displs: ptr cint;
                   sendtype: MPI_Datatype; recvbuf: pointer; recvcount: cint;
                   recvtype: MPI_Datatype; root: cint; comm: MPI_Comm;
                   request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Iallgather*(sendbuf: pointer; sendcount: cint; sendtype: MPI_Datatype;
                    recvbuf: pointer; recvcount: cint; recvtype: MPI_Datatype;
                    comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Iallgatherv*(sendbuf: pointer; sendcount: cint; sendtype: MPI_Datatype;
                     recvbuf: pointer; recvcounts: ptr cint; displs: ptr cint;
                     recvtype: MPI_Datatype; comm: MPI_Comm;
                     request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Ialltoall*(sendbuf: pointer; sendcount: cint; sendtype: MPI_Datatype;
                   recvbuf: pointer; recvcount: cint; recvtype: MPI_Datatype;
                   comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Ialltoallv*(sendbuf: pointer; sendcounts: ptr cint; sdispls: ptr cint;
                    sendtype: MPI_Datatype; recvbuf: pointer; recvcounts: ptr cint;
                    rdispls: ptr cint; recvtype: MPI_Datatype; comm: MPI_Comm;
                    request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Ialltoallw*(sendbuf: pointer; sendcounts: ptr cint; sdispls: ptr cint;
                    sendtypes: ptr MPI_Datatype; recvbuf: pointer;
                    recvcounts: ptr cint; rdispls: ptr cint;
                    recvtypes: ptr MPI_Datatype; comm: MPI_Comm;
                    request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Ireduce*(sendbuf: pointer; recvbuf: pointer; count: cint;
                 datatype: MPI_Datatype; op: MPI_Op; root: cint; comm: MPI_Comm;
                 request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Iallreduce*(sendbuf: pointer; recvbuf: pointer; count: cint;
                    datatype: MPI_Datatype; op: MPI_Op; comm: MPI_Comm;
                    request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Ireduce_scatter*(sendbuf: pointer; recvbuf: pointer; recvcounts: ptr cint;
                         datatype: MPI_Datatype; op: MPI_Op; comm: MPI_Comm;
                         request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Ireduce_scatter_block*(sendbuf: pointer; recvbuf: pointer; recvcount: cint;
                               datatype: MPI_Datatype; op: MPI_Op; comm: MPI_Comm;
                               request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Iscan*(sendbuf: pointer; recvbuf: pointer; count: cint;
               datatype: MPI_Datatype; op: MPI_Op; comm: MPI_Comm;
               request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Iexscan*(sendbuf: pointer; recvbuf: pointer; count: cint;
                 datatype: MPI_Datatype; op: MPI_Op; comm: MPI_Comm;
                 request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Ineighbor_allgather*(sendbuf: pointer; sendcount: cint;
                             sendtype: MPI_Datatype; recvbuf: pointer;
                             recvcount: cint; recvtype: MPI_Datatype;
                             comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Ineighbor_allgatherv*(sendbuf: pointer; sendcount: cint;
                              sendtype: MPI_Datatype; recvbuf: pointer;
                              recvcounts: ptr cint; displs: ptr cint;
                              recvtype: MPI_Datatype; comm: MPI_Comm;
                              request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Ineighbor_alltoall*(sendbuf: pointer; sendcount: cint;
                            sendtype: MPI_Datatype; recvbuf: pointer;
                            recvcount: cint; recvtype: MPI_Datatype; comm: MPI_Comm;
                            request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Ineighbor_alltoallv*(sendbuf: pointer; sendcounts: ptr cint;
                             sdispls: ptr cint; sendtype: MPI_Datatype;
                             recvbuf: pointer; recvcounts: ptr cint;
                             rdispls: ptr cint; recvtype: MPI_Datatype;
                             comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Ineighbor_alltoallw*(sendbuf: pointer; sendcounts: ptr cint;
                             sdispls: ptr MPI_Aint; sendtypes: ptr MPI_Datatype;
                             recvbuf: pointer; recvcounts: ptr cint;
                             rdispls: ptr MPI_Aint; recvtypes: ptr MPI_Datatype;
                             comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_Neighbor_allgather*(sendbuf: pointer; sendcount: cint;
                            sendtype: MPI_Datatype; recvbuf: pointer;
                            recvcount: cint; recvtype: MPI_Datatype; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Neighbor_allgatherv*(sendbuf: pointer; sendcount: cint;
                             sendtype: MPI_Datatype; recvbuf: pointer;
                             recvcounts: ptr cint; displs: ptr cint;
                             recvtype: MPI_Datatype; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Neighbor_alltoall*(sendbuf: pointer; sendcount: cint;
                           sendtype: MPI_Datatype; recvbuf: pointer;
                           recvcount: cint; recvtype: MPI_Datatype; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Neighbor_alltoallv*(sendbuf: pointer; sendcounts: ptr cint;
                            sdispls: ptr cint; sendtype: MPI_Datatype;
                            recvbuf: pointer; recvcounts: ptr cint;
                            rdispls: ptr cint; recvtype: MPI_Datatype; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Neighbor_alltoallw*(sendbuf: pointer; sendcounts: ptr cint;
                            sdispls: ptr MPI_Aint; sendtypes: ptr MPI_Datatype;
                            recvbuf: pointer; recvcounts: ptr cint;
                            rdispls: ptr MPI_Aint; recvtypes: ptr MPI_Datatype;
                            comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_split_type*(comm: MPI_Comm; split_type: cint; key: cint; info: MPI_Info;
                         newcomm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Get_elements_x*(status: ptr MPI_Status; datatype: MPI_Datatype;
                        count: ptr MPI_Count): cint {.cdecl, importC, header: hmpi.}
proc MPI_Status_set_elements_x*(status: ptr MPI_Status; datatype: MPI_Datatype;
                               count: MPI_Count): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_get_extent_x*(datatype: MPI_Datatype; lb: ptr MPI_Count;
                           extent: ptr MPI_Count): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_get_true_extent_x*(datatype: MPI_Datatype; lb: ptr MPI_Count;
                                extent: ptr MPI_Count): cint {.cdecl, importC, header: hmpi.}
proc MPI_Type_size_x*(datatype: MPI_Datatype; size: ptr MPI_Count): cint {.cdecl, importC, header: hmpi.}
proc MPI_Comm_create_group*(comm: MPI_Comm; group: MPI_Group; tag: cint;
                           newcomm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPI_Aint_add*(base: MPI_Aint; disp: MPI_Aint): MPI_Aint {.cdecl, importC, header: hmpi.}
proc MPI_Aint_diff*(addr1: MPI_Aint; addr2: MPI_Aint): MPI_Aint {.cdecl, importC, header: hmpi.}
proc MPI_T_init_thread*(required: cint; provided: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_finalize*(): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_enum_get_info*(enumtype: MPI_T_enum; num: ptr cint; name: cstring;
                         name_len: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_enum_get_item*(enumtype: MPI_T_enum; indx: cint; value: ptr cint;
                         name: cstring; name_len: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_cvar_get_num*(num_cvar: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_cvar_get_info*(cvar_index: cint; name: cstring; name_len: ptr cint;
                         verbosity: ptr cint; datatype: ptr MPI_Datatype;
                         enumtype: ptr MPI_T_enum; desc: cstring; desc_len: ptr cint;
                         binding: ptr cint; scope: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_cvar_handle_alloc*(cvar_index: cint; obj_handle: pointer;
                             handle: ptr MPI_T_cvar_handle; count: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_cvar_handle_free*(handle: ptr MPI_T_cvar_handle): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_cvar_read*(handle: MPI_T_cvar_handle; buf: pointer): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_cvar_write*(handle: MPI_T_cvar_handle; buf: pointer): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_pvar_get_num*(num_pvar: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_pvar_get_info*(pvar_index: cint; name: cstring; name_len: ptr cint;
                         verbosity: ptr cint; var_class: ptr cint;
                         datatype: ptr MPI_Datatype; enumtype: ptr MPI_T_enum;
                         desc: cstring; desc_len: ptr cint; binding: ptr cint;
                         readonly: ptr cint; continuous: ptr cint; `atomic`: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_pvar_session_create*(session: ptr MPI_T_pvar_session): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_pvar_session_free*(session: ptr MPI_T_pvar_session): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_pvar_handle_alloc*(session: MPI_T_pvar_session; pvar_index: cint;
                             obj_handle: pointer; handle: ptr MPI_T_pvar_handle;
                             count: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_pvar_handle_free*(session: MPI_T_pvar_session;
                            handle: ptr MPI_T_pvar_handle): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_pvar_start*(session: MPI_T_pvar_session; handle: MPI_T_pvar_handle): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_pvar_stop*(session: MPI_T_pvar_session; handle: MPI_T_pvar_handle): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_pvar_read*(session: MPI_T_pvar_session; handle: MPI_T_pvar_handle;
                     buf: pointer): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_pvar_write*(session: MPI_T_pvar_session; handle: MPI_T_pvar_handle;
                      buf: pointer): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_pvar_reset*(session: MPI_T_pvar_session; handle: MPI_T_pvar_handle): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_pvar_readreset*(session: MPI_T_pvar_session; handle: MPI_T_pvar_handle;
                          buf: pointer): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_category_get_num*(num_cat: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_category_get_info*(cat_index: cint; name: cstring; name_len: ptr cint;
                             desc: cstring; desc_len: ptr cint; num_cvars: ptr cint;
                             num_pvars: ptr cint; num_categories: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_category_get_cvars*(cat_index: cint; len: cint; indices: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_category_get_pvars*(cat_index: cint; len: cint; indices: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_category_get_categories*(cat_index: cint; len: cint; indices: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_category_changed*(stamp: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_cvar_get_index*(name: cstring; cvar_index: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_pvar_get_index*(name: cstring; var_class: cint; pvar_index: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_T_category_get_index*(name: cstring; cat_index: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPIX_Comm_failure_ack*(comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPIX_Comm_failure_get_acked*(comm: MPI_Comm; failedgrp: ptr MPI_Group): cint {.cdecl, importC, header: hmpi.}
proc MPIX_Comm_revoke*(comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPIX_Comm_shrink*(comm: MPI_Comm; newcomm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc MPIX_Comm_agree*(comm: MPI_Comm; flag: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Send*(buf: pointer; count: cint; datatype: MPI_Datatype; dest: cint; tag: cint;
               comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Recv*(buf: pointer; count: cint; datatype: MPI_Datatype; source: cint;
               tag: cint; comm: MPI_Comm; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Get_count*(status: ptr MPI_Status; datatype: MPI_Datatype; count: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Bsend*(buf: pointer; count: cint; datatype: MPI_Datatype; dest: cint;
                tag: cint; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Ssend*(buf: pointer; count: cint; datatype: MPI_Datatype; dest: cint;
                tag: cint; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Rsend*(buf: pointer; count: cint; datatype: MPI_Datatype; dest: cint;
                tag: cint; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Buffer_attach*(buffer: pointer; size: cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Buffer_detach*(buffer_addr: pointer; size: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Isend*(buf: pointer; count: cint; datatype: MPI_Datatype; dest: cint;
                tag: cint; comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Ibsend*(buf: pointer; count: cint; datatype: MPI_Datatype; dest: cint;
                 tag: cint; comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Issend*(buf: pointer; count: cint; datatype: MPI_Datatype; dest: cint;
                 tag: cint; comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Irsend*(buf: pointer; count: cint; datatype: MPI_Datatype; dest: cint;
                 tag: cint; comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Irecv*(buf: pointer; count: cint; datatype: MPI_Datatype; source: cint;
                tag: cint; comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Wait*(request: ptr MPI_Request; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Test*(request: ptr MPI_Request; flag: ptr cint; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Request_free*(request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Waitany*(count: cint; array_of_requests: ptr MPI_Request; indx: ptr cint;
                  status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Testany*(count: cint; array_of_requests: ptr MPI_Request; indx: ptr cint;
                  flag: ptr cint; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Waitall*(count: cint; array_of_requests: ptr MPI_Request;
                  array_of_statuses: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Testall*(count: cint; array_of_requests: ptr MPI_Request; flag: ptr cint;
                  array_of_statuses: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Waitsome*(incount: cint; array_of_requests: ptr MPI_Request;
                   outcount: ptr cint; array_of_indices: ptr cint;
                   array_of_statuses: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Testsome*(incount: cint; array_of_requests: ptr MPI_Request;
                   outcount: ptr cint; array_of_indices: ptr cint;
                   array_of_statuses: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Iprobe*(source: cint; tag: cint; comm: MPI_Comm; flag: ptr cint;
                 status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Probe*(source: cint; tag: cint; comm: MPI_Comm; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Cancel*(request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Test_cancelled*(status: ptr MPI_Status; flag: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Send_init*(buf: pointer; count: cint; datatype: MPI_Datatype; dest: cint;
                    tag: cint; comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Bsend_init*(buf: pointer; count: cint; datatype: MPI_Datatype; dest: cint;
                     tag: cint; comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Ssend_init*(buf: pointer; count: cint; datatype: MPI_Datatype; dest: cint;
                     tag: cint; comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Rsend_init*(buf: pointer; count: cint; datatype: MPI_Datatype; dest: cint;
                     tag: cint; comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Recv_init*(buf: pointer; count: cint; datatype: MPI_Datatype; source: cint;
                    tag: cint; comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Start*(request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Startall*(count: cint; array_of_requests: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Sendrecv*(sendbuf: pointer; sendcount: cint; sendtype: MPI_Datatype;
                   dest: cint; sendtag: cint; recvbuf: pointer; recvcount: cint;
                   recvtype: MPI_Datatype; source: cint; recvtag: cint;
                   comm: MPI_Comm; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Sendrecv_replace*(buf: pointer; count: cint; datatype: MPI_Datatype;
                           dest: cint; sendtag: cint; source: cint; recvtag: cint;
                           comm: MPI_Comm; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_contiguous*(count: cint; oldtype: MPI_Datatype;
                          newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_vector*(count: cint; blocklength: cint; stride: cint;
                      oldtype: MPI_Datatype; newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_hvector*(count: cint; blocklength: cint; stride: MPI_Aint;
                       oldtype: MPI_Datatype; newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_indexed*(count: cint; array_of_blocklengths: ptr cint;
                       array_of_displacements: ptr cint; oldtype: MPI_Datatype;
                       newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_hindexed*(count: cint; array_of_blocklengths: ptr cint;
                        array_of_displacements: ptr MPI_Aint;
                        oldtype: MPI_Datatype; newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_struct*(count: cint; array_of_blocklengths: ptr cint;
                      array_of_displacements: ptr MPI_Aint;
                      array_of_types: ptr MPI_Datatype; newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Address*(location: pointer; address: ptr MPI_Aint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_extent*(datatype: MPI_Datatype; extent: ptr MPI_Aint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_size*(datatype: MPI_Datatype; size: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_lb*(datatype: MPI_Datatype; displacement: ptr MPI_Aint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_ub*(datatype: MPI_Datatype; displacement: ptr MPI_Aint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_commit*(datatype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_free*(datatype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Get_elements*(status: ptr MPI_Status; datatype: MPI_Datatype;
                       count: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Pack*(inbuf: pointer; incount: cint; datatype: MPI_Datatype; outbuf: pointer;
               outsize: cint; position: ptr cint; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Unpack*(inbuf: pointer; insize: cint; position: ptr cint; outbuf: pointer;
                 outcount: cint; datatype: MPI_Datatype; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Pack_size*(incount: cint; datatype: MPI_Datatype; comm: MPI_Comm;
                    size: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Barrier*(comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Bcast*(buffer: pointer; count: cint; datatype: MPI_Datatype; root: cint;
                comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Gather*(sendbuf: pointer; sendcount: cint; sendtype: MPI_Datatype;
                 recvbuf: pointer; recvcount: cint; recvtype: MPI_Datatype;
                 root: cint; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Gatherv*(sendbuf: pointer; sendcount: cint; sendtype: MPI_Datatype;
                  recvbuf: pointer; recvcounts: ptr cint; displs: ptr cint;
                  recvtype: MPI_Datatype; root: cint; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Scatter*(sendbuf: pointer; sendcount: cint; sendtype: MPI_Datatype;
                  recvbuf: pointer; recvcount: cint; recvtype: MPI_Datatype;
                  root: cint; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Scatterv*(sendbuf: pointer; sendcounts: ptr cint; displs: ptr cint;
                   sendtype: MPI_Datatype; recvbuf: pointer; recvcount: cint;
                   recvtype: MPI_Datatype; root: cint; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Allgather*(sendbuf: pointer; sendcount: cint; sendtype: MPI_Datatype;
                    recvbuf: pointer; recvcount: cint; recvtype: MPI_Datatype;
                    comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Allgatherv*(sendbuf: pointer; sendcount: cint; sendtype: MPI_Datatype;
                     recvbuf: pointer; recvcounts: ptr cint; displs: ptr cint;
                     recvtype: MPI_Datatype; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Alltoall*(sendbuf: pointer; sendcount: cint; sendtype: MPI_Datatype;
                   recvbuf: pointer; recvcount: cint; recvtype: MPI_Datatype;
                   comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Alltoallv*(sendbuf: pointer; sendcounts: ptr cint; sdispls: ptr cint;
                    sendtype: MPI_Datatype; recvbuf: pointer; recvcounts: ptr cint;
                    rdispls: ptr cint; recvtype: MPI_Datatype; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Alltoallw*(sendbuf: pointer; sendcounts: ptr cint; sdispls: ptr cint;
                    sendtypes: ptr MPI_Datatype; recvbuf: pointer;
                    recvcounts: ptr cint; rdispls: ptr cint;
                    recvtypes: ptr MPI_Datatype; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Exscan*(sendbuf: pointer; recvbuf: pointer; count: cint;
                 datatype: MPI_Datatype; op: MPI_Op; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Reduce*(sendbuf: pointer; recvbuf: pointer; count: cint;
                 datatype: MPI_Datatype; op: MPI_Op; root: cint; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Op_create*(user_fn: ptr MPI_User_function; commute: cint; op: ptr MPI_Op): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Op_free*(op: ptr MPI_Op): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Allreduce*(sendbuf: pointer; recvbuf: pointer; count: cint;
                    datatype: MPI_Datatype; op: MPI_Op; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Reduce_scatter*(sendbuf: pointer; recvbuf: pointer; recvcounts: ptr cint;
                         datatype: MPI_Datatype; op: MPI_Op; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Scan*(sendbuf: pointer; recvbuf: pointer; count: cint;
               datatype: MPI_Datatype; op: MPI_Op; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Group_size*(group: MPI_Group; size: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Group_rank*(group: MPI_Group; rank: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Group_translate_ranks*(group1: MPI_Group; n: cint; ranks1: ptr cint;
                                group2: MPI_Group; ranks2: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Group_compare*(group1: MPI_Group; group2: MPI_Group; result: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_group*(comm: MPI_Comm; group: ptr MPI_Group): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Group_union*(group1: MPI_Group; group2: MPI_Group; newgroup: ptr MPI_Group): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Group_intersection*(group1: MPI_Group; group2: MPI_Group;
                             newgroup: ptr MPI_Group): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Group_difference*(group1: MPI_Group; group2: MPI_Group;
                           newgroup: ptr MPI_Group): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Group_incl*(group: MPI_Group; n: cint; ranks: ptr cint;
                     newgroup: ptr MPI_Group): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Group_excl*(group: MPI_Group; n: cint; ranks: ptr cint;
                     newgroup: ptr MPI_Group): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Group_range_incl*(group: MPI_Group; n: cint; ranges: ptr array[3, cint];
                           newgroup: ptr MPI_Group): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Group_range_excl*(group: MPI_Group; n: cint; ranges: ptr array[3, cint];
                           newgroup: ptr MPI_Group): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Group_free*(group: ptr MPI_Group): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_size*(comm: MPI_Comm; size: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_rank*(comm: MPI_Comm; rank: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_compare*(comm1: MPI_Comm; comm2: MPI_Comm; result: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_dup*(comm: MPI_Comm; newcomm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_dup_with_info*(comm: MPI_Comm; info: MPI_Info; newcomm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_create*(comm: MPI_Comm; group: MPI_Group; newcomm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_split*(comm: MPI_Comm; color: cint; key: cint; newcomm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_free*(comm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_test_inter*(comm: MPI_Comm; flag: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_remote_size*(comm: MPI_Comm; size: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_remote_group*(comm: MPI_Comm; group: ptr MPI_Group): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Intercomm_create*(local_comm: MPI_Comm; local_leader: cint;
                           peer_comm: MPI_Comm; remote_leader: cint; tag: cint;
                           newintercomm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Intercomm_merge*(intercomm: MPI_Comm; high: cint;
                          newintracomm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Keyval_create*(copy_fn: ptr MPI_Copy_function;
                        delete_fn: ptr MPI_Delete_function; keyval: ptr cint;
                        extra_state: pointer): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Keyval_free*(keyval: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Attr_put*(comm: MPI_Comm; keyval: cint; attribute_val: pointer): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Attr_get*(comm: MPI_Comm; keyval: cint; attribute_val: pointer;
                   flag: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Attr_delete*(comm: MPI_Comm; keyval: cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Topo_test*(comm: MPI_Comm; status: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Cart_create*(comm_old: MPI_Comm; ndims: cint; dims: ptr cint;
                      periods: ptr cint; reorder: cint; comm_cart: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Dims_create*(nnodes: cint; ndims: cint; dims: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Graph_create*(comm_old: MPI_Comm; nnodes: cint; indx: ptr cint;
                       edges: ptr cint; reorder: cint; comm_graph: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Graphdims_get*(comm: MPI_Comm; nnodes: ptr cint; nedges: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Graph_get*(comm: MPI_Comm; maxindex: cint; maxedges: cint; indx: ptr cint;
                    edges: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Cartdim_get*(comm: MPI_Comm; ndims: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Cart_get*(comm: MPI_Comm; maxdims: cint; dims: ptr cint; periods: ptr cint;
                   coords: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Cart_rank*(comm: MPI_Comm; coords: ptr cint; rank: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Cart_coords*(comm: MPI_Comm; rank: cint; maxdims: cint; coords: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Graph_neighbors_count*(comm: MPI_Comm; rank: cint; nneighbors: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Graph_neighbors*(comm: MPI_Comm; rank: cint; maxneighbors: cint;
                          neighbors: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Cart_shift*(comm: MPI_Comm; direction: cint; disp: cint;
                     rank_source: ptr cint; rank_dest: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Cart_sub*(comm: MPI_Comm; remain_dims: ptr cint; newcomm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Cart_map*(comm: MPI_Comm; ndims: cint; dims: ptr cint; periods: ptr cint;
                   newrank: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Graph_map*(comm: MPI_Comm; nnodes: cint; indx: ptr cint; edges: ptr cint;
                    newrank: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Get_processor_name*(name: cstring; resultlen: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Get_version*(version: ptr cint; subversion: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Get_library_version*(version: cstring; resultlen: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Errhandler_create*(function: ptr MPI_Handler_function;
                            errhandler: ptr MPI_Errhandler): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Errhandler_set*(comm: MPI_Comm; errhandler: MPI_Errhandler): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Errhandler_get*(comm: MPI_Comm; errhandler: ptr MPI_Errhandler): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Errhandler_free*(errhandler: ptr MPI_Errhandler): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Error_string*(errorcode: cint; string: cstring; resultlen: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Error_class*(errorcode: cint; errorclass: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Wtime*(): cdouble {.cdecl, importC, header: hmpi.}
proc PMPI_Wtick*(): cdouble {.cdecl, importC, header: hmpi.}
proc PMPI_Init*(argc: ptr cint; argv: ptr cstringArray): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Finalize*(): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Initialized*(flag: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Abort*(comm: MPI_Comm; errorcode: cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Pcontrol*(level: cint): cint {.varargs, cdecl, importC, header: hmpi.}
proc PMPI_Close_port*(port_name: cstring): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_accept*(port_name: cstring; info: MPI_Info; root: cint; comm: MPI_Comm;
                      newcomm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_connect*(port_name: cstring; info: MPI_Info; root: cint; comm: MPI_Comm;
                       newcomm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_disconnect*(comm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_get_parent*(parent: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_join*(fd: cint; intercomm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_spawn*(command: cstring; argv: ptr cstring; maxprocs: cint;
                     info: MPI_Info; root: cint; comm: MPI_Comm;
                     intercomm: ptr MPI_Comm; array_of_errcodes: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_spawn_multiple*(count: cint; array_of_commands: ptr cstring;
                              array_of_argv: ptr cstringArray;
                              array_of_maxprocs: ptr cint;
                              array_of_info: ptr MPI_Info; root: cint;
                              comm: MPI_Comm; intercomm: ptr MPI_Comm;
                              array_of_errcodes: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Lookup_name*(service_name: cstring; info: MPI_Info; port_name: cstring): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Open_port*(info: MPI_Info; port_name: cstring): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Publish_name*(service_name: cstring; info: MPI_Info; port_name: cstring): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Unpublish_name*(service_name: cstring; info: MPI_Info; port_name: cstring): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_set_info*(comm: MPI_Comm; info: MPI_Info): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_get_info*(comm: MPI_Comm; info: ptr MPI_Info): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Accumulate*(origin_addr: pointer; origin_count: cint;
                     origin_datatype: MPI_Datatype; target_rank: cint;
                     target_disp: MPI_Aint; target_count: cint;
                     target_datatype: MPI_Datatype; op: MPI_Op; win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Get*(origin_addr: pointer; origin_count: cint;
              origin_datatype: MPI_Datatype; target_rank: cint;
              target_disp: MPI_Aint; target_count: cint;
              target_datatype: MPI_Datatype; win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Put*(origin_addr: pointer; origin_count: cint;
              origin_datatype: MPI_Datatype; target_rank: cint;
              target_disp: MPI_Aint; target_count: cint;
              target_datatype: MPI_Datatype; win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_complete*(win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_create*(base: pointer; size: MPI_Aint; disp_unit: cint; info: MPI_Info;
                     comm: MPI_Comm; win: ptr MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_fence*(assert: cint; win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_free*(win: ptr MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_get_group*(win: MPI_Win; group: ptr MPI_Group): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_lock*(lock_type: cint; rank: cint; assert: cint; win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_post*(group: MPI_Group; assert: cint; win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_start*(group: MPI_Group; assert: cint; win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_test*(win: MPI_Win; flag: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_unlock*(rank: cint; win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_wait*(win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_allocate*(size: MPI_Aint; disp_unit: cint; info: MPI_Info;
                       comm: MPI_Comm; baseptr: pointer; win: ptr MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_allocate_shared*(size: MPI_Aint; disp_unit: cint; info: MPI_Info;
                              comm: MPI_Comm; baseptr: pointer; win: ptr MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_shared_query*(win: MPI_Win; rank: cint; size: ptr MPI_Aint;
                           disp_unit: ptr cint; baseptr: pointer): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_create_dynamic*(info: MPI_Info; comm: MPI_Comm; win: ptr MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_attach*(win: MPI_Win; base: pointer; size: MPI_Aint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_detach*(win: MPI_Win; base: pointer): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_get_info*(win: MPI_Win; info_used: ptr MPI_Info): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_set_info*(win: MPI_Win; info: MPI_Info): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Get_accumulate*(origin_addr: pointer; origin_count: cint;
                         origin_datatype: MPI_Datatype; result_addr: pointer;
                         result_count: cint; result_datatype: MPI_Datatype;
                         target_rank: cint; target_disp: MPI_Aint;
                         target_count: cint; target_datatype: MPI_Datatype;
                         op: MPI_Op; win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Fetch_and_op*(origin_addr: pointer; result_addr: pointer;
                       datatype: MPI_Datatype; target_rank: cint;
                       target_disp: MPI_Aint; op: MPI_Op; win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Compare_and_swap*(origin_addr: pointer; compare_addr: pointer;
                           result_addr: pointer; datatype: MPI_Datatype;
                           target_rank: cint; target_disp: MPI_Aint; win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Rput*(origin_addr: pointer; origin_count: cint;
               origin_datatype: MPI_Datatype; target_rank: cint;
               target_disp: MPI_Aint; target_count: cint;
               target_datatype: MPI_Datatype; win: MPI_Win; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Rget*(origin_addr: pointer; origin_count: cint;
               origin_datatype: MPI_Datatype; target_rank: cint;
               target_disp: MPI_Aint; target_count: cint;
               target_datatype: MPI_Datatype; win: MPI_Win; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Raccumulate*(origin_addr: pointer; origin_count: cint;
                      origin_datatype: MPI_Datatype; target_rank: cint;
                      target_disp: MPI_Aint; target_count: cint;
                      target_datatype: MPI_Datatype; op: MPI_Op; win: MPI_Win;
                      request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Rget_accumulate*(origin_addr: pointer; origin_count: cint;
                          origin_datatype: MPI_Datatype; result_addr: pointer;
                          result_count: cint; result_datatype: MPI_Datatype;
                          target_rank: cint; target_disp: MPI_Aint;
                          target_count: cint; target_datatype: MPI_Datatype;
                          op: MPI_Op; win: MPI_Win; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_lock_all*(assert: cint; win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_unlock_all*(win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_flush*(rank: cint; win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_flush_all*(win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_flush_local*(rank: cint; win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_flush_local_all*(win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_sync*(win: MPI_Win): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Add_error_class*(errorclass: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Add_error_code*(errorclass: cint; errorcode: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Add_error_string*(errorcode: cint; string: cstring): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_call_errhandler*(comm: MPI_Comm; errorcode: cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_create_keyval*(comm_copy_attr_fn: ptr MPI_Comm_copy_attr_function;
    comm_delete_attr_fn: ptr MPI_Comm_delete_attr_function; comm_keyval: ptr cint;
                             extra_state: pointer): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_delete_attr*(comm: MPI_Comm; comm_keyval: cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_free_keyval*(comm_keyval: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_get_attr*(comm: MPI_Comm; comm_keyval: cint; attribute_val: pointer;
                        flag: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_get_name*(comm: MPI_Comm; comm_name: cstring; resultlen: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_set_attr*(comm: MPI_Comm; comm_keyval: cint; attribute_val: pointer): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_set_name*(comm: MPI_Comm; comm_name: cstring): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_call_errhandler*(fh: MPI_File; errorcode: cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Grequest_complete*(request: MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Grequest_start*(query_fn: ptr MPI_Grequest_query_function;
                         free_fn: ptr MPI_Grequest_free_function;
                         cancel_fn: ptr MPI_Grequest_cancel_function;
                         extra_state: pointer; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Init_thread*(argc: ptr cint; argv: ptr cstringArray; required: cint;
                      provided: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Is_thread_main*(flag: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Query_thread*(provided: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Status_set_cancelled*(status: ptr MPI_Status; flag: cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Status_set_elements*(status: ptr MPI_Status; datatype: MPI_Datatype;
                              count: cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_create_keyval*(type_copy_attr_fn: ptr MPI_Type_copy_attr_function;
    type_delete_attr_fn: ptr MPI_Type_delete_attr_function; type_keyval: ptr cint;
                             extra_state: pointer): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_delete_attr*(datatype: MPI_Datatype; type_keyval: cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_dup*(oldtype: MPI_Datatype; newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_free_keyval*(type_keyval: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_get_attr*(datatype: MPI_Datatype; type_keyval: cint;
                        attribute_val: pointer; flag: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_get_contents*(datatype: MPI_Datatype; max_integers: cint;
                            max_addresses: cint; max_datatypes: cint;
                            array_of_integers: ptr cint;
                            array_of_addresses: ptr MPI_Aint;
                            array_of_datatypes: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_get_envelope*(datatype: MPI_Datatype; num_integers: ptr cint;
                            num_addresses: ptr cint; num_datatypes: ptr cint;
                            combiner: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_get_name*(datatype: MPI_Datatype; type_name: cstring;
                        resultlen: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_set_attr*(datatype: MPI_Datatype; type_keyval: cint;
                        attribute_val: pointer): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_set_name*(datatype: MPI_Datatype; type_name: cstring): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_match_size*(typeclass: cint; size: cint; datatype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_call_errhandler*(win: MPI_Win; errorcode: cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_create_keyval*(win_copy_attr_fn: ptr MPI_Win_copy_attr_function;
    win_delete_attr_fn: ptr MPI_Win_delete_attr_function; win_keyval: ptr cint;
                            extra_state: pointer): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_delete_attr*(win: MPI_Win; win_keyval: cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_free_keyval*(win_keyval: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_get_attr*(win: MPI_Win; win_keyval: cint; attribute_val: pointer;
                       flag: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_get_name*(win: MPI_Win; win_name: cstring; resultlen: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_set_attr*(win: MPI_Win; win_keyval: cint; attribute_val: pointer): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_set_name*(win: MPI_Win; win_name: cstring): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Alloc_mem*(size: MPI_Aint; info: MPI_Info; baseptr: pointer): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_create_errhandler*(comm_errhandler_fn: ptr MPI_Comm_errhandler_function;
                                 errhandler: ptr MPI_Errhandler): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_get_errhandler*(comm: MPI_Comm; errhandler: ptr MPI_Errhandler): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_set_errhandler*(comm: MPI_Comm; errhandler: MPI_Errhandler): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_create_errhandler*(file_errhandler_fn: ptr MPI_File_errhandler_function;
                                 errhandler: ptr MPI_Errhandler): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_get_errhandler*(file: MPI_File; errhandler: ptr MPI_Errhandler): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_set_errhandler*(file: MPI_File; errhandler: MPI_Errhandler): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Finalized*(flag: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Free_mem*(base: pointer): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Get_address*(location: pointer; address: ptr MPI_Aint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Info_create*(info: ptr MPI_Info): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Info_delete*(info: MPI_Info; key: cstring): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Info_dup*(info: MPI_Info; newinfo: ptr MPI_Info): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Info_free*(info: ptr MPI_Info): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Info_get*(info: MPI_Info; key: cstring; valuelen: cint; value: cstring;
                   flag: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Info_get_nkeys*(info: MPI_Info; nkeys: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Info_get_nthkey*(info: MPI_Info; n: cint; key: cstring): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Info_get_valuelen*(info: MPI_Info; key: cstring; valuelen: ptr cint;
                            flag: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Info_set*(info: MPI_Info; key: cstring; value: cstring): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Pack_external*(datarep: ptr char; inbuf: pointer; incount: cint;
                        datatype: MPI_Datatype; outbuf: pointer; outsize: MPI_Aint;
                        position: ptr MPI_Aint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Pack_external_size*(datarep: ptr char; incount: cint;
                             datatype: MPI_Datatype; size: ptr MPI_Aint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Request_get_status*(request: MPI_Request; flag: ptr cint;
                             status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Status_c2f*(c_status: ptr MPI_Status; f_status: ptr MPI_Fint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Status_f2c*(f_status: ptr MPI_Fint; c_status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_create_darray*(size: cint; rank: cint; ndims: cint;
                             array_of_gsizes: ptr cint;
                             array_of_distribs: ptr cint; array_of_dargs: ptr cint;
                             array_of_psizes: ptr cint; order: cint;
                             oldtype: MPI_Datatype; newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_create_hindexed*(count: cint; array_of_blocklengths: ptr cint;
                               array_of_displacements: ptr MPI_Aint;
                               oldtype: MPI_Datatype; newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_create_hvector*(count: cint; blocklength: cint; stride: MPI_Aint;
                              oldtype: MPI_Datatype; newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_create_indexed_block*(count: cint; blocklength: cint;
                                    array_of_displacements: ptr cint;
                                    oldtype: MPI_Datatype;
                                    newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_create_hindexed_block*(count: cint; blocklength: cint;
                                     array_of_displacements: ptr MPI_Aint;
                                     oldtype: MPI_Datatype;
                                     newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_create_resized*(oldtype: MPI_Datatype; lb: MPI_Aint; extent: MPI_Aint;
                              newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_create_struct*(count: cint; array_of_blocklengths: ptr cint;
                             array_of_displacements: ptr MPI_Aint;
                             array_of_types: ptr MPI_Datatype;
                             newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_create_subarray*(ndims: cint; array_of_sizes: ptr cint;
                               array_of_subsizes: ptr cint;
                               array_of_starts: ptr cint; order: cint;
                               oldtype: MPI_Datatype; newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_get_extent*(datatype: MPI_Datatype; lb: ptr MPI_Aint;
                          extent: ptr MPI_Aint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_get_true_extent*(datatype: MPI_Datatype; true_lb: ptr MPI_Aint;
                               true_extent: ptr MPI_Aint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Unpack_external*(datarep: ptr char; inbuf: pointer; insize: MPI_Aint;
                          position: ptr MPI_Aint; outbuf: pointer; outcount: cint;
                          datatype: MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_create_errhandler*(win_errhandler_fn: ptr MPI_Win_errhandler_function;
                                errhandler: ptr MPI_Errhandler): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_get_errhandler*(win: MPI_Win; errhandler: ptr MPI_Errhandler): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Win_set_errhandler*(win: MPI_Win; errhandler: MPI_Errhandler): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_create_f90_integer*(r: cint; newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_create_f90_real*(p: cint; r: cint; newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_create_f90_complex*(p: cint; r: cint; newtype: ptr MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Reduce_local*(inbuf: pointer; inoutbuf: pointer; count: cint;
                       datatype: MPI_Datatype; op: MPI_Op): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Op_commutative*(op: MPI_Op; commute: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Reduce_scatter_block*(sendbuf: pointer; recvbuf: pointer; recvcount: cint;
                               datatype: MPI_Datatype; op: MPI_Op; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Dist_graph_create_adjacent*(comm_old: MPI_Comm; indegree: cint;
                                     sources: ptr cint; sourceweights: ptr cint;
                                     outdegree: cint; destinations: ptr cint;
                                     destweights: ptr cint; info: MPI_Info;
                                     reorder: cint; comm_dist_graph: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Dist_graph_create*(comm_old: MPI_Comm; n: cint; sources: ptr cint;
                            degrees: ptr cint; destinations: ptr cint;
                            weights: ptr cint; info: MPI_Info; reorder: cint;
                            comm_dist_graph: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Dist_graph_neighbors_count*(comm: MPI_Comm; indegree: ptr cint;
                                     outdegree: ptr cint; weighted: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Dist_graph_neighbors*(comm: MPI_Comm; maxindegree: cint; sources: ptr cint;
                               sourceweights: ptr cint; maxoutdegree: cint;
                               destinations: ptr cint; destweights: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Improbe*(source: cint; tag: cint; comm: MPI_Comm; flag: ptr cint;
                  message: ptr MPI_Message; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Imrecv*(buf: pointer; count: cint; datatype: MPI_Datatype;
                 message: ptr MPI_Message; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Mprobe*(source: cint; tag: cint; comm: MPI_Comm; message: ptr MPI_Message;
                 status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Mrecv*(buf: pointer; count: cint; datatype: MPI_Datatype;
                message: ptr MPI_Message; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_idup*(comm: MPI_Comm; newcomm: ptr MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Ibarrier*(comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Ibcast*(buffer: pointer; count: cint; datatype: MPI_Datatype; root: cint;
                 comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Igather*(sendbuf: pointer; sendcount: cint; sendtype: MPI_Datatype;
                  recvbuf: pointer; recvcount: cint; recvtype: MPI_Datatype;
                  root: cint; comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Igatherv*(sendbuf: pointer; sendcount: cint; sendtype: MPI_Datatype;
                   recvbuf: pointer; recvcounts: ptr cint; displs: ptr cint;
                   recvtype: MPI_Datatype; root: cint; comm: MPI_Comm;
                   request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Iscatter*(sendbuf: pointer; sendcount: cint; sendtype: MPI_Datatype;
                   recvbuf: pointer; recvcount: cint; recvtype: MPI_Datatype;
                   root: cint; comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Iscatterv*(sendbuf: pointer; sendcounts: ptr cint; displs: ptr cint;
                    sendtype: MPI_Datatype; recvbuf: pointer; recvcount: cint;
                    recvtype: MPI_Datatype; root: cint; comm: MPI_Comm;
                    request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Iallgather*(sendbuf: pointer; sendcount: cint; sendtype: MPI_Datatype;
                     recvbuf: pointer; recvcount: cint; recvtype: MPI_Datatype;
                     comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Iallgatherv*(sendbuf: pointer; sendcount: cint; sendtype: MPI_Datatype;
                      recvbuf: pointer; recvcounts: ptr cint; displs: ptr cint;
                      recvtype: MPI_Datatype; comm: MPI_Comm;
                      request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Ialltoall*(sendbuf: pointer; sendcount: cint; sendtype: MPI_Datatype;
                    recvbuf: pointer; recvcount: cint; recvtype: MPI_Datatype;
                    comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Ialltoallv*(sendbuf: pointer; sendcounts: ptr cint; sdispls: ptr cint;
                     sendtype: MPI_Datatype; recvbuf: pointer; recvcounts: ptr cint;
                     rdispls: ptr cint; recvtype: MPI_Datatype; comm: MPI_Comm;
                     request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Ialltoallw*(sendbuf: pointer; sendcounts: ptr cint; sdispls: ptr cint;
                     sendtypes: ptr MPI_Datatype; recvbuf: pointer;
                     recvcounts: ptr cint; rdispls: ptr cint;
                     recvtypes: ptr MPI_Datatype; comm: MPI_Comm;
                     request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Ireduce*(sendbuf: pointer; recvbuf: pointer; count: cint;
                  datatype: MPI_Datatype; op: MPI_Op; root: cint; comm: MPI_Comm;
                  request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Iallreduce*(sendbuf: pointer; recvbuf: pointer; count: cint;
                     datatype: MPI_Datatype; op: MPI_Op; comm: MPI_Comm;
                     request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Ireduce_scatter*(sendbuf: pointer; recvbuf: pointer; recvcounts: ptr cint;
                          datatype: MPI_Datatype; op: MPI_Op; comm: MPI_Comm;
                          request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Ireduce_scatter_block*(sendbuf: pointer; recvbuf: pointer; recvcount: cint;
                                datatype: MPI_Datatype; op: MPI_Op; comm: MPI_Comm;
                                request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Iscan*(sendbuf: pointer; recvbuf: pointer; count: cint;
                datatype: MPI_Datatype; op: MPI_Op; comm: MPI_Comm;
                request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Iexscan*(sendbuf: pointer; recvbuf: pointer; count: cint;
                  datatype: MPI_Datatype; op: MPI_Op; comm: MPI_Comm;
                  request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Ineighbor_allgather*(sendbuf: pointer; sendcount: cint;
                              sendtype: MPI_Datatype; recvbuf: pointer;
                              recvcount: cint; recvtype: MPI_Datatype;
                              comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Ineighbor_allgatherv*(sendbuf: pointer; sendcount: cint;
                               sendtype: MPI_Datatype; recvbuf: pointer;
                               recvcounts: ptr cint; displs: ptr cint;
                               recvtype: MPI_Datatype; comm: MPI_Comm;
                               request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Ineighbor_alltoall*(sendbuf: pointer; sendcount: cint;
                             sendtype: MPI_Datatype; recvbuf: pointer;
                             recvcount: cint; recvtype: MPI_Datatype;
                             comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Ineighbor_alltoallv*(sendbuf: pointer; sendcounts: ptr cint;
                              sdispls: ptr cint; sendtype: MPI_Datatype;
                              recvbuf: pointer; recvcounts: ptr cint;
                              rdispls: ptr cint; recvtype: MPI_Datatype;
                              comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Ineighbor_alltoallw*(sendbuf: pointer; sendcounts: ptr cint;
                              sdispls: ptr MPI_Aint; sendtypes: ptr MPI_Datatype;
                              recvbuf: pointer; recvcounts: ptr cint;
                              rdispls: ptr MPI_Aint; recvtypes: ptr MPI_Datatype;
                              comm: MPI_Comm; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Neighbor_allgather*(sendbuf: pointer; sendcount: cint;
                             sendtype: MPI_Datatype; recvbuf: pointer;
                             recvcount: cint; recvtype: MPI_Datatype; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Neighbor_allgatherv*(sendbuf: pointer; sendcount: cint;
                              sendtype: MPI_Datatype; recvbuf: pointer;
                              recvcounts: ptr cint; displs: ptr cint;
                              recvtype: MPI_Datatype; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Neighbor_alltoall*(sendbuf: pointer; sendcount: cint;
                            sendtype: MPI_Datatype; recvbuf: pointer;
                            recvcount: cint; recvtype: MPI_Datatype; comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Neighbor_alltoallv*(sendbuf: pointer; sendcounts: ptr cint;
                             sdispls: ptr cint; sendtype: MPI_Datatype;
                             recvbuf: pointer; recvcounts: ptr cint;
                             rdispls: ptr cint; recvtype: MPI_Datatype;
                             comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Neighbor_alltoallw*(sendbuf: pointer; sendcounts: ptr cint;
                             sdispls: ptr MPI_Aint; sendtypes: ptr MPI_Datatype;
                             recvbuf: pointer; recvcounts: ptr cint;
                             rdispls: ptr MPI_Aint; recvtypes: ptr MPI_Datatype;
                             comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_split_type*(comm: MPI_Comm; split_type: cint; key: cint; info: MPI_Info;
                          newcomm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Comm_create_group*(comm: MPI_Comm; group: MPI_Group; tag: cint;
                            newcomm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Get_elements_x*(status: ptr MPI_Status; datatype: MPI_Datatype;
                         count: ptr MPI_Count): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Status_set_elements_x*(status: ptr MPI_Status; datatype: MPI_Datatype;
                                count: MPI_Count): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_get_extent_x*(datatype: MPI_Datatype; lb: ptr MPI_Count;
                            extent: ptr MPI_Count): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_get_true_extent_x*(datatype: MPI_Datatype; lb: ptr MPI_Count;
                                 extent: ptr MPI_Count): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Type_size_x*(datatype: MPI_Datatype; size: ptr MPI_Count): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Aint_add*(base: MPI_Aint; disp: MPI_Aint): MPI_Aint {.cdecl, importC, header: hmpi.}
proc PMPI_Aint_diff*(addr1: MPI_Aint; addr2: MPI_Aint): MPI_Aint {.cdecl, importC, header: hmpi.}
proc PMPI_T_init_thread*(required: cint; provided: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_finalize*(): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_enum_get_info*(enumtype: MPI_T_enum; num: ptr cint; name: cstring;
                          name_len: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_enum_get_item*(enumtype: MPI_T_enum; indx: cint; value: ptr cint;
                          name: cstring; name_len: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_cvar_get_num*(num_cvar: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_cvar_get_info*(cvar_index: cint; name: cstring; name_len: ptr cint;
                          verbosity: ptr cint; datatype: ptr MPI_Datatype;
                          enumtype: ptr MPI_T_enum; desc: cstring;
                          desc_len: ptr cint; binding: ptr cint; scope: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_cvar_handle_alloc*(cvar_index: cint; obj_handle: pointer;
                              handle: ptr MPI_T_cvar_handle; count: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_cvar_handle_free*(handle: ptr MPI_T_cvar_handle): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_cvar_read*(handle: MPI_T_cvar_handle; buf: pointer): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_cvar_write*(handle: MPI_T_cvar_handle; buf: pointer): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_pvar_get_num*(num_pvar: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_pvar_get_info*(pvar_index: cint; name: cstring; name_len: ptr cint;
                          verbosity: ptr cint; var_class: ptr cint;
                          datatype: ptr MPI_Datatype; enumtype: ptr MPI_T_enum;
                          desc: cstring; desc_len: ptr cint; binding: ptr cint;
                          readonly: ptr cint; continuous: ptr cint; `atomic`: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_pvar_session_create*(session: ptr MPI_T_pvar_session): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_pvar_session_free*(session: ptr MPI_T_pvar_session): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_pvar_handle_alloc*(session: MPI_T_pvar_session; pvar_index: cint;
                              obj_handle: pointer; handle: ptr MPI_T_pvar_handle;
                              count: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_pvar_handle_free*(session: MPI_T_pvar_session;
                             handle: ptr MPI_T_pvar_handle): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_pvar_start*(session: MPI_T_pvar_session; handle: MPI_T_pvar_handle): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_pvar_stop*(session: MPI_T_pvar_session; handle: MPI_T_pvar_handle): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_pvar_read*(session: MPI_T_pvar_session; handle: MPI_T_pvar_handle;
                      buf: pointer): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_pvar_write*(session: MPI_T_pvar_session; handle: MPI_T_pvar_handle;
                       buf: pointer): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_pvar_reset*(session: MPI_T_pvar_session; handle: MPI_T_pvar_handle): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_pvar_readreset*(session: MPI_T_pvar_session; handle: MPI_T_pvar_handle;
                           buf: pointer): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_category_get_num*(num_cat: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_category_get_info*(cat_index: cint; name: cstring; name_len: ptr cint;
                              desc: cstring; desc_len: ptr cint; num_cvars: ptr cint;
                              num_pvars: ptr cint; num_categories: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_category_get_cvars*(cat_index: cint; len: cint; indices: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_category_get_pvars*(cat_index: cint; len: cint; indices: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_category_get_categories*(cat_index: cint; len: cint; indices: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_category_changed*(stamp: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_cvar_get_index*(name: cstring; cvar_index: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_pvar_get_index*(name: cstring; var_class: cint; pvar_index: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_T_category_get_index*(name: cstring; cat_index: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPIX_Comm_failure_ack*(comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPIX_Comm_failure_get_acked*(comm: MPI_Comm; failedgrp: ptr MPI_Group): cint {.cdecl, importC, header: hmpi.}
proc PMPIX_Comm_revoke*(comm: MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPIX_Comm_shrink*(comm: MPI_Comm; newcomm: ptr MPI_Comm): cint {.cdecl, importC, header: hmpi.}
proc PMPIX_Comm_agree*(comm: MPI_Comm; flag: ptr cint): cint {.cdecl, importC, header: hmpi.}
const MPIIMPL_ADVERTISES_FEATURES*: cint = 1

const MPIIMPL_HAVE_MPI_INFO*: cint = 1

const MPIIMPL_HAVE_MPI_COMBINER_DARRAY*: cint = 1

#const MPIIMPL_HAVE_MPI_TYPE_CREATE_DARRAY*: cint = 1

const MPIIMPL_HAVE_MPI_COMBINER_SUBARRAY*: cint = 1

const MPIIMPL_HAVE_MPI_TYPE_CREATE_DARRAY*: cint = 1

const MPIIMPL_HAVE_MPI_COMBINER_DUP*: cint = 1

const MPIIMPL_HAVE_MPI_GREQUEST*: cint = 1

const MPIIMPL_HAVE_STATUS_SET_BYTES*: cint = 1

const MPIIMPL_HAVE_STATUS_SET_INFO*: cint = 1

const ROMIO_VERSION*: cint = 126

const MPI_MODE_RDONLY*: cint = 2

const MPI_MODE_RDWR*: cint = 8

const MPI_MODE_WRONLY*: cint = 4

const MPI_MODE_CREATE*: cint = 1

const MPI_MODE_EXCL*: cint = 64

const MPI_MODE_DELETE_ON_CLOSE*: cint = 16

const MPI_MODE_UNIQUE_OPEN*: cint = 32

const MPI_MODE_APPEND*: cint = 128

const MPI_MODE_SEQUENTIAL*: cint = 256

const MPI_DISPLACEMENT_CURRENT*: cint = -54278278

const MPI_FILE_NULL*: MPI_File = nil

const MPIO_REQUEST_NULL*: MPI_Request = (cast[MPI_Request](0))

const MPI_SEEK_SET*: cint = 600

const MPI_SEEK_CUR*: cint = 602

const MPI_SEEK_END*: cint = 604

const MPI_MAX_DATAREP_STRING*: cint = 128

proc MPI_File_open*(comm: MPI_Comm; filename: cstring; amode: cint; info: MPI_Info,
                   fh: ptr MPI_File): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_close*(fh: ptr MPI_File): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_delete*(filename: cstring; info: MPI_Info): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_set_size*(fh: MPI_File; size: MPI_Offset): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_preallocate*(fh: MPI_File; size: MPI_Offset): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_get_size*(fh: MPI_File; size: ptr MPI_Offset): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_get_group*(fh: MPI_File; group: ptr MPI_Group): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_get_amode*(fh: MPI_File; amode: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_set_info*(fh: MPI_File; info: MPI_Info): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_get_info*(fh: MPI_File; info_used: ptr MPI_Info): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_set_view*(fh: MPI_File; disp: MPI_Offset; etype: MPI_Datatype;
                       filetype: MPI_Datatype; datarep: cstring; info: MPI_Info): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_get_view*(fh: MPI_File; disp: ptr MPI_Offset; etype: ptr MPI_Datatype;
                       filetype: ptr MPI_Datatype; datarep: cstring): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_read_at*(fh: MPI_File; offset: MPI_Offset; buf: pointer; count: cint;
                      datatype: MPI_Datatype; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_read_at_all*(fh: MPI_File; offset: MPI_Offset; buf: pointer; count: cint;
                          datatype: MPI_Datatype; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_write_at*(fh: MPI_File; offset: MPI_Offset; buf: pointer; count: cint;
                       datatype: MPI_Datatype; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_write_at_all*(fh: MPI_File; offset: MPI_Offset; buf: pointer;
                           count: cint; datatype: MPI_Datatype;
                           status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_iread_at*(fh: MPI_File; offset: MPI_Offset; buf: pointer; count: cint;
                       datatype: MPI_Datatype; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_iwrite_at*(fh: MPI_File; offset: MPI_Offset; buf: pointer; count: cint;
                        datatype: MPI_Datatype; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_read*(fh: MPI_File; buf: pointer; count: cint; datatype: MPI_Datatype;
                   status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_read_all*(fh: MPI_File; buf: pointer; count: cint;
                       datatype: MPI_Datatype; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_write*(fh: MPI_File; buf: pointer; count: cint; datatype: MPI_Datatype;
                    status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_write_all*(fh: MPI_File; buf: pointer; count: cint;
                        datatype: MPI_Datatype; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_iread*(fh: MPI_File; buf: pointer; count: cint; datatype: MPI_Datatype;
                    request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_iwrite*(fh: MPI_File; buf: pointer; count: cint; datatype: MPI_Datatype;
                     request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_seek*(fh: MPI_File; offset: MPI_Offset; whence: cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_get_position*(fh: MPI_File; offset: ptr MPI_Offset): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_get_byte_offset*(fh: MPI_File; offset: MPI_Offset; disp: ptr MPI_Offset): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_read_shared*(fh: MPI_File; buf: pointer; count: cint;
                          datatype: MPI_Datatype; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_write_shared*(fh: MPI_File; buf: pointer; count: cint;
                           datatype: MPI_Datatype; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_iread_shared*(fh: MPI_File; buf: pointer; count: cint;
                           datatype: MPI_Datatype; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_iwrite_shared*(fh: MPI_File; buf: pointer; count: cint;
                            datatype: MPI_Datatype; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_read_ordered*(fh: MPI_File; buf: pointer; count: cint;
                           datatype: MPI_Datatype; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_write_ordered*(fh: MPI_File; buf: pointer; count: cint;
                            datatype: MPI_Datatype; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_seek_shared*(fh: MPI_File; offset: MPI_Offset; whence: cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_get_position_shared*(fh: MPI_File; offset: ptr MPI_Offset): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_read_at_all_begin*(fh: MPI_File; offset: MPI_Offset; buf: pointer;
                                count: cint; datatype: MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_read_at_all_end*(fh: MPI_File; buf: pointer; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_write_at_all_begin*(fh: MPI_File; offset: MPI_Offset; buf: pointer;
                                 count: cint; datatype: MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_write_at_all_end*(fh: MPI_File; buf: pointer; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_read_all_begin*(fh: MPI_File; buf: pointer; count: cint;
                             datatype: MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_read_all_end*(fh: MPI_File; buf: pointer; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_write_all_begin*(fh: MPI_File; buf: pointer; count: cint;
                              datatype: MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_write_all_end*(fh: MPI_File; buf: pointer; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_read_ordered_begin*(fh: MPI_File; buf: pointer; count: cint;
                                 datatype: MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_read_ordered_end*(fh: MPI_File; buf: pointer; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_write_ordered_begin*(fh: MPI_File; buf: pointer; count: cint;
                                  datatype: MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_write_ordered_end*(fh: MPI_File; buf: pointer; status: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_get_type_extent*(fh: MPI_File; datatype: MPI_Datatype;
                              extent: ptr MPI_Aint): cint {.cdecl, importC, header: hmpi.}
proc MPI_Register_datarep*(datarep: cstring; read_conversion_fn: ptr MPI_Datarep_conversion_function;
    write_conversion_fn: ptr MPI_Datarep_conversion_function; dtype_file_extent_fn: ptr MPI_Datarep_extent_function;
                          extra_state: pointer): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_set_atomicity*(fh: MPI_File; flag: cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_get_atomicity*(fh: MPI_File; flag: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_sync*(fh: MPI_File): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_iread_at_all*(fh: MPI_File; offset: MPI_Offset; buf: pointer;
                           count: cint; datatype: MPI_Datatype;
                           request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_iwrite_at_all*(fh: MPI_File; offset: MPI_Offset; buf: pointer;
                            count: cint; datatype: MPI_Datatype;
                            request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_iread_all*(fh: MPI_File; buf: pointer; count: cint;
                        datatype: MPI_Datatype; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_iwrite_all*(fh: MPI_File; buf: pointer; count: cint;
                         datatype: MPI_Datatype; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPI_File_f2c*(file: MPI_Fint): MPI_File {.cdecl, importC, header: hmpi.}
proc MPI_File_c2f*(file: MPI_File): MPI_Fint {.cdecl, importC, header: hmpi.}
proc PMPI_File_open*(a2: MPI_Comm; a3: cstring; a4: cint; a5: MPI_Info; a6: ptr MPI_File): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_close*(a2: ptr MPI_File): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_delete*(a2: cstring; a3: MPI_Info): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_set_size*(a2: MPI_File; a3: MPI_Offset): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_preallocate*(a2: MPI_File; a3: MPI_Offset): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_get_size*(a2: MPI_File; a3: ptr MPI_Offset): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_get_group*(a2: MPI_File; a3: ptr MPI_Group): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_get_amode*(a2: MPI_File; a3: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_set_info*(a2: MPI_File; a3: MPI_Info): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_get_info*(a2: MPI_File; a3: ptr MPI_Info): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_set_view*(a2: MPI_File; a3: MPI_Offset; a4: MPI_Datatype;
                        a5: MPI_Datatype; a6: cstring; a7: MPI_Info): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_get_view*(a2: MPI_File; a3: ptr MPI_Offset; a4: ptr MPI_Datatype;
                        a5: ptr MPI_Datatype; a6: cstring): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_read_at*(a2: MPI_File; a3: MPI_Offset; a4: pointer; a5: cint;
                       a6: MPI_Datatype; a7: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_read_at_all*(a2: MPI_File; a3: MPI_Offset; a4: pointer; a5: cint;
                           a6: MPI_Datatype; a7: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_write_at*(a2: MPI_File; a3: MPI_Offset; a4: pointer; a5: cint;
                        a6: MPI_Datatype; a7: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_write_at_all*(a2: MPI_File; a3: MPI_Offset; a4: pointer; a5: cint;
                            a6: MPI_Datatype; a7: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_iread_at*(a2: MPI_File; a3: MPI_Offset; a4: pointer; a5: cint;
                        a6: MPI_Datatype; a7: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_iwrite_at*(a2: MPI_File; a3: MPI_Offset; a4: pointer; a5: cint;
                         a6: MPI_Datatype; a7: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_read*(a2: MPI_File; a3: pointer; a4: cint; a5: MPI_Datatype;
                    a6: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_read_all*(a2: MPI_File; a3: pointer; a4: cint; a5: MPI_Datatype;
                        a6: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_write*(a2: MPI_File; a3: pointer; a4: cint; a5: MPI_Datatype;
                     a6: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_write_all*(a2: MPI_File; a3: pointer; a4: cint; a5: MPI_Datatype;
                         a6: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_iread*(a2: MPI_File; a3: pointer; a4: cint; a5: MPI_Datatype;
                     a6: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_iwrite*(a2: MPI_File; a3: pointer; a4: cint; a5: MPI_Datatype;
                      a6: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_seek*(a2: MPI_File; a3: MPI_Offset; a4: cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_get_position*(a2: MPI_File; a3: ptr MPI_Offset): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_get_byte_offset*(a2: MPI_File; a3: MPI_Offset; a4: ptr MPI_Offset): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_read_shared*(a2: MPI_File; a3: pointer; a4: cint; a5: MPI_Datatype;
                           a6: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_write_shared*(a2: MPI_File; a3: pointer; a4: cint; a5: MPI_Datatype;
                            a6: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_iread_shared*(a2: MPI_File; a3: pointer; a4: cint; a5: MPI_Datatype;
                            a6: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_iwrite_shared*(a2: MPI_File; a3: pointer; a4: cint; a5: MPI_Datatype;
                             a6: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_read_ordered*(a2: MPI_File; a3: pointer; a4: cint; a5: MPI_Datatype;
                            a6: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_write_ordered*(a2: MPI_File; a3: pointer; a4: cint; a5: MPI_Datatype;
                             a6: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_seek_shared*(a2: MPI_File; a3: MPI_Offset; a4: cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_get_position_shared*(a2: MPI_File; a3: ptr MPI_Offset): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_read_at_all_begin*(a2: MPI_File; a3: MPI_Offset; a4: pointer; a5: cint;
                                 a6: MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_read_at_all_end*(a2: MPI_File; a3: pointer; a4: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_write_at_all_begin*(a2: MPI_File; a3: MPI_Offset; a4: pointer; a5: cint;
                                  a6: MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_write_at_all_end*(a2: MPI_File; a3: pointer; a4: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_read_all_begin*(a2: MPI_File; a3: pointer; a4: cint; a5: MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_read_all_end*(a2: MPI_File; a3: pointer; a4: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_write_all_begin*(a2: MPI_File; a3: pointer; a4: cint; a5: MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_write_all_end*(a2: MPI_File; a3: pointer; a4: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_read_ordered_begin*(a2: MPI_File; a3: pointer; a4: cint;
                                  a5: MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_read_ordered_end*(a2: MPI_File; a3: pointer; a4: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_write_ordered_begin*(a2: MPI_File; a3: pointer; a4: cint;
                                   a5: MPI_Datatype): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_write_ordered_end*(a2: MPI_File; a3: pointer; a4: ptr MPI_Status): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_get_type_extent*(a2: MPI_File; a3: MPI_Datatype; a4: ptr MPI_Aint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_Register_datarep*(a2: cstring; a3: ptr MPI_Datarep_conversion_function;
                           a4: ptr MPI_Datarep_conversion_function;
                           a5: ptr MPI_Datarep_extent_function; a6: pointer): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_set_atomicity*(a2: MPI_File; a3: cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_get_atomicity*(a2: MPI_File; a3: ptr cint): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_sync*(a2: MPI_File): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_set_errhandler*(a2: MPI_File; a3: MPI_Errhandler): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_get_errhandler*(a2: MPI_File; a3: ptr MPI_Errhandler): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_iread_at_all*(fh: MPI_File; offset: MPI_Offset; buf: pointer;
                            count: cint; datatype: MPI_Datatype;
                            request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_iwrite_at_all*(fh: MPI_File; offset: MPI_Offset; buf: pointer;
                             count: cint; datatype: MPI_Datatype;
                             request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_iread_all*(fh: MPI_File; buf: pointer; count: cint;
                         datatype: MPI_Datatype; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_iwrite_all*(fh: MPI_File; buf: pointer; count: cint;
                          datatype: MPI_Datatype; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPI_File_f2c*(a2: MPI_Fint): MPI_File {.cdecl, importC, header: hmpi.}
proc PMPI_File_c2f*(a2: MPI_File): MPI_Fint {.cdecl, importC, header: hmpi.}
type
  MPIX_Grequest_class* = cint

proc MPIX_Grequest_class_create*(query_fn: ptr MPI_Grequest_query_function;
                                free_fn: ptr MPI_Grequest_free_function;
                                cancel_fn: ptr MPI_Grequest_cancel_function;
                                poll_fn: ptr MPIX_Grequest_poll_function;
                                wait_fn: ptr MPIX_Grequest_wait_function;
                                greq_class: ptr MPIX_Grequest_class): cint {.cdecl, importC, header: hmpi.}
proc MPIX_Grequest_class_allocate*(greq_class: MPIX_Grequest_class;
                                  extra_state: pointer; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc MPIX_Grequest_start*(query_fn: ptr MPI_Grequest_query_function;
                         free_fn: ptr MPI_Grequest_free_function;
                         cancel_fn: ptr MPI_Grequest_cancel_function;
                         poll_fn: ptr MPIX_Grequest_poll_function;
                         wait_fn: ptr MPIX_Grequest_wait_function;
                         extra_state: pointer; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
type
  mpixi_mutex_s* {.bycopy.} = object
  
  MPIX_Mutex* = ptr mpixi_mutex_s

proc MPIX_Mutex_create*(count: cint; comm: MPI_Comm; hdl: ptr MPIX_Mutex): cint {.cdecl, importC, header: hmpi.}
proc MPIX_Mutex_free*(hdl: ptr MPIX_Mutex): cint {.cdecl, importC, header: hmpi.}
proc MPIX_Mutex_lock*(hdl: MPIX_Mutex; mutex: cint; `proc`: cint): cint {.cdecl, importC, header: hmpi.}
proc MPIX_Mutex_unlock*(hdl: MPIX_Mutex; mutex: cint; `proc`: cint): cint {.cdecl, importC, header: hmpi.}
proc PMPIX_Grequest_class_create*(query_fn: ptr MPI_Grequest_query_function;
                                 free_fn: ptr MPI_Grequest_free_function;
                                 cancel_fn: ptr MPI_Grequest_cancel_function;
                                 poll_fn: ptr MPIX_Grequest_poll_function;
                                 wait_fn: ptr MPIX_Grequest_wait_function;
                                 greq_class: ptr MPIX_Grequest_class): cint {.cdecl, importC, header: hmpi.}
proc PMPIX_Grequest_class_allocate*(greq_class: MPIX_Grequest_class;
                                   extra_state: pointer; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPIX_Grequest_start*(query_fn: ptr MPI_Grequest_query_function;
                          free_fn: ptr MPI_Grequest_free_function;
                          cancel_fn: ptr MPI_Grequest_cancel_function;
                          poll_fn: ptr MPIX_Grequest_poll_function;
                          wait_fn: ptr MPIX_Grequest_wait_function;
                          extra_state: pointer; request: ptr MPI_Request): cint {.cdecl, importC, header: hmpi.}
proc PMPIX_Mutex_create*(count: cint; comm: MPI_Comm; hdl: ptr MPIX_Mutex): cint {.cdecl, importC, header: hmpi.}
proc PMPIX_Mutex_free*(hdl: ptr MPIX_Mutex): cint {.cdecl, importC, header: hmpi.}
proc PMPIX_Mutex_lock*(hdl: MPIX_Mutex; mutex: cint; `proc`: cint): cint {.cdecl, importC, header: hmpi.}
proc PMPIX_Mutex_unlock*(hdl: MPIX_Mutex; mutex: cint; `proc`: cint): cint {.cdecl, importC, header: hmpi.}
