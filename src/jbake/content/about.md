title=About
date=
type=page
tags=
status=published
~~~~~~
# Ferry

Open source Apache 2 licensed library for fast client bootstraping. It generates http server calls based on
annotated interfaces.

# Examples:
* Simple interface:

    public interface SimpleApi {
        @Url("http://example.org")
        List<Map<String, Object>> getAll();
    }


* Method with parameters:

    public interface SimpleApi {
        @Url("http://example.org")
        List<Map<String, Object>> getById(@Param("id") long id);
    }

* Different request method:

    public interface SimpleApi {
        @Url("http://example.org")
        @RequestMethod("POST")
        void postUpdate(@Param("id") long id, @Param("count") long count);
    }

* Dynamic parameter map:

    public interface SimpleApi {
        @Url("http://example.org")
        List<Map<String, Object>> getById(@Param Map<String, Object>);
    }

* Java bean as parameters:

    public interface SimpleApi {
        @Url("http://example.org")
        List<Map<String, Object>> getById(@Param Pageable pageable);
    }

