from pwn import *

r = remote('45.153.241.194', 31337)

for _ in range(6):
    r.recvline()

r.sendline(b'y')

for _ in range(40):
    r.recvline()
    p = int(r.recvline().decode().split('=')[1].strip())
    r.recvline()
    g = p -4
    r.sendline(str(g).encode())
    r.recvline()
    x = 2
    y = p - 2
    r.sendline((str(x)+','+str(y)).encode())

r.interactive()
# | Congratulation! the flag is: ASIS{_An07H3r_F1XeD_PoInt5_f0r_DLP!!}