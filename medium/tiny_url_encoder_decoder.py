import secrets

class Codec:
    global a
    a = {}
    def encode(self, longUrl: str) -> str:
        """Encodes a URL to a shortened URL.
        """
        key = secrets.token_hex(4)
        while key in a:
            key = secrets.token_hex(4)
        a[key] = longUrl
        return key
        

    def decode(self, shortUrl: str) -> str:
        """Decodes a shortened URL to its original URL.
        """
        return a.get(shortUrl)


codec = Codec()
tiny_url = codec.encode("abc.com")
print(tiny_url)
print(codec.decode(tiny_url))