from hashlib import sha256

def point_to_bytes(pt):
    """This function hashes a point on an elliptic curve for Ex 2"""
    return sha256(str(pt[0]).encode()).digest()

x = 123123
# int to string bytes
x_bytes = x.to_bytes(32, byteorder='big')

# string bytes to int
x_int = int.from_bytes(x_bytes, byteorder='big')

v2 = "zSCHPaI0B0E+iNhWnSREq+qd/zX3ZdEwPExkGyLtHW4="

# decode base64
v2_bytes = base64.b64decode(v2)

msg = "coucou"

# encode string to 32 bytes
msg_bytes = msg.encode()

# 32 bytes string
msg_bytes_32 = msg_bytes + b'\x00' * (32 - len(msg_bytes))