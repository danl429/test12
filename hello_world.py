import sys
import modal

stub = modal.Stub("example-hello-world")


@stub.function()
def f(i):

    if i % 2 == 0:
        print("Hello", i)
    else:
        print("World", i, file=sys.stderr)

    return i * i


@stub.local_entrypoint()
def main():

    print(f(1000))

    print(f.call(1000))

    total = 0
    for ret in f.map(range(25354350)):
        total += ret
        #print(ret)

    print(total)




    