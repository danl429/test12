import re
# import sys
import urllib.request
import modal

stub = modal.Stub(name="link-scraper")

@stub.function()

def get_links(url):
    response = urllib.request.urlopen(url)
    html = response.read().decode("utf8")
    links = []
    for match in re.finditer('href="(.*?)"', html):
        links.append(match.group(1))
    return links


# if __name__ == "__main__":
#     links = get_links(sys.argv[1])
@stub.local_entrypoint()
def main(url):
    links = get_links.call(url)
    print(links)
