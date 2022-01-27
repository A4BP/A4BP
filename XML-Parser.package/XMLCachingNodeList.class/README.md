This is a node list that caches child elements by name, keeping both an ordered list of elements and a dictionary that allows for faster retrieval of elements by qualified or local name.

You can inject it into the DOM parser like this:
parser := XMLDOMParser on: xmlSource.
parser nodeListClass: XMLCachingNodeList.