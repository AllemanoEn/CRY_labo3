from hashlib import sha256

def point_to_bytes(pt):
    """This function hashes a point on an elliptic curve for Ex 2"""
    return sha256(str(pt[0]).encode()).digest()
