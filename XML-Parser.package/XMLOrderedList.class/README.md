This class functions as an OrderedCollection that will not raise exceptions when attempts are made to access absent objects. This means messages like #at:, #after:, and #first will return nil when the requested object cannot be retrieved. Messages that modify the collection based on the presence or absence of other objects such as #add:after: or #at:put: will still raise exceptions as usual.

