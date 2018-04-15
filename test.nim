import strutils
from mpi import mpiApp


proc main() {.mpiApp.} =
  let rank = mpi.commRank()
  let size = mpi.commSize()
  echo "Hello world from process $1 of $2".format(rank, size)
  var digits = newSeq[int](4)
  if rank == 0:
    digits = @[1,2,3,4]
    mpi.send(digits[1..3], dest=1)
  elif rank == 1:
    mpi.recv(digits[0..2], src=0)

  echo "on $1:  arr = $2".format(rank, digits)
  mpi.sum(digits)
  if rank == mpi.Root:
    echo "on $1:  sum = $2".format(rank, digits)

main()
