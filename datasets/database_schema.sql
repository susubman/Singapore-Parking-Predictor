--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2 (Ubuntu 17.2-1.pgdg24.04+1)
-- Dumped by pg_dump version 17.2 (Ubuntu 17.2-1.pgdg24.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: timescaledb; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS timescaledb WITH SCHEMA public;


--
-- Name: EXTENSION timescaledb; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION timescaledb IS 'Enables scalable inserts and complex queries for time-series data (Community Edition)';


--
-- Name: weekday; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.weekday AS ENUM (
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
);


ALTER TYPE public.weekday OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: carpark_availability; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carpark_availability (
    "time" timestamp with time zone NOT NULL,
    carpark_number text NOT NULL,
    lot_type text NOT NULL,
    total_lots smallint NOT NULL,
    lots_available smallint NOT NULL
);


ALTER TABLE public.carpark_availability OWNER TO postgres;

--
-- Name: _hyper_3_1000_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1000_chunk (
    CONSTRAINT constraint_1000 CHECK ((("time" >= '2020-08-06 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-08-13 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1000_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1001_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1001_chunk (
    CONSTRAINT constraint_1001 CHECK ((("time" >= '2020-08-13 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-08-20 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1001_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1002_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1002_chunk (
    CONSTRAINT constraint_1002 CHECK ((("time" >= '2020-08-20 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-08-27 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1002_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1003_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1003_chunk (
    CONSTRAINT constraint_1003 CHECK ((("time" >= '2020-08-27 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-09-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1003_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1004_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1004_chunk (
    CONSTRAINT constraint_1004 CHECK ((("time" >= '2020-09-03 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-09-10 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1004_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1005_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1005_chunk (
    CONSTRAINT constraint_1005 CHECK ((("time" >= '2020-09-10 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-09-17 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1005_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1006_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1006_chunk (
    CONSTRAINT constraint_1006 CHECK ((("time" >= '2020-09-17 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-09-24 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1006_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1007_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1007_chunk (
    CONSTRAINT constraint_1007 CHECK ((("time" >= '2020-09-24 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-10-01 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1007_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1008_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1008_chunk (
    CONSTRAINT constraint_1008 CHECK ((("time" >= '2020-10-01 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-10-08 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1008_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1009_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1009_chunk (
    CONSTRAINT constraint_1009 CHECK ((("time" >= '2020-10-08 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-10-15 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1009_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1010_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1010_chunk (
    CONSTRAINT constraint_1010 CHECK ((("time" >= '2020-10-15 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-10-22 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1010_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1011_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1011_chunk (
    CONSTRAINT constraint_1011 CHECK ((("time" >= '2020-10-22 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-10-29 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1011_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1012_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1012_chunk (
    CONSTRAINT constraint_1012 CHECK ((("time" >= '2020-10-29 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-11-05 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1012_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1013_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1013_chunk (
    CONSTRAINT constraint_1013 CHECK ((("time" >= '2020-11-05 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-11-12 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1013_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1014_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1014_chunk (
    CONSTRAINT constraint_1014 CHECK ((("time" >= '2020-11-12 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-11-19 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1014_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1015_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1015_chunk (
    CONSTRAINT constraint_1015 CHECK ((("time" >= '2020-11-19 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-11-26 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1015_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1016_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1016_chunk (
    CONSTRAINT constraint_1016 CHECK ((("time" >= '2020-11-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-12-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1016_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1017_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1017_chunk (
    CONSTRAINT constraint_1017 CHECK ((("time" >= '2020-12-03 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-12-10 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1017_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1018_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1018_chunk (
    CONSTRAINT constraint_1018 CHECK ((("time" >= '2020-12-10 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-12-17 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1018_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1019_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1019_chunk (
    CONSTRAINT constraint_1019 CHECK ((("time" >= '2020-12-17 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-12-24 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1019_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1020_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1020_chunk (
    CONSTRAINT constraint_1020 CHECK ((("time" >= '2020-12-24 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-12-31 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1020_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1021_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1021_chunk (
    CONSTRAINT constraint_1021 CHECK ((("time" >= '2020-12-31 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-01-07 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1021_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1022_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1022_chunk (
    CONSTRAINT constraint_1022 CHECK ((("time" >= '2021-01-07 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-01-14 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1022_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1023_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1023_chunk (
    CONSTRAINT constraint_1023 CHECK ((("time" >= '2021-01-14 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-01-21 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1023_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1024_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1024_chunk (
    CONSTRAINT constraint_1024 CHECK ((("time" >= '2021-01-21 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-01-28 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1024_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1025_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1025_chunk (
    CONSTRAINT constraint_1025 CHECK ((("time" >= '2021-01-28 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-02-04 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1025_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1026_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1026_chunk (
    CONSTRAINT constraint_1026 CHECK ((("time" >= '2021-02-04 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-02-11 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1026_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1027_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1027_chunk (
    CONSTRAINT constraint_1027 CHECK ((("time" >= '2021-02-11 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-02-18 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1027_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1028_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1028_chunk (
    CONSTRAINT constraint_1028 CHECK ((("time" >= '2021-02-18 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-02-25 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1028_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1029_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1029_chunk (
    CONSTRAINT constraint_1029 CHECK ((("time" >= '2021-02-25 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-03-04 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1029_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1030_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1030_chunk (
    CONSTRAINT constraint_1030 CHECK ((("time" >= '2021-03-04 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-03-11 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1030_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1031_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1031_chunk (
    CONSTRAINT constraint_1031 CHECK ((("time" >= '2021-03-11 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-03-18 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1031_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1032_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1032_chunk (
    CONSTRAINT constraint_1032 CHECK ((("time" >= '2021-03-18 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-03-25 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1032_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1033_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1033_chunk (
    CONSTRAINT constraint_1033 CHECK ((("time" >= '2021-03-25 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-04-01 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1033_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1034_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1034_chunk (
    CONSTRAINT constraint_1034 CHECK ((("time" >= '2021-04-01 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-04-08 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1034_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1035_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1035_chunk (
    CONSTRAINT constraint_1035 CHECK ((("time" >= '2021-04-08 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-04-15 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1035_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1036_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1036_chunk (
    CONSTRAINT constraint_1036 CHECK ((("time" >= '2021-04-15 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-04-22 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1036_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1037_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1037_chunk (
    CONSTRAINT constraint_1037 CHECK ((("time" >= '2021-04-22 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-04-29 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1037_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1038_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1038_chunk (
    CONSTRAINT constraint_1038 CHECK ((("time" >= '2021-04-29 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-05-06 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1038_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1039_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1039_chunk (
    CONSTRAINT constraint_1039 CHECK ((("time" >= '2021-05-06 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-05-13 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1039_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1040_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1040_chunk (
    CONSTRAINT constraint_1040 CHECK ((("time" >= '2021-05-13 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-05-20 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1040_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1041_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1041_chunk (
    CONSTRAINT constraint_1041 CHECK ((("time" >= '2021-05-20 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-05-27 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1041_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1042_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1042_chunk (
    CONSTRAINT constraint_1042 CHECK ((("time" >= '2021-05-27 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-06-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1042_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1043_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1043_chunk (
    CONSTRAINT constraint_1043 CHECK ((("time" >= '2021-06-03 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-06-10 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1043_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1044_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1044_chunk (
    CONSTRAINT constraint_1044 CHECK ((("time" >= '2021-06-10 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-06-17 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1044_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1045_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1045_chunk (
    CONSTRAINT constraint_1045 CHECK ((("time" >= '2021-06-17 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-06-24 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1045_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1046_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1046_chunk (
    CONSTRAINT constraint_1046 CHECK ((("time" >= '2021-06-24 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-07-01 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1046_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1047_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1047_chunk (
    CONSTRAINT constraint_1047 CHECK ((("time" >= '2021-07-01 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-07-08 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1047_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1048_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1048_chunk (
    CONSTRAINT constraint_1048 CHECK ((("time" >= '2021-07-08 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-07-15 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1048_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1049_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1049_chunk (
    CONSTRAINT constraint_1049 CHECK ((("time" >= '2021-07-15 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-07-22 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1049_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1050_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1050_chunk (
    CONSTRAINT constraint_1050 CHECK ((("time" >= '2021-07-22 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-07-29 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1050_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1051_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1051_chunk (
    CONSTRAINT constraint_1051 CHECK ((("time" >= '2021-07-29 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-08-05 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1051_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1052_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1052_chunk (
    CONSTRAINT constraint_1052 CHECK ((("time" >= '2021-08-05 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-08-12 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1052_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1053_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1053_chunk (
    CONSTRAINT constraint_1053 CHECK ((("time" >= '2021-08-12 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-08-19 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1053_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1054_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1054_chunk (
    CONSTRAINT constraint_1054 CHECK ((("time" >= '2021-08-19 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-08-26 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1054_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1055_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1055_chunk (
    CONSTRAINT constraint_1055 CHECK ((("time" >= '2021-08-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-09-02 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1055_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1056_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1056_chunk (
    CONSTRAINT constraint_1056 CHECK ((("time" >= '2021-09-02 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-09-09 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1056_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1057_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1057_chunk (
    CONSTRAINT constraint_1057 CHECK ((("time" >= '2021-09-09 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-09-16 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1057_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1058_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1058_chunk (
    CONSTRAINT constraint_1058 CHECK ((("time" >= '2021-09-16 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-09-23 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1058_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1059_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1059_chunk (
    CONSTRAINT constraint_1059 CHECK ((("time" >= '2021-09-23 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-09-30 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1059_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1060_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1060_chunk (
    CONSTRAINT constraint_1060 CHECK ((("time" >= '2021-09-30 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-10-07 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1060_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1061_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1061_chunk (
    CONSTRAINT constraint_1061 CHECK ((("time" >= '2021-10-07 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-10-14 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1061_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1062_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1062_chunk (
    CONSTRAINT constraint_1062 CHECK ((("time" >= '2021-10-14 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-10-21 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1062_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1063_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1063_chunk (
    CONSTRAINT constraint_1063 CHECK ((("time" >= '2021-10-21 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-10-28 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1063_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1064_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1064_chunk (
    CONSTRAINT constraint_1064 CHECK ((("time" >= '2021-10-28 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-11-04 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1064_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1065_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1065_chunk (
    CONSTRAINT constraint_1065 CHECK ((("time" >= '2021-11-04 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-11-11 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1065_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1066_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1066_chunk (
    CONSTRAINT constraint_1066 CHECK ((("time" >= '2021-11-11 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-11-18 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1066_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1067_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1067_chunk (
    CONSTRAINT constraint_1067 CHECK ((("time" >= '2021-11-18 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-11-25 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1067_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1068_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1068_chunk (
    CONSTRAINT constraint_1068 CHECK ((("time" >= '2021-11-25 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-12-02 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1068_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1069_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1069_chunk (
    CONSTRAINT constraint_1069 CHECK ((("time" >= '2021-12-02 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-12-09 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1069_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1070_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1070_chunk (
    CONSTRAINT constraint_1070 CHECK ((("time" >= '2021-12-09 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-12-16 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1070_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1071_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1071_chunk (
    CONSTRAINT constraint_1071 CHECK ((("time" >= '2021-12-16 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-12-23 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1071_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1072_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1072_chunk (
    CONSTRAINT constraint_1072 CHECK ((("time" >= '2021-12-23 00:00:00+00'::timestamp with time zone) AND ("time" < '2021-12-30 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1072_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1073_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1073_chunk (
    CONSTRAINT constraint_1073 CHECK ((("time" >= '2021-12-30 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-01-06 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1073_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1074_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1074_chunk (
    CONSTRAINT constraint_1074 CHECK ((("time" >= '2022-01-06 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-01-13 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1074_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1075_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1075_chunk (
    CONSTRAINT constraint_1075 CHECK ((("time" >= '2022-01-13 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-01-20 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1075_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1076_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1076_chunk (
    CONSTRAINT constraint_1076 CHECK ((("time" >= '2022-01-20 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-01-27 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1076_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1077_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1077_chunk (
    CONSTRAINT constraint_1077 CHECK ((("time" >= '2022-01-27 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-02-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1077_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1078_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1078_chunk (
    CONSTRAINT constraint_1078 CHECK ((("time" >= '2022-02-03 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-02-10 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1078_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1079_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1079_chunk (
    CONSTRAINT constraint_1079 CHECK ((("time" >= '2022-02-10 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-02-17 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1079_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1080_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1080_chunk (
    CONSTRAINT constraint_1080 CHECK ((("time" >= '2022-02-17 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-02-24 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1080_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1081_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1081_chunk (
    CONSTRAINT constraint_1081 CHECK ((("time" >= '2022-02-24 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-03-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1081_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1082_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1082_chunk (
    CONSTRAINT constraint_1082 CHECK ((("time" >= '2022-03-03 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-03-10 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1082_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1083_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1083_chunk (
    CONSTRAINT constraint_1083 CHECK ((("time" >= '2022-03-10 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-03-17 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1083_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1084_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1084_chunk (
    CONSTRAINT constraint_1084 CHECK ((("time" >= '2022-03-17 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-03-24 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1084_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1085_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1085_chunk (
    CONSTRAINT constraint_1085 CHECK ((("time" >= '2022-03-24 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-03-31 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1085_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1086_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1086_chunk (
    CONSTRAINT constraint_1086 CHECK ((("time" >= '2022-03-31 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-04-07 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1086_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1087_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1087_chunk (
    CONSTRAINT constraint_1087 CHECK ((("time" >= '2022-04-07 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-04-14 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1087_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1088_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1088_chunk (
    CONSTRAINT constraint_1088 CHECK ((("time" >= '2022-04-14 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-04-21 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1088_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1089_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1089_chunk (
    CONSTRAINT constraint_1089 CHECK ((("time" >= '2022-04-21 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-04-28 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1089_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1090_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1090_chunk (
    CONSTRAINT constraint_1090 CHECK ((("time" >= '2022-04-28 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-05-05 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1090_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1091_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1091_chunk (
    CONSTRAINT constraint_1091 CHECK ((("time" >= '2022-05-05 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-05-12 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1091_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1092_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1092_chunk (
    CONSTRAINT constraint_1092 CHECK ((("time" >= '2022-05-12 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-05-19 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1092_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1093_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1093_chunk (
    CONSTRAINT constraint_1093 CHECK ((("time" >= '2022-05-19 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-05-26 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1093_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1094_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1094_chunk (
    CONSTRAINT constraint_1094 CHECK ((("time" >= '2022-05-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-06-02 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1094_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1095_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1095_chunk (
    CONSTRAINT constraint_1095 CHECK ((("time" >= '2022-06-02 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-06-09 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1095_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1096_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1096_chunk (
    CONSTRAINT constraint_1096 CHECK ((("time" >= '2022-06-09 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-06-16 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1096_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1097_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1097_chunk (
    CONSTRAINT constraint_1097 CHECK ((("time" >= '2022-06-16 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-06-23 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1097_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1098_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1098_chunk (
    CONSTRAINT constraint_1098 CHECK ((("time" >= '2022-06-23 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-06-30 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1098_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1099_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1099_chunk (
    CONSTRAINT constraint_1099 CHECK ((("time" >= '2022-06-30 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-07-07 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1099_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1100_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1100_chunk (
    CONSTRAINT constraint_1100 CHECK ((("time" >= '2022-07-07 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-07-14 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1100_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1101_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1101_chunk (
    CONSTRAINT constraint_1101 CHECK ((("time" >= '2022-07-14 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-07-21 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1101_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1102_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1102_chunk (
    CONSTRAINT constraint_1102 CHECK ((("time" >= '2022-07-21 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-07-28 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1102_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1103_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1103_chunk (
    CONSTRAINT constraint_1103 CHECK ((("time" >= '2022-07-28 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-08-04 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1103_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1104_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1104_chunk (
    CONSTRAINT constraint_1104 CHECK ((("time" >= '2022-08-04 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-08-11 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1104_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1105_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1105_chunk (
    CONSTRAINT constraint_1105 CHECK ((("time" >= '2022-08-11 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-08-18 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1105_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1106_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1106_chunk (
    CONSTRAINT constraint_1106 CHECK ((("time" >= '2022-08-18 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-08-25 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1106_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1107_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1107_chunk (
    CONSTRAINT constraint_1107 CHECK ((("time" >= '2022-08-25 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-09-01 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1107_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1108_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1108_chunk (
    CONSTRAINT constraint_1108 CHECK ((("time" >= '2022-09-01 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-09-08 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1108_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1109_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1109_chunk (
    CONSTRAINT constraint_1109 CHECK ((("time" >= '2022-09-08 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-09-15 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1109_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1110_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1110_chunk (
    CONSTRAINT constraint_1110 CHECK ((("time" >= '2022-09-15 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-09-22 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1110_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1111_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1111_chunk (
    CONSTRAINT constraint_1111 CHECK ((("time" >= '2022-09-22 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-09-29 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1111_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1112_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1112_chunk (
    CONSTRAINT constraint_1112 CHECK ((("time" >= '2022-09-29 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-10-06 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1112_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1113_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1113_chunk (
    CONSTRAINT constraint_1113 CHECK ((("time" >= '2022-10-06 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-10-13 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1113_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1114_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1114_chunk (
    CONSTRAINT constraint_1114 CHECK ((("time" >= '2022-10-13 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-10-20 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1114_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1115_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1115_chunk (
    CONSTRAINT constraint_1115 CHECK ((("time" >= '2022-10-20 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-10-27 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1115_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1116_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1116_chunk (
    CONSTRAINT constraint_1116 CHECK ((("time" >= '2022-10-27 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-11-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1116_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1117_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1117_chunk (
    CONSTRAINT constraint_1117 CHECK ((("time" >= '2022-11-03 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-11-10 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1117_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1118_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1118_chunk (
    CONSTRAINT constraint_1118 CHECK ((("time" >= '2022-11-10 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-11-17 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1118_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1119_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1119_chunk (
    CONSTRAINT constraint_1119 CHECK ((("time" >= '2022-11-17 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-11-24 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1119_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1120_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1120_chunk (
    CONSTRAINT constraint_1120 CHECK ((("time" >= '2022-11-24 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-12-01 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1120_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1121_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1121_chunk (
    CONSTRAINT constraint_1121 CHECK ((("time" >= '2022-12-01 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-12-08 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1121_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1122_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1122_chunk (
    CONSTRAINT constraint_1122 CHECK ((("time" >= '2022-12-08 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-12-15 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1122_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1123_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1123_chunk (
    CONSTRAINT constraint_1123 CHECK ((("time" >= '2022-12-15 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-12-22 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1123_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1124_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1124_chunk (
    CONSTRAINT constraint_1124 CHECK ((("time" >= '2022-12-22 00:00:00+00'::timestamp with time zone) AND ("time" < '2022-12-29 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1124_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1125_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1125_chunk (
    CONSTRAINT constraint_1125 CHECK ((("time" >= '2022-12-29 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-01-05 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1125_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1126_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1126_chunk (
    CONSTRAINT constraint_1126 CHECK ((("time" >= '2023-01-05 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-01-12 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1126_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1127_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1127_chunk (
    CONSTRAINT constraint_1127 CHECK ((("time" >= '2023-01-12 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-01-19 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1127_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1128_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1128_chunk (
    CONSTRAINT constraint_1128 CHECK ((("time" >= '2023-01-19 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-01-26 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1128_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1129_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1129_chunk (
    CONSTRAINT constraint_1129 CHECK ((("time" >= '2023-01-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-02-02 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1129_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1130_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1130_chunk (
    CONSTRAINT constraint_1130 CHECK ((("time" >= '2023-02-02 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-02-09 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1130_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1131_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1131_chunk (
    CONSTRAINT constraint_1131 CHECK ((("time" >= '2023-02-09 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-02-16 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1131_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1132_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1132_chunk (
    CONSTRAINT constraint_1132 CHECK ((("time" >= '2023-02-16 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-02-23 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1132_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1133_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1133_chunk (
    CONSTRAINT constraint_1133 CHECK ((("time" >= '2023-02-23 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-03-02 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1133_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1134_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1134_chunk (
    CONSTRAINT constraint_1134 CHECK ((("time" >= '2023-03-02 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-03-09 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1134_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1135_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1135_chunk (
    CONSTRAINT constraint_1135 CHECK ((("time" >= '2023-03-09 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-03-16 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1135_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1136_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1136_chunk (
    CONSTRAINT constraint_1136 CHECK ((("time" >= '2023-03-16 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-03-23 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1136_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1137_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1137_chunk (
    CONSTRAINT constraint_1137 CHECK ((("time" >= '2023-03-23 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-03-30 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1137_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1138_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1138_chunk (
    CONSTRAINT constraint_1138 CHECK ((("time" >= '2023-03-30 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-04-06 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1138_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1139_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1139_chunk (
    CONSTRAINT constraint_1139 CHECK ((("time" >= '2023-04-06 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-04-13 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1139_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1140_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1140_chunk (
    CONSTRAINT constraint_1140 CHECK ((("time" >= '2023-04-13 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-04-20 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1140_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1141_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1141_chunk (
    CONSTRAINT constraint_1141 CHECK ((("time" >= '2023-04-20 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-04-27 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1141_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1142_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1142_chunk (
    CONSTRAINT constraint_1142 CHECK ((("time" >= '2023-04-27 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-05-04 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1142_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1143_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1143_chunk (
    CONSTRAINT constraint_1143 CHECK ((("time" >= '2023-05-04 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-05-11 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1143_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1144_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1144_chunk (
    CONSTRAINT constraint_1144 CHECK ((("time" >= '2023-05-11 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-05-18 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1144_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1145_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1145_chunk (
    CONSTRAINT constraint_1145 CHECK ((("time" >= '2023-05-18 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-05-25 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1145_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1146_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1146_chunk (
    CONSTRAINT constraint_1146 CHECK ((("time" >= '2023-05-25 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-06-01 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1146_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1147_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1147_chunk (
    CONSTRAINT constraint_1147 CHECK ((("time" >= '2023-06-01 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-06-08 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1147_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1148_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1148_chunk (
    CONSTRAINT constraint_1148 CHECK ((("time" >= '2023-06-08 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-06-15 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1148_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1149_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1149_chunk (
    CONSTRAINT constraint_1149 CHECK ((("time" >= '2023-06-15 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-06-22 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1149_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1150_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1150_chunk (
    CONSTRAINT constraint_1150 CHECK ((("time" >= '2023-06-22 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-06-29 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1150_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1151_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1151_chunk (
    CONSTRAINT constraint_1151 CHECK ((("time" >= '2023-06-29 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-07-06 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1151_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1152_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1152_chunk (
    CONSTRAINT constraint_1152 CHECK ((("time" >= '2023-07-06 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-07-13 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1152_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1153_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1153_chunk (
    CONSTRAINT constraint_1153 CHECK ((("time" >= '2023-07-13 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-07-20 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1153_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1154_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1154_chunk (
    CONSTRAINT constraint_1154 CHECK ((("time" >= '2023-07-20 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-07-27 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1154_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1155_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1155_chunk (
    CONSTRAINT constraint_1155 CHECK ((("time" >= '2023-07-27 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-08-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1155_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1156_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1156_chunk (
    CONSTRAINT constraint_1156 CHECK ((("time" >= '2023-08-03 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-08-10 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1156_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1157_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1157_chunk (
    CONSTRAINT constraint_1157 CHECK ((("time" >= '2023-08-10 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-08-17 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1157_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1158_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1158_chunk (
    CONSTRAINT constraint_1158 CHECK ((("time" >= '2023-08-17 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-08-24 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1158_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1159_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1159_chunk (
    CONSTRAINT constraint_1159 CHECK ((("time" >= '2023-08-24 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-08-31 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1159_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1160_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1160_chunk (
    CONSTRAINT constraint_1160 CHECK ((("time" >= '2023-08-31 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-09-07 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1160_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1161_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1161_chunk (
    CONSTRAINT constraint_1161 CHECK ((("time" >= '2023-09-07 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-09-14 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1161_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1162_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1162_chunk (
    CONSTRAINT constraint_1162 CHECK ((("time" >= '2023-09-14 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-09-21 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1162_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1163_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1163_chunk (
    CONSTRAINT constraint_1163 CHECK ((("time" >= '2023-09-21 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-09-28 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1163_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1164_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1164_chunk (
    CONSTRAINT constraint_1164 CHECK ((("time" >= '2023-09-28 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-10-05 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1164_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1165_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1165_chunk (
    CONSTRAINT constraint_1165 CHECK ((("time" >= '2023-10-05 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-10-12 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1165_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1166_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1166_chunk (
    CONSTRAINT constraint_1166 CHECK ((("time" >= '2023-10-12 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-10-19 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1166_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1167_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1167_chunk (
    CONSTRAINT constraint_1167 CHECK ((("time" >= '2023-10-19 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-10-26 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1167_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1168_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1168_chunk (
    CONSTRAINT constraint_1168 CHECK ((("time" >= '2023-10-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-11-02 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1168_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1169_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1169_chunk (
    CONSTRAINT constraint_1169 CHECK ((("time" >= '2023-11-02 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-11-09 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1169_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1170_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1170_chunk (
    CONSTRAINT constraint_1170 CHECK ((("time" >= '2023-11-09 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-11-16 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1170_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1171_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1171_chunk (
    CONSTRAINT constraint_1171 CHECK ((("time" >= '2023-11-16 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-11-23 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1171_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1172_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1172_chunk (
    CONSTRAINT constraint_1172 CHECK ((("time" >= '2023-11-23 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-11-30 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1172_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1173_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1173_chunk (
    CONSTRAINT constraint_1173 CHECK ((("time" >= '2023-11-30 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-12-07 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1173_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1174_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1174_chunk (
    CONSTRAINT constraint_1174 CHECK ((("time" >= '2023-12-07 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-12-14 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1174_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1175_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1175_chunk (
    CONSTRAINT constraint_1175 CHECK ((("time" >= '2023-12-14 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-12-21 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1175_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1176_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1176_chunk (
    CONSTRAINT constraint_1176 CHECK ((("time" >= '2023-12-21 00:00:00+00'::timestamp with time zone) AND ("time" < '2023-12-28 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1176_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1177_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1177_chunk (
    CONSTRAINT constraint_1177 CHECK ((("time" >= '2023-12-28 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-01-04 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1177_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1178_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1178_chunk (
    CONSTRAINT constraint_1178 CHECK ((("time" >= '2024-01-04 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-01-11 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1178_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1179_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1179_chunk (
    CONSTRAINT constraint_1179 CHECK ((("time" >= '2024-01-11 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-01-18 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1179_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1180_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1180_chunk (
    CONSTRAINT constraint_1180 CHECK ((("time" >= '2024-01-18 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-01-25 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1180_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1181_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1181_chunk (
    CONSTRAINT constraint_1181 CHECK ((("time" >= '2024-01-25 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-02-01 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1181_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1182_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1182_chunk (
    CONSTRAINT constraint_1182 CHECK ((("time" >= '2024-02-01 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-02-08 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1182_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1183_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1183_chunk (
    CONSTRAINT constraint_1183 CHECK ((("time" >= '2024-02-08 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-02-15 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1183_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1184_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1184_chunk (
    CONSTRAINT constraint_1184 CHECK ((("time" >= '2024-02-15 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-02-22 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1184_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1185_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1185_chunk (
    CONSTRAINT constraint_1185 CHECK ((("time" >= '2024-02-22 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-02-29 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1185_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1186_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1186_chunk (
    CONSTRAINT constraint_1186 CHECK ((("time" >= '2024-02-29 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-03-07 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1186_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1187_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1187_chunk (
    CONSTRAINT constraint_1187 CHECK ((("time" >= '2024-03-07 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-03-14 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1187_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1188_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1188_chunk (
    CONSTRAINT constraint_1188 CHECK ((("time" >= '2024-03-14 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-03-21 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1188_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1189_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1189_chunk (
    CONSTRAINT constraint_1189 CHECK ((("time" >= '2024-03-21 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-03-28 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1189_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1190_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1190_chunk (
    CONSTRAINT constraint_1190 CHECK ((("time" >= '2024-03-28 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-04-04 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1190_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1191_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1191_chunk (
    CONSTRAINT constraint_1191 CHECK ((("time" >= '2024-04-04 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-04-11 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1191_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1192_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1192_chunk (
    CONSTRAINT constraint_1192 CHECK ((("time" >= '2024-04-11 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-04-18 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1192_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1193_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1193_chunk (
    CONSTRAINT constraint_1193 CHECK ((("time" >= '2024-04-18 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-04-25 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1193_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1194_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1194_chunk (
    CONSTRAINT constraint_1194 CHECK ((("time" >= '2024-04-25 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-05-02 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1194_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1195_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1195_chunk (
    CONSTRAINT constraint_1195 CHECK ((("time" >= '2024-05-02 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-05-09 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1195_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1196_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1196_chunk (
    CONSTRAINT constraint_1196 CHECK ((("time" >= '2024-05-09 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-05-16 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1196_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1197_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1197_chunk (
    CONSTRAINT constraint_1197 CHECK ((("time" >= '2024-05-16 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-05-23 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1197_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1198_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1198_chunk (
    CONSTRAINT constraint_1198 CHECK ((("time" >= '2024-05-23 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-05-30 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1198_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1199_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1199_chunk (
    CONSTRAINT constraint_1199 CHECK ((("time" >= '2024-05-30 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-06-06 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1199_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1200_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1200_chunk (
    CONSTRAINT constraint_1200 CHECK ((("time" >= '2024-06-06 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-06-13 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1200_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1201_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1201_chunk (
    CONSTRAINT constraint_1201 CHECK ((("time" >= '2024-06-13 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-06-20 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1201_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1202_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1202_chunk (
    CONSTRAINT constraint_1202 CHECK ((("time" >= '2024-06-20 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-06-27 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1202_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1203_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1203_chunk (
    CONSTRAINT constraint_1203 CHECK ((("time" >= '2024-06-27 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-07-04 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1203_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1204_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1204_chunk (
    CONSTRAINT constraint_1204 CHECK ((("time" >= '2024-07-04 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-07-11 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1204_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1205_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1205_chunk (
    CONSTRAINT constraint_1205 CHECK ((("time" >= '2024-07-11 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-07-18 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1205_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1206_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1206_chunk (
    CONSTRAINT constraint_1206 CHECK ((("time" >= '2024-07-18 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-07-25 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1206_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1207_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1207_chunk (
    CONSTRAINT constraint_1207 CHECK ((("time" >= '2024-07-25 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-08-01 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1207_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1208_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1208_chunk (
    CONSTRAINT constraint_1208 CHECK ((("time" >= '2024-08-01 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-08-08 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1208_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1209_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1209_chunk (
    CONSTRAINT constraint_1209 CHECK ((("time" >= '2024-08-08 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-08-15 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1209_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1210_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1210_chunk (
    CONSTRAINT constraint_1210 CHECK ((("time" >= '2024-08-15 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-08-22 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1210_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1211_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1211_chunk (
    CONSTRAINT constraint_1211 CHECK ((("time" >= '2024-08-22 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-08-29 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1211_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1212_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1212_chunk (
    CONSTRAINT constraint_1212 CHECK ((("time" >= '2024-08-29 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-09-05 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1212_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1213_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1213_chunk (
    CONSTRAINT constraint_1213 CHECK ((("time" >= '2024-09-05 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-09-12 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1213_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1214_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1214_chunk (
    CONSTRAINT constraint_1214 CHECK ((("time" >= '2024-09-12 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-09-19 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1214_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1215_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1215_chunk (
    CONSTRAINT constraint_1215 CHECK ((("time" >= '2024-09-19 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-09-26 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1215_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1216_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1216_chunk (
    CONSTRAINT constraint_1216 CHECK ((("time" >= '2024-09-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-10-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1216_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1217_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1217_chunk (
    CONSTRAINT constraint_1217 CHECK ((("time" >= '2024-10-03 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-10-10 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1217_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1218_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1218_chunk (
    CONSTRAINT constraint_1218 CHECK ((("time" >= '2024-10-10 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-10-17 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1218_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1219_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1219_chunk (
    CONSTRAINT constraint_1219 CHECK ((("time" >= '2024-10-17 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-10-24 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1219_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1220_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1220_chunk (
    CONSTRAINT constraint_1220 CHECK ((("time" >= '2024-10-24 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-10-31 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1220_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1221_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1221_chunk (
    CONSTRAINT constraint_1221 CHECK ((("time" >= '2024-10-31 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-11-07 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1221_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1222_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1222_chunk (
    CONSTRAINT constraint_1222 CHECK ((("time" >= '2024-11-07 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-11-14 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1222_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1223_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1223_chunk (
    CONSTRAINT constraint_1223 CHECK ((("time" >= '2024-11-14 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-11-21 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1223_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1224_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1224_chunk (
    CONSTRAINT constraint_1224 CHECK ((("time" >= '2024-11-21 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-11-28 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1224_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1225_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1225_chunk (
    CONSTRAINT constraint_1225 CHECK ((("time" >= '2024-11-28 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-12-05 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1225_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1226_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1226_chunk (
    CONSTRAINT constraint_1226 CHECK ((("time" >= '2024-12-05 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-12-12 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1226_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1227_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1227_chunk (
    CONSTRAINT constraint_1227 CHECK ((("time" >= '2024-12-12 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-12-19 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1227_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1228_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1228_chunk (
    CONSTRAINT constraint_1228 CHECK ((("time" >= '2024-12-19 00:00:00+00'::timestamp with time zone) AND ("time" < '2024-12-26 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1228_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1229_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1229_chunk (
    CONSTRAINT constraint_1229 CHECK ((("time" >= '2025-01-02 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-01-09 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1229_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1230_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1230_chunk (
    CONSTRAINT constraint_1230 CHECK ((("time" >= '2016-02-04 00:00:00+00'::timestamp with time zone) AND ("time" < '2016-02-11 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1230_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1231_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1231_chunk (
    CONSTRAINT constraint_1231 CHECK ((("time" >= '2015-08-13 00:00:00+00'::timestamp with time zone) AND ("time" < '2015-08-20 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1231_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1232_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1232_chunk (
    CONSTRAINT constraint_1232 CHECK ((("time" >= '2016-03-03 00:00:00+00'::timestamp with time zone) AND ("time" < '2016-03-10 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1232_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1233_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1233_chunk (
    CONSTRAINT constraint_1233 CHECK ((("time" >= '2015-02-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2015-03-05 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1233_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1234_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1234_chunk (
    CONSTRAINT constraint_1234 CHECK ((("time" >= '2016-05-12 00:00:00+00'::timestamp with time zone) AND ("time" < '2016-05-19 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1234_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1235_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1235_chunk (
    CONSTRAINT constraint_1235 CHECK ((("time" >= '2016-02-25 00:00:00+00'::timestamp with time zone) AND ("time" < '2016-03-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1235_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1236_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1236_chunk (
    CONSTRAINT constraint_1236 CHECK ((("time" >= '2017-02-02 00:00:00+00'::timestamp with time zone) AND ("time" < '2017-02-09 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1236_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1237_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1237_chunk (
    CONSTRAINT constraint_1237 CHECK ((("time" >= '2017-07-27 00:00:00+00'::timestamp with time zone) AND ("time" < '2017-08-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1237_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1238_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1238_chunk (
    CONSTRAINT constraint_1238 CHECK ((("time" >= '2017-06-01 00:00:00+00'::timestamp with time zone) AND ("time" < '2017-06-08 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1238_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1239_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1239_chunk (
    CONSTRAINT constraint_1239 CHECK ((("time" >= '2016-04-14 00:00:00+00'::timestamp with time zone) AND ("time" < '2016-04-21 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1239_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1240_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1240_chunk (
    CONSTRAINT constraint_1240 CHECK ((("time" >= '2015-12-24 00:00:00+00'::timestamp with time zone) AND ("time" < '2015-12-31 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1240_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1241_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1241_chunk (
    CONSTRAINT constraint_1241 CHECK ((("time" >= '2016-02-11 00:00:00+00'::timestamp with time zone) AND ("time" < '2016-02-18 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1241_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1242_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1242_chunk (
    CONSTRAINT constraint_1242 CHECK ((("time" >= '2017-03-30 00:00:00+00'::timestamp with time zone) AND ("time" < '2017-04-06 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1242_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1243_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1243_chunk (
    CONSTRAINT constraint_1243 CHECK ((("time" >= '2015-10-22 00:00:00+00'::timestamp with time zone) AND ("time" < '2015-10-29 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1243_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1244_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1244_chunk (
    CONSTRAINT constraint_1244 CHECK ((("time" >= '2016-04-21 00:00:00+00'::timestamp with time zone) AND ("time" < '2016-04-28 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1244_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1245_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1245_chunk (
    CONSTRAINT constraint_1245 CHECK ((("time" >= '2016-12-22 00:00:00+00'::timestamp with time zone) AND ("time" < '2016-12-29 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1245_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1246_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1246_chunk (
    CONSTRAINT constraint_1246 CHECK ((("time" >= '2016-10-13 00:00:00+00'::timestamp with time zone) AND ("time" < '2016-10-20 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1246_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1247_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1247_chunk (
    CONSTRAINT constraint_1247 CHECK ((("time" >= '2016-02-18 00:00:00+00'::timestamp with time zone) AND ("time" < '2016-02-25 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1247_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1248_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1248_chunk (
    CONSTRAINT constraint_1248 CHECK ((("time" >= '2014-03-20 00:00:00+00'::timestamp with time zone) AND ("time" < '2014-03-27 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1248_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1249_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1249_chunk (
    CONSTRAINT constraint_1249 CHECK ((("time" >= '2017-11-30 00:00:00+00'::timestamp with time zone) AND ("time" < '2017-12-07 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1249_chunk OWNER TO postgres;

--
-- Name: _hyper_3_1250_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_1250_chunk (
    CONSTRAINT constraint_1250 CHECK ((("time" >= '2016-06-02 00:00:00+00'::timestamp with time zone) AND ("time" < '2016-06-09 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_1250_chunk OWNER TO postgres;

--
-- Name: _hyper_3_864_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_864_chunk (
    CONSTRAINT constraint_864 CHECK ((("time" >= '2017-12-28 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-01-04 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_864_chunk OWNER TO postgres;

--
-- Name: _hyper_3_865_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_865_chunk (
    CONSTRAINT constraint_865 CHECK ((("time" >= '2018-01-04 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-01-11 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_865_chunk OWNER TO postgres;

--
-- Name: _hyper_3_866_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_866_chunk (
    CONSTRAINT constraint_866 CHECK ((("time" >= '2018-01-11 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-01-18 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_866_chunk OWNER TO postgres;

--
-- Name: _hyper_3_867_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_867_chunk (
    CONSTRAINT constraint_867 CHECK ((("time" >= '2018-01-18 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-01-25 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_867_chunk OWNER TO postgres;

--
-- Name: _hyper_3_868_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_868_chunk (
    CONSTRAINT constraint_868 CHECK ((("time" >= '2018-01-25 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-02-01 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_868_chunk OWNER TO postgres;

--
-- Name: _hyper_3_869_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_869_chunk (
    CONSTRAINT constraint_869 CHECK ((("time" >= '2018-02-01 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-02-08 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_869_chunk OWNER TO postgres;

--
-- Name: _hyper_3_870_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_870_chunk (
    CONSTRAINT constraint_870 CHECK ((("time" >= '2018-02-08 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-02-15 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_870_chunk OWNER TO postgres;

--
-- Name: _hyper_3_871_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_871_chunk (
    CONSTRAINT constraint_871 CHECK ((("time" >= '2018-02-15 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-02-22 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_871_chunk OWNER TO postgres;

--
-- Name: _hyper_3_872_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_872_chunk (
    CONSTRAINT constraint_872 CHECK ((("time" >= '2018-02-22 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-03-01 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_872_chunk OWNER TO postgres;

--
-- Name: _hyper_3_873_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_873_chunk (
    CONSTRAINT constraint_873 CHECK ((("time" >= '2018-03-01 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-03-08 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_873_chunk OWNER TO postgres;

--
-- Name: _hyper_3_874_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_874_chunk (
    CONSTRAINT constraint_874 CHECK ((("time" >= '2018-03-08 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-03-15 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_874_chunk OWNER TO postgres;

--
-- Name: _hyper_3_875_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_875_chunk (
    CONSTRAINT constraint_875 CHECK ((("time" >= '2018-03-15 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-03-22 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_875_chunk OWNER TO postgres;

--
-- Name: _hyper_3_876_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_876_chunk (
    CONSTRAINT constraint_876 CHECK ((("time" >= '2018-03-22 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-03-29 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_876_chunk OWNER TO postgres;

--
-- Name: _hyper_3_877_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_877_chunk (
    CONSTRAINT constraint_877 CHECK ((("time" >= '2018-03-29 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-04-05 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_877_chunk OWNER TO postgres;

--
-- Name: _hyper_3_878_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_878_chunk (
    CONSTRAINT constraint_878 CHECK ((("time" >= '2018-04-05 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-04-12 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_878_chunk OWNER TO postgres;

--
-- Name: _hyper_3_879_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_879_chunk (
    CONSTRAINT constraint_879 CHECK ((("time" >= '2018-04-12 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-04-19 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_879_chunk OWNER TO postgres;

--
-- Name: _hyper_3_880_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_880_chunk (
    CONSTRAINT constraint_880 CHECK ((("time" >= '2018-04-19 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-04-26 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_880_chunk OWNER TO postgres;

--
-- Name: _hyper_3_881_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_881_chunk (
    CONSTRAINT constraint_881 CHECK ((("time" >= '2018-04-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-05-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_881_chunk OWNER TO postgres;

--
-- Name: _hyper_3_882_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_882_chunk (
    CONSTRAINT constraint_882 CHECK ((("time" >= '2018-05-03 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-05-10 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_882_chunk OWNER TO postgres;

--
-- Name: _hyper_3_883_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_883_chunk (
    CONSTRAINT constraint_883 CHECK ((("time" >= '2018-05-10 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-05-17 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_883_chunk OWNER TO postgres;

--
-- Name: _hyper_3_884_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_884_chunk (
    CONSTRAINT constraint_884 CHECK ((("time" >= '2018-05-17 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-05-24 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_884_chunk OWNER TO postgres;

--
-- Name: _hyper_3_885_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_885_chunk (
    CONSTRAINT constraint_885 CHECK ((("time" >= '2018-05-24 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-05-31 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_885_chunk OWNER TO postgres;

--
-- Name: _hyper_3_886_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_886_chunk (
    CONSTRAINT constraint_886 CHECK ((("time" >= '2018-05-31 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-06-07 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_886_chunk OWNER TO postgres;

--
-- Name: _hyper_3_887_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_887_chunk (
    CONSTRAINT constraint_887 CHECK ((("time" >= '2018-06-07 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-06-14 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_887_chunk OWNER TO postgres;

--
-- Name: _hyper_3_888_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_888_chunk (
    CONSTRAINT constraint_888 CHECK ((("time" >= '2018-06-14 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-06-21 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_888_chunk OWNER TO postgres;

--
-- Name: _hyper_3_889_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_889_chunk (
    CONSTRAINT constraint_889 CHECK ((("time" >= '2018-06-21 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-06-28 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_889_chunk OWNER TO postgres;

--
-- Name: _hyper_3_890_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_890_chunk (
    CONSTRAINT constraint_890 CHECK ((("time" >= '2018-06-28 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-07-05 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_890_chunk OWNER TO postgres;

--
-- Name: _hyper_3_891_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_891_chunk (
    CONSTRAINT constraint_891 CHECK ((("time" >= '2018-07-05 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-07-12 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_891_chunk OWNER TO postgres;

--
-- Name: _hyper_3_892_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_892_chunk (
    CONSTRAINT constraint_892 CHECK ((("time" >= '2018-07-12 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-07-19 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_892_chunk OWNER TO postgres;

--
-- Name: _hyper_3_893_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_893_chunk (
    CONSTRAINT constraint_893 CHECK ((("time" >= '2018-07-19 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-07-26 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_893_chunk OWNER TO postgres;

--
-- Name: _hyper_3_894_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_894_chunk (
    CONSTRAINT constraint_894 CHECK ((("time" >= '2018-07-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-08-02 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_894_chunk OWNER TO postgres;

--
-- Name: _hyper_3_895_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_895_chunk (
    CONSTRAINT constraint_895 CHECK ((("time" >= '2018-08-02 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-08-09 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_895_chunk OWNER TO postgres;

--
-- Name: _hyper_3_896_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_896_chunk (
    CONSTRAINT constraint_896 CHECK ((("time" >= '2018-08-09 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-08-16 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_896_chunk OWNER TO postgres;

--
-- Name: _hyper_3_897_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_897_chunk (
    CONSTRAINT constraint_897 CHECK ((("time" >= '2018-08-16 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-08-23 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_897_chunk OWNER TO postgres;

--
-- Name: _hyper_3_898_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_898_chunk (
    CONSTRAINT constraint_898 CHECK ((("time" >= '2018-08-23 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-08-30 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_898_chunk OWNER TO postgres;

--
-- Name: _hyper_3_899_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_899_chunk (
    CONSTRAINT constraint_899 CHECK ((("time" >= '2018-08-30 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-09-06 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_899_chunk OWNER TO postgres;

--
-- Name: _hyper_3_900_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_900_chunk (
    CONSTRAINT constraint_900 CHECK ((("time" >= '2018-09-06 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-09-13 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_900_chunk OWNER TO postgres;

--
-- Name: _hyper_3_901_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_901_chunk (
    CONSTRAINT constraint_901 CHECK ((("time" >= '2018-09-13 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-09-20 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_901_chunk OWNER TO postgres;

--
-- Name: _hyper_3_902_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_902_chunk (
    CONSTRAINT constraint_902 CHECK ((("time" >= '2018-09-20 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-09-27 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_902_chunk OWNER TO postgres;

--
-- Name: _hyper_3_903_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_903_chunk (
    CONSTRAINT constraint_903 CHECK ((("time" >= '2018-09-27 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-10-04 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_903_chunk OWNER TO postgres;

--
-- Name: _hyper_3_904_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_904_chunk (
    CONSTRAINT constraint_904 CHECK ((("time" >= '2018-10-04 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-10-11 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_904_chunk OWNER TO postgres;

--
-- Name: _hyper_3_905_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_905_chunk (
    CONSTRAINT constraint_905 CHECK ((("time" >= '2018-10-11 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-10-18 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_905_chunk OWNER TO postgres;

--
-- Name: _hyper_3_906_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_906_chunk (
    CONSTRAINT constraint_906 CHECK ((("time" >= '2018-10-18 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-10-25 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_906_chunk OWNER TO postgres;

--
-- Name: _hyper_3_907_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_907_chunk (
    CONSTRAINT constraint_907 CHECK ((("time" >= '2018-10-25 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-11-01 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_907_chunk OWNER TO postgres;

--
-- Name: _hyper_3_908_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_908_chunk (
    CONSTRAINT constraint_908 CHECK ((("time" >= '2018-11-01 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-11-08 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_908_chunk OWNER TO postgres;

--
-- Name: _hyper_3_909_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_909_chunk (
    CONSTRAINT constraint_909 CHECK ((("time" >= '2018-11-08 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-11-15 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_909_chunk OWNER TO postgres;

--
-- Name: _hyper_3_910_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_910_chunk (
    CONSTRAINT constraint_910 CHECK ((("time" >= '2018-11-15 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-11-22 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_910_chunk OWNER TO postgres;

--
-- Name: _hyper_3_911_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_911_chunk (
    CONSTRAINT constraint_911 CHECK ((("time" >= '2018-11-22 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-11-29 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_911_chunk OWNER TO postgres;

--
-- Name: _hyper_3_912_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_912_chunk (
    CONSTRAINT constraint_912 CHECK ((("time" >= '2018-11-29 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-12-06 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_912_chunk OWNER TO postgres;

--
-- Name: _hyper_3_913_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_913_chunk (
    CONSTRAINT constraint_913 CHECK ((("time" >= '2018-12-06 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-12-13 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_913_chunk OWNER TO postgres;

--
-- Name: _hyper_3_914_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_914_chunk (
    CONSTRAINT constraint_914 CHECK ((("time" >= '2018-12-13 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-12-20 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_914_chunk OWNER TO postgres;

--
-- Name: _hyper_3_915_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_915_chunk (
    CONSTRAINT constraint_915 CHECK ((("time" >= '2018-12-20 00:00:00+00'::timestamp with time zone) AND ("time" < '2018-12-27 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_915_chunk OWNER TO postgres;

--
-- Name: _hyper_3_916_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_916_chunk (
    CONSTRAINT constraint_916 CHECK ((("time" >= '2018-12-27 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-01-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_916_chunk OWNER TO postgres;

--
-- Name: _hyper_3_917_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_917_chunk (
    CONSTRAINT constraint_917 CHECK ((("time" >= '2019-01-03 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-01-10 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_917_chunk OWNER TO postgres;

--
-- Name: _hyper_3_918_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_918_chunk (
    CONSTRAINT constraint_918 CHECK ((("time" >= '2019-01-10 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-01-17 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_918_chunk OWNER TO postgres;

--
-- Name: _hyper_3_919_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_919_chunk (
    CONSTRAINT constraint_919 CHECK ((("time" >= '2019-01-17 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-01-24 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_919_chunk OWNER TO postgres;

--
-- Name: _hyper_3_920_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_920_chunk (
    CONSTRAINT constraint_920 CHECK ((("time" >= '2019-01-24 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-01-31 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_920_chunk OWNER TO postgres;

--
-- Name: _hyper_3_921_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_921_chunk (
    CONSTRAINT constraint_921 CHECK ((("time" >= '2019-01-31 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-02-07 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_921_chunk OWNER TO postgres;

--
-- Name: _hyper_3_922_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_922_chunk (
    CONSTRAINT constraint_922 CHECK ((("time" >= '2019-02-07 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-02-14 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_922_chunk OWNER TO postgres;

--
-- Name: _hyper_3_923_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_923_chunk (
    CONSTRAINT constraint_923 CHECK ((("time" >= '2019-02-14 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-02-21 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_923_chunk OWNER TO postgres;

--
-- Name: _hyper_3_924_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_924_chunk (
    CONSTRAINT constraint_924 CHECK ((("time" >= '2019-02-21 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-02-28 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_924_chunk OWNER TO postgres;

--
-- Name: _hyper_3_925_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_925_chunk (
    CONSTRAINT constraint_925 CHECK ((("time" >= '2019-02-28 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-03-07 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_925_chunk OWNER TO postgres;

--
-- Name: _hyper_3_926_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_926_chunk (
    CONSTRAINT constraint_926 CHECK ((("time" >= '2019-03-07 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-03-14 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_926_chunk OWNER TO postgres;

--
-- Name: _hyper_3_927_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_927_chunk (
    CONSTRAINT constraint_927 CHECK ((("time" >= '2019-03-14 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-03-21 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_927_chunk OWNER TO postgres;

--
-- Name: _hyper_3_928_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_928_chunk (
    CONSTRAINT constraint_928 CHECK ((("time" >= '2019-03-21 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-03-28 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_928_chunk OWNER TO postgres;

--
-- Name: _hyper_3_929_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_929_chunk (
    CONSTRAINT constraint_929 CHECK ((("time" >= '2019-03-28 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-04-04 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_929_chunk OWNER TO postgres;

--
-- Name: _hyper_3_930_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_930_chunk (
    CONSTRAINT constraint_930 CHECK ((("time" >= '2019-04-04 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-04-11 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_930_chunk OWNER TO postgres;

--
-- Name: _hyper_3_931_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_931_chunk (
    CONSTRAINT constraint_931 CHECK ((("time" >= '2019-04-11 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-04-18 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_931_chunk OWNER TO postgres;

--
-- Name: _hyper_3_932_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_932_chunk (
    CONSTRAINT constraint_932 CHECK ((("time" >= '2019-04-18 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-04-25 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_932_chunk OWNER TO postgres;

--
-- Name: _hyper_3_933_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_933_chunk (
    CONSTRAINT constraint_933 CHECK ((("time" >= '2019-04-25 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-05-02 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_933_chunk OWNER TO postgres;

--
-- Name: _hyper_3_934_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_934_chunk (
    CONSTRAINT constraint_934 CHECK ((("time" >= '2019-05-02 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-05-09 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_934_chunk OWNER TO postgres;

--
-- Name: _hyper_3_935_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_935_chunk (
    CONSTRAINT constraint_935 CHECK ((("time" >= '2019-05-09 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-05-16 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_935_chunk OWNER TO postgres;

--
-- Name: _hyper_3_936_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_936_chunk (
    CONSTRAINT constraint_936 CHECK ((("time" >= '2019-05-16 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-05-23 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_936_chunk OWNER TO postgres;

--
-- Name: _hyper_3_937_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_937_chunk (
    CONSTRAINT constraint_937 CHECK ((("time" >= '2019-05-23 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-05-30 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_937_chunk OWNER TO postgres;

--
-- Name: _hyper_3_938_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_938_chunk (
    CONSTRAINT constraint_938 CHECK ((("time" >= '2019-05-30 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-06-06 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_938_chunk OWNER TO postgres;

--
-- Name: _hyper_3_939_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_939_chunk (
    CONSTRAINT constraint_939 CHECK ((("time" >= '2019-06-06 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-06-13 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_939_chunk OWNER TO postgres;

--
-- Name: _hyper_3_940_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_940_chunk (
    CONSTRAINT constraint_940 CHECK ((("time" >= '2019-06-13 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-06-20 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_940_chunk OWNER TO postgres;

--
-- Name: _hyper_3_941_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_941_chunk (
    CONSTRAINT constraint_941 CHECK ((("time" >= '2019-06-20 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-06-27 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_941_chunk OWNER TO postgres;

--
-- Name: _hyper_3_942_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_942_chunk (
    CONSTRAINT constraint_942 CHECK ((("time" >= '2019-06-27 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-07-04 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_942_chunk OWNER TO postgres;

--
-- Name: _hyper_3_943_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_943_chunk (
    CONSTRAINT constraint_943 CHECK ((("time" >= '2019-07-04 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-07-11 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_943_chunk OWNER TO postgres;

--
-- Name: _hyper_3_944_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_944_chunk (
    CONSTRAINT constraint_944 CHECK ((("time" >= '2019-07-11 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-07-18 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_944_chunk OWNER TO postgres;

--
-- Name: _hyper_3_945_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_945_chunk (
    CONSTRAINT constraint_945 CHECK ((("time" >= '2019-07-18 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-07-25 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_945_chunk OWNER TO postgres;

--
-- Name: _hyper_3_946_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_946_chunk (
    CONSTRAINT constraint_946 CHECK ((("time" >= '2019-07-25 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-08-01 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_946_chunk OWNER TO postgres;

--
-- Name: _hyper_3_947_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_947_chunk (
    CONSTRAINT constraint_947 CHECK ((("time" >= '2019-08-01 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-08-08 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_947_chunk OWNER TO postgres;

--
-- Name: _hyper_3_948_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_948_chunk (
    CONSTRAINT constraint_948 CHECK ((("time" >= '2019-08-08 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-08-15 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_948_chunk OWNER TO postgres;

--
-- Name: _hyper_3_949_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_949_chunk (
    CONSTRAINT constraint_949 CHECK ((("time" >= '2019-08-15 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-08-22 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_949_chunk OWNER TO postgres;

--
-- Name: _hyper_3_950_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_950_chunk (
    CONSTRAINT constraint_950 CHECK ((("time" >= '2019-08-22 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-08-29 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_950_chunk OWNER TO postgres;

--
-- Name: _hyper_3_951_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_951_chunk (
    CONSTRAINT constraint_951 CHECK ((("time" >= '2019-08-29 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-09-05 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_951_chunk OWNER TO postgres;

--
-- Name: _hyper_3_952_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_952_chunk (
    CONSTRAINT constraint_952 CHECK ((("time" >= '2019-09-05 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-09-12 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_952_chunk OWNER TO postgres;

--
-- Name: _hyper_3_953_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_953_chunk (
    CONSTRAINT constraint_953 CHECK ((("time" >= '2019-09-12 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-09-19 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_953_chunk OWNER TO postgres;

--
-- Name: _hyper_3_954_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_954_chunk (
    CONSTRAINT constraint_954 CHECK ((("time" >= '2019-09-19 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-09-26 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_954_chunk OWNER TO postgres;

--
-- Name: _hyper_3_955_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_955_chunk (
    CONSTRAINT constraint_955 CHECK ((("time" >= '2019-09-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-10-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_955_chunk OWNER TO postgres;

--
-- Name: _hyper_3_956_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_956_chunk (
    CONSTRAINT constraint_956 CHECK ((("time" >= '2019-10-03 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-10-10 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_956_chunk OWNER TO postgres;

--
-- Name: _hyper_3_957_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_957_chunk (
    CONSTRAINT constraint_957 CHECK ((("time" >= '2019-10-10 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-10-17 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_957_chunk OWNER TO postgres;

--
-- Name: _hyper_3_958_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_958_chunk (
    CONSTRAINT constraint_958 CHECK ((("time" >= '2019-10-17 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-10-24 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_958_chunk OWNER TO postgres;

--
-- Name: _hyper_3_959_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_959_chunk (
    CONSTRAINT constraint_959 CHECK ((("time" >= '2019-10-24 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-10-31 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_959_chunk OWNER TO postgres;

--
-- Name: _hyper_3_960_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_960_chunk (
    CONSTRAINT constraint_960 CHECK ((("time" >= '2019-10-31 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-11-07 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_960_chunk OWNER TO postgres;

--
-- Name: _hyper_3_961_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_961_chunk (
    CONSTRAINT constraint_961 CHECK ((("time" >= '2019-11-07 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-11-14 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_961_chunk OWNER TO postgres;

--
-- Name: _hyper_3_962_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_962_chunk (
    CONSTRAINT constraint_962 CHECK ((("time" >= '2019-11-14 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-11-21 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_962_chunk OWNER TO postgres;

--
-- Name: _hyper_3_963_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_963_chunk (
    CONSTRAINT constraint_963 CHECK ((("time" >= '2019-11-21 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-11-28 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_963_chunk OWNER TO postgres;

--
-- Name: _hyper_3_964_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_964_chunk (
    CONSTRAINT constraint_964 CHECK ((("time" >= '2019-11-28 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-12-05 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_964_chunk OWNER TO postgres;

--
-- Name: _hyper_3_965_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_965_chunk (
    CONSTRAINT constraint_965 CHECK ((("time" >= '2019-12-05 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-12-12 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_965_chunk OWNER TO postgres;

--
-- Name: _hyper_3_966_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_966_chunk (
    CONSTRAINT constraint_966 CHECK ((("time" >= '2019-12-12 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-12-19 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_966_chunk OWNER TO postgres;

--
-- Name: _hyper_3_967_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_967_chunk (
    CONSTRAINT constraint_967 CHECK ((("time" >= '2019-12-19 00:00:00+00'::timestamp with time zone) AND ("time" < '2019-12-26 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_967_chunk OWNER TO postgres;

--
-- Name: _hyper_3_968_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_968_chunk (
    CONSTRAINT constraint_968 CHECK ((("time" >= '2019-12-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-01-02 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_968_chunk OWNER TO postgres;

--
-- Name: _hyper_3_969_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_969_chunk (
    CONSTRAINT constraint_969 CHECK ((("time" >= '2020-01-02 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-01-09 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_969_chunk OWNER TO postgres;

--
-- Name: _hyper_3_970_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_970_chunk (
    CONSTRAINT constraint_970 CHECK ((("time" >= '2020-01-09 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-01-16 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_970_chunk OWNER TO postgres;

--
-- Name: _hyper_3_971_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_971_chunk (
    CONSTRAINT constraint_971 CHECK ((("time" >= '2020-01-16 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-01-23 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_971_chunk OWNER TO postgres;

--
-- Name: _hyper_3_972_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_972_chunk (
    CONSTRAINT constraint_972 CHECK ((("time" >= '2020-01-23 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-01-30 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_972_chunk OWNER TO postgres;

--
-- Name: _hyper_3_973_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_973_chunk (
    CONSTRAINT constraint_973 CHECK ((("time" >= '2020-01-30 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-02-06 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_973_chunk OWNER TO postgres;

--
-- Name: _hyper_3_974_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_974_chunk (
    CONSTRAINT constraint_974 CHECK ((("time" >= '2020-02-06 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-02-13 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_974_chunk OWNER TO postgres;

--
-- Name: _hyper_3_975_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_975_chunk (
    CONSTRAINT constraint_975 CHECK ((("time" >= '2020-02-13 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-02-20 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_975_chunk OWNER TO postgres;

--
-- Name: _hyper_3_976_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_976_chunk (
    CONSTRAINT constraint_976 CHECK ((("time" >= '2020-02-20 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-02-27 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_976_chunk OWNER TO postgres;

--
-- Name: _hyper_3_977_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_977_chunk (
    CONSTRAINT constraint_977 CHECK ((("time" >= '2020-02-27 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-03-05 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_977_chunk OWNER TO postgres;

--
-- Name: _hyper_3_978_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_978_chunk (
    CONSTRAINT constraint_978 CHECK ((("time" >= '2020-03-05 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-03-12 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_978_chunk OWNER TO postgres;

--
-- Name: _hyper_3_979_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_979_chunk (
    CONSTRAINT constraint_979 CHECK ((("time" >= '2020-03-12 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-03-19 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_979_chunk OWNER TO postgres;

--
-- Name: _hyper_3_980_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_980_chunk (
    CONSTRAINT constraint_980 CHECK ((("time" >= '2020-03-19 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-03-26 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_980_chunk OWNER TO postgres;

--
-- Name: _hyper_3_981_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_981_chunk (
    CONSTRAINT constraint_981 CHECK ((("time" >= '2020-03-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-04-02 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_981_chunk OWNER TO postgres;

--
-- Name: _hyper_3_982_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_982_chunk (
    CONSTRAINT constraint_982 CHECK ((("time" >= '2020-04-02 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-04-09 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_982_chunk OWNER TO postgres;

--
-- Name: _hyper_3_983_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_983_chunk (
    CONSTRAINT constraint_983 CHECK ((("time" >= '2020-04-09 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-04-16 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_983_chunk OWNER TO postgres;

--
-- Name: _hyper_3_984_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_984_chunk (
    CONSTRAINT constraint_984 CHECK ((("time" >= '2020-04-16 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-04-23 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_984_chunk OWNER TO postgres;

--
-- Name: _hyper_3_985_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_985_chunk (
    CONSTRAINT constraint_985 CHECK ((("time" >= '2020-04-23 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-04-30 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_985_chunk OWNER TO postgres;

--
-- Name: _hyper_3_986_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_986_chunk (
    CONSTRAINT constraint_986 CHECK ((("time" >= '2020-04-30 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-05-07 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_986_chunk OWNER TO postgres;

--
-- Name: _hyper_3_987_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_987_chunk (
    CONSTRAINT constraint_987 CHECK ((("time" >= '2020-05-07 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-05-14 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_987_chunk OWNER TO postgres;

--
-- Name: _hyper_3_988_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_988_chunk (
    CONSTRAINT constraint_988 CHECK ((("time" >= '2020-05-14 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-05-21 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_988_chunk OWNER TO postgres;

--
-- Name: _hyper_3_989_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_989_chunk (
    CONSTRAINT constraint_989 CHECK ((("time" >= '2020-05-21 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-05-28 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_989_chunk OWNER TO postgres;

--
-- Name: _hyper_3_990_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_990_chunk (
    CONSTRAINT constraint_990 CHECK ((("time" >= '2020-05-28 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-06-04 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_990_chunk OWNER TO postgres;

--
-- Name: _hyper_3_991_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_991_chunk (
    CONSTRAINT constraint_991 CHECK ((("time" >= '2020-06-04 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-06-11 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_991_chunk OWNER TO postgres;

--
-- Name: _hyper_3_992_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_992_chunk (
    CONSTRAINT constraint_992 CHECK ((("time" >= '2020-06-11 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-06-18 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_992_chunk OWNER TO postgres;

--
-- Name: _hyper_3_993_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_993_chunk (
    CONSTRAINT constraint_993 CHECK ((("time" >= '2020-06-18 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-06-25 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_993_chunk OWNER TO postgres;

--
-- Name: _hyper_3_994_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_994_chunk (
    CONSTRAINT constraint_994 CHECK ((("time" >= '2020-06-25 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-07-02 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_994_chunk OWNER TO postgres;

--
-- Name: _hyper_3_995_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_995_chunk (
    CONSTRAINT constraint_995 CHECK ((("time" >= '2020-07-02 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-07-09 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_995_chunk OWNER TO postgres;

--
-- Name: _hyper_3_996_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_996_chunk (
    CONSTRAINT constraint_996 CHECK ((("time" >= '2020-07-09 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-07-16 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_996_chunk OWNER TO postgres;

--
-- Name: _hyper_3_997_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_997_chunk (
    CONSTRAINT constraint_997 CHECK ((("time" >= '2020-07-16 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-07-23 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_997_chunk OWNER TO postgres;

--
-- Name: _hyper_3_998_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_998_chunk (
    CONSTRAINT constraint_998 CHECK ((("time" >= '2020-07-23 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-07-30 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_998_chunk OWNER TO postgres;

--
-- Name: _hyper_3_999_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_3_999_chunk (
    CONSTRAINT constraint_999 CHECK ((("time" >= '2020-07-30 00:00:00+00'::timestamp with time zone) AND ("time" < '2020-08-06 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.carpark_availability);


ALTER TABLE _timescaledb_internal._hyper_3_999_chunk OWNER TO postgres;

--
-- Name: coe_bidding; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.coe_bidding (
    "time" timestamp without time zone NOT NULL,
    bidding_number smallint NOT NULL,
    vehicle_class text NOT NULL,
    quota integer NOT NULL,
    bids_success integer NOT NULL,
    bids_received integer NOT NULL,
    premium integer NOT NULL
);


ALTER TABLE public.coe_bidding OWNER TO postgres;

--
-- Name: _hyper_4_1429_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1429_chunk (
    CONSTRAINT constraint_1429 CHECK ((("time" >= '2009-12-31 00:00:00'::timestamp without time zone) AND ("time" < '2010-01-07 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1429_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1430_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1430_chunk (
    CONSTRAINT constraint_1430 CHECK ((("time" >= '2010-01-28 00:00:00'::timestamp without time zone) AND ("time" < '2010-02-04 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1430_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1431_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1431_chunk (
    CONSTRAINT constraint_1431 CHECK ((("time" >= '2010-02-25 00:00:00'::timestamp without time zone) AND ("time" < '2010-03-04 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1431_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1432_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1432_chunk (
    CONSTRAINT constraint_1432 CHECK ((("time" >= '2010-04-01 00:00:00'::timestamp without time zone) AND ("time" < '2010-04-08 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1432_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1433_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1433_chunk (
    CONSTRAINT constraint_1433 CHECK ((("time" >= '2010-04-29 00:00:00'::timestamp without time zone) AND ("time" < '2010-05-06 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1433_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1434_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1434_chunk (
    CONSTRAINT constraint_1434 CHECK ((("time" >= '2010-05-27 00:00:00'::timestamp without time zone) AND ("time" < '2010-06-03 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1434_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1435_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1435_chunk (
    CONSTRAINT constraint_1435 CHECK ((("time" >= '2010-07-01 00:00:00'::timestamp without time zone) AND ("time" < '2010-07-08 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1435_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1436_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1436_chunk (
    CONSTRAINT constraint_1436 CHECK ((("time" >= '2010-07-29 00:00:00'::timestamp without time zone) AND ("time" < '2010-08-05 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1436_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1437_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1437_chunk (
    CONSTRAINT constraint_1437 CHECK ((("time" >= '2010-08-26 00:00:00'::timestamp without time zone) AND ("time" < '2010-09-02 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1437_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1438_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1438_chunk (
    CONSTRAINT constraint_1438 CHECK ((("time" >= '2010-09-30 00:00:00'::timestamp without time zone) AND ("time" < '2010-10-07 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1438_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1439_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1439_chunk (
    CONSTRAINT constraint_1439 CHECK ((("time" >= '2010-10-28 00:00:00'::timestamp without time zone) AND ("time" < '2010-11-04 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1439_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1440_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1440_chunk (
    CONSTRAINT constraint_1440 CHECK ((("time" >= '2010-11-25 00:00:00'::timestamp without time zone) AND ("time" < '2010-12-02 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1440_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1441_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1441_chunk (
    CONSTRAINT constraint_1441 CHECK ((("time" >= '2010-12-30 00:00:00'::timestamp without time zone) AND ("time" < '2011-01-06 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1441_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1442_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1442_chunk (
    CONSTRAINT constraint_1442 CHECK ((("time" >= '2011-01-27 00:00:00'::timestamp without time zone) AND ("time" < '2011-02-03 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1442_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1443_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1443_chunk (
    CONSTRAINT constraint_1443 CHECK ((("time" >= '2011-02-24 00:00:00'::timestamp without time zone) AND ("time" < '2011-03-03 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1443_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1444_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1444_chunk (
    CONSTRAINT constraint_1444 CHECK ((("time" >= '2011-03-31 00:00:00'::timestamp without time zone) AND ("time" < '2011-04-07 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1444_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1445_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1445_chunk (
    CONSTRAINT constraint_1445 CHECK ((("time" >= '2011-04-28 00:00:00'::timestamp without time zone) AND ("time" < '2011-05-05 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1445_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1446_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1446_chunk (
    CONSTRAINT constraint_1446 CHECK ((("time" >= '2011-05-26 00:00:00'::timestamp without time zone) AND ("time" < '2011-06-02 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1446_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1447_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1447_chunk (
    CONSTRAINT constraint_1447 CHECK ((("time" >= '2011-06-30 00:00:00'::timestamp without time zone) AND ("time" < '2011-07-07 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1447_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1448_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1448_chunk (
    CONSTRAINT constraint_1448 CHECK ((("time" >= '2011-07-28 00:00:00'::timestamp without time zone) AND ("time" < '2011-08-04 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1448_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1449_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1449_chunk (
    CONSTRAINT constraint_1449 CHECK ((("time" >= '2011-09-01 00:00:00'::timestamp without time zone) AND ("time" < '2011-09-08 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1449_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1450_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1450_chunk (
    CONSTRAINT constraint_1450 CHECK ((("time" >= '2011-09-29 00:00:00'::timestamp without time zone) AND ("time" < '2011-10-06 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1450_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1451_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1451_chunk (
    CONSTRAINT constraint_1451 CHECK ((("time" >= '2011-10-27 00:00:00'::timestamp without time zone) AND ("time" < '2011-11-03 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1451_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1452_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1452_chunk (
    CONSTRAINT constraint_1452 CHECK ((("time" >= '2011-12-01 00:00:00'::timestamp without time zone) AND ("time" < '2011-12-08 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1452_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1453_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1453_chunk (
    CONSTRAINT constraint_1453 CHECK ((("time" >= '2011-12-29 00:00:00'::timestamp without time zone) AND ("time" < '2012-01-05 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1453_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1454_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1454_chunk (
    CONSTRAINT constraint_1454 CHECK ((("time" >= '2012-01-26 00:00:00'::timestamp without time zone) AND ("time" < '2012-02-02 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1454_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1455_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1455_chunk (
    CONSTRAINT constraint_1455 CHECK ((("time" >= '2012-03-01 00:00:00'::timestamp without time zone) AND ("time" < '2012-03-08 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1455_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1456_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1456_chunk (
    CONSTRAINT constraint_1456 CHECK ((("time" >= '2012-03-29 00:00:00'::timestamp without time zone) AND ("time" < '2012-04-05 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1456_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1457_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1457_chunk (
    CONSTRAINT constraint_1457 CHECK ((("time" >= '2012-04-26 00:00:00'::timestamp without time zone) AND ("time" < '2012-05-03 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1457_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1458_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1458_chunk (
    CONSTRAINT constraint_1458 CHECK ((("time" >= '2012-05-31 00:00:00'::timestamp without time zone) AND ("time" < '2012-06-07 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1458_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1459_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1459_chunk (
    CONSTRAINT constraint_1459 CHECK ((("time" >= '2012-06-28 00:00:00'::timestamp without time zone) AND ("time" < '2012-07-05 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1459_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1460_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1460_chunk (
    CONSTRAINT constraint_1460 CHECK ((("time" >= '2012-07-26 00:00:00'::timestamp without time zone) AND ("time" < '2012-08-02 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1460_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1461_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1461_chunk (
    CONSTRAINT constraint_1461 CHECK ((("time" >= '2012-08-30 00:00:00'::timestamp without time zone) AND ("time" < '2012-09-06 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1461_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1462_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1462_chunk (
    CONSTRAINT constraint_1462 CHECK ((("time" >= '2012-09-27 00:00:00'::timestamp without time zone) AND ("time" < '2012-10-04 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1462_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1463_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1463_chunk (
    CONSTRAINT constraint_1463 CHECK ((("time" >= '2012-11-01 00:00:00'::timestamp without time zone) AND ("time" < '2012-11-08 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1463_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1464_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1464_chunk (
    CONSTRAINT constraint_1464 CHECK ((("time" >= '2012-11-29 00:00:00'::timestamp without time zone) AND ("time" < '2012-12-06 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1464_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1465_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1465_chunk (
    CONSTRAINT constraint_1465 CHECK ((("time" >= '2012-12-27 00:00:00'::timestamp without time zone) AND ("time" < '2013-01-03 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1465_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1466_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1466_chunk (
    CONSTRAINT constraint_1466 CHECK ((("time" >= '2013-01-31 00:00:00'::timestamp without time zone) AND ("time" < '2013-02-07 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1466_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1467_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1467_chunk (
    CONSTRAINT constraint_1467 CHECK ((("time" >= '2013-02-28 00:00:00'::timestamp without time zone) AND ("time" < '2013-03-07 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1467_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1468_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1468_chunk (
    CONSTRAINT constraint_1468 CHECK ((("time" >= '2013-03-28 00:00:00'::timestamp without time zone) AND ("time" < '2013-04-04 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1468_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1469_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1469_chunk (
    CONSTRAINT constraint_1469 CHECK ((("time" >= '2013-04-25 00:00:00'::timestamp without time zone) AND ("time" < '2013-05-02 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1469_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1470_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1470_chunk (
    CONSTRAINT constraint_1470 CHECK ((("time" >= '2013-05-30 00:00:00'::timestamp without time zone) AND ("time" < '2013-06-06 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1470_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1471_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1471_chunk (
    CONSTRAINT constraint_1471 CHECK ((("time" >= '2013-06-27 00:00:00'::timestamp without time zone) AND ("time" < '2013-07-04 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1471_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1472_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1472_chunk (
    CONSTRAINT constraint_1472 CHECK ((("time" >= '2013-08-01 00:00:00'::timestamp without time zone) AND ("time" < '2013-08-08 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1472_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1473_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1473_chunk (
    CONSTRAINT constraint_1473 CHECK ((("time" >= '2013-08-29 00:00:00'::timestamp without time zone) AND ("time" < '2013-09-05 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1473_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1474_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1474_chunk (
    CONSTRAINT constraint_1474 CHECK ((("time" >= '2013-09-26 00:00:00'::timestamp without time zone) AND ("time" < '2013-10-03 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1474_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1475_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1475_chunk (
    CONSTRAINT constraint_1475 CHECK ((("time" >= '2013-10-31 00:00:00'::timestamp without time zone) AND ("time" < '2013-11-07 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1475_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1476_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1476_chunk (
    CONSTRAINT constraint_1476 CHECK ((("time" >= '2013-11-28 00:00:00'::timestamp without time zone) AND ("time" < '2013-12-05 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1476_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1477_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1477_chunk (
    CONSTRAINT constraint_1477 CHECK ((("time" >= '2013-12-26 00:00:00'::timestamp without time zone) AND ("time" < '2014-01-02 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1477_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1478_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1478_chunk (
    CONSTRAINT constraint_1478 CHECK ((("time" >= '2014-01-30 00:00:00'::timestamp without time zone) AND ("time" < '2014-02-06 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1478_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1479_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1479_chunk (
    CONSTRAINT constraint_1479 CHECK ((("time" >= '2014-02-27 00:00:00'::timestamp without time zone) AND ("time" < '2014-03-06 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1479_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1480_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1480_chunk (
    CONSTRAINT constraint_1480 CHECK ((("time" >= '2014-03-27 00:00:00'::timestamp without time zone) AND ("time" < '2014-04-03 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1480_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1481_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1481_chunk (
    CONSTRAINT constraint_1481 CHECK ((("time" >= '2014-05-01 00:00:00'::timestamp without time zone) AND ("time" < '2014-05-08 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1481_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1482_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1482_chunk (
    CONSTRAINT constraint_1482 CHECK ((("time" >= '2014-05-29 00:00:00'::timestamp without time zone) AND ("time" < '2014-06-05 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1482_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1483_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1483_chunk (
    CONSTRAINT constraint_1483 CHECK ((("time" >= '2014-06-26 00:00:00'::timestamp without time zone) AND ("time" < '2014-07-03 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1483_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1484_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1484_chunk (
    CONSTRAINT constraint_1484 CHECK ((("time" >= '2014-07-31 00:00:00'::timestamp without time zone) AND ("time" < '2014-08-07 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1484_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1485_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1485_chunk (
    CONSTRAINT constraint_1485 CHECK ((("time" >= '2014-08-28 00:00:00'::timestamp without time zone) AND ("time" < '2014-09-04 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1485_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1486_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1486_chunk (
    CONSTRAINT constraint_1486 CHECK ((("time" >= '2014-09-25 00:00:00'::timestamp without time zone) AND ("time" < '2014-10-02 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1486_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1487_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1487_chunk (
    CONSTRAINT constraint_1487 CHECK ((("time" >= '2014-10-30 00:00:00'::timestamp without time zone) AND ("time" < '2014-11-06 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1487_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1488_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1488_chunk (
    CONSTRAINT constraint_1488 CHECK ((("time" >= '2014-11-27 00:00:00'::timestamp without time zone) AND ("time" < '2014-12-04 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1488_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1489_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1489_chunk (
    CONSTRAINT constraint_1489 CHECK ((("time" >= '2015-01-01 00:00:00'::timestamp without time zone) AND ("time" < '2015-01-08 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1489_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1490_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1490_chunk (
    CONSTRAINT constraint_1490 CHECK ((("time" >= '2015-01-29 00:00:00'::timestamp without time zone) AND ("time" < '2015-02-05 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1490_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1491_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1491_chunk (
    CONSTRAINT constraint_1491 CHECK ((("time" >= '2015-02-26 00:00:00'::timestamp without time zone) AND ("time" < '2015-03-05 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1491_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1492_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1492_chunk (
    CONSTRAINT constraint_1492 CHECK ((("time" >= '2015-03-26 00:00:00'::timestamp without time zone) AND ("time" < '2015-04-02 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1492_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1493_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1493_chunk (
    CONSTRAINT constraint_1493 CHECK ((("time" >= '2015-04-30 00:00:00'::timestamp without time zone) AND ("time" < '2015-05-07 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1493_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1494_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1494_chunk (
    CONSTRAINT constraint_1494 CHECK ((("time" >= '2015-05-28 00:00:00'::timestamp without time zone) AND ("time" < '2015-06-04 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1494_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1495_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1495_chunk (
    CONSTRAINT constraint_1495 CHECK ((("time" >= '2015-06-25 00:00:00'::timestamp without time zone) AND ("time" < '2015-07-02 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1495_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1496_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1496_chunk (
    CONSTRAINT constraint_1496 CHECK ((("time" >= '2015-07-30 00:00:00'::timestamp without time zone) AND ("time" < '2015-08-06 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1496_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1497_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1497_chunk (
    CONSTRAINT constraint_1497 CHECK ((("time" >= '2015-08-27 00:00:00'::timestamp without time zone) AND ("time" < '2015-09-03 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1497_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1498_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1498_chunk (
    CONSTRAINT constraint_1498 CHECK ((("time" >= '2015-10-01 00:00:00'::timestamp without time zone) AND ("time" < '2015-10-08 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1498_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1499_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1499_chunk (
    CONSTRAINT constraint_1499 CHECK ((("time" >= '2015-10-29 00:00:00'::timestamp without time zone) AND ("time" < '2015-11-05 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1499_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1500_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1500_chunk (
    CONSTRAINT constraint_1500 CHECK ((("time" >= '2015-11-26 00:00:00'::timestamp without time zone) AND ("time" < '2015-12-03 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1500_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1501_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1501_chunk (
    CONSTRAINT constraint_1501 CHECK ((("time" >= '2015-12-31 00:00:00'::timestamp without time zone) AND ("time" < '2016-01-07 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1501_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1502_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1502_chunk (
    CONSTRAINT constraint_1502 CHECK ((("time" >= '2016-01-28 00:00:00'::timestamp without time zone) AND ("time" < '2016-02-04 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1502_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1503_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1503_chunk (
    CONSTRAINT constraint_1503 CHECK ((("time" >= '2016-02-25 00:00:00'::timestamp without time zone) AND ("time" < '2016-03-03 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1503_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1504_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1504_chunk (
    CONSTRAINT constraint_1504 CHECK ((("time" >= '2016-03-31 00:00:00'::timestamp without time zone) AND ("time" < '2016-04-07 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1504_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1505_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1505_chunk (
    CONSTRAINT constraint_1505 CHECK ((("time" >= '2016-04-28 00:00:00'::timestamp without time zone) AND ("time" < '2016-05-05 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1505_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1506_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1506_chunk (
    CONSTRAINT constraint_1506 CHECK ((("time" >= '2016-05-26 00:00:00'::timestamp without time zone) AND ("time" < '2016-06-02 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1506_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1507_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1507_chunk (
    CONSTRAINT constraint_1507 CHECK ((("time" >= '2016-06-30 00:00:00'::timestamp without time zone) AND ("time" < '2016-07-07 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1507_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1508_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1508_chunk (
    CONSTRAINT constraint_1508 CHECK ((("time" >= '2016-07-28 00:00:00'::timestamp without time zone) AND ("time" < '2016-08-04 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1508_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1509_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1509_chunk (
    CONSTRAINT constraint_1509 CHECK ((("time" >= '2016-09-01 00:00:00'::timestamp without time zone) AND ("time" < '2016-09-08 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1509_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1510_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1510_chunk (
    CONSTRAINT constraint_1510 CHECK ((("time" >= '2016-09-29 00:00:00'::timestamp without time zone) AND ("time" < '2016-10-06 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1510_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1511_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1511_chunk (
    CONSTRAINT constraint_1511 CHECK ((("time" >= '2016-10-27 00:00:00'::timestamp without time zone) AND ("time" < '2016-11-03 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1511_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1512_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1512_chunk (
    CONSTRAINT constraint_1512 CHECK ((("time" >= '2016-12-01 00:00:00'::timestamp without time zone) AND ("time" < '2016-12-08 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1512_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1513_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1513_chunk (
    CONSTRAINT constraint_1513 CHECK ((("time" >= '2016-12-29 00:00:00'::timestamp without time zone) AND ("time" < '2017-01-05 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1513_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1514_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1514_chunk (
    CONSTRAINT constraint_1514 CHECK ((("time" >= '2017-01-26 00:00:00'::timestamp without time zone) AND ("time" < '2017-02-02 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1514_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1515_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1515_chunk (
    CONSTRAINT constraint_1515 CHECK ((("time" >= '2017-02-23 00:00:00'::timestamp without time zone) AND ("time" < '2017-03-02 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1515_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1516_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1516_chunk (
    CONSTRAINT constraint_1516 CHECK ((("time" >= '2017-03-30 00:00:00'::timestamp without time zone) AND ("time" < '2017-04-06 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1516_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1517_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1517_chunk (
    CONSTRAINT constraint_1517 CHECK ((("time" >= '2017-04-27 00:00:00'::timestamp without time zone) AND ("time" < '2017-05-04 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1517_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1518_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1518_chunk (
    CONSTRAINT constraint_1518 CHECK ((("time" >= '2017-06-01 00:00:00'::timestamp without time zone) AND ("time" < '2017-06-08 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1518_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1519_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1519_chunk (
    CONSTRAINT constraint_1519 CHECK ((("time" >= '2017-06-29 00:00:00'::timestamp without time zone) AND ("time" < '2017-07-06 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1519_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1520_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1520_chunk (
    CONSTRAINT constraint_1520 CHECK ((("time" >= '2017-07-27 00:00:00'::timestamp without time zone) AND ("time" < '2017-08-03 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1520_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1521_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1521_chunk (
    CONSTRAINT constraint_1521 CHECK ((("time" >= '2017-08-31 00:00:00'::timestamp without time zone) AND ("time" < '2017-09-07 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1521_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1522_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1522_chunk (
    CONSTRAINT constraint_1522 CHECK ((("time" >= '2017-09-28 00:00:00'::timestamp without time zone) AND ("time" < '2017-10-05 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1522_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1523_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1523_chunk (
    CONSTRAINT constraint_1523 CHECK ((("time" >= '2017-10-26 00:00:00'::timestamp without time zone) AND ("time" < '2017-11-02 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1523_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1524_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1524_chunk (
    CONSTRAINT constraint_1524 CHECK ((("time" >= '2017-11-30 00:00:00'::timestamp without time zone) AND ("time" < '2017-12-07 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1524_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1525_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1525_chunk (
    CONSTRAINT constraint_1525 CHECK ((("time" >= '2017-12-28 00:00:00'::timestamp without time zone) AND ("time" < '2018-01-04 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1525_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1526_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1526_chunk (
    CONSTRAINT constraint_1526 CHECK ((("time" >= '2018-02-01 00:00:00'::timestamp without time zone) AND ("time" < '2018-02-08 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1526_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1527_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1527_chunk (
    CONSTRAINT constraint_1527 CHECK ((("time" >= '2018-03-01 00:00:00'::timestamp without time zone) AND ("time" < '2018-03-08 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1527_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1528_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1528_chunk (
    CONSTRAINT constraint_1528 CHECK ((("time" >= '2018-03-29 00:00:00'::timestamp without time zone) AND ("time" < '2018-04-05 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1528_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1529_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1529_chunk (
    CONSTRAINT constraint_1529 CHECK ((("time" >= '2018-04-26 00:00:00'::timestamp without time zone) AND ("time" < '2018-05-03 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1529_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1530_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1530_chunk (
    CONSTRAINT constraint_1530 CHECK ((("time" >= '2018-05-31 00:00:00'::timestamp without time zone) AND ("time" < '2018-06-07 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1530_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1531_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1531_chunk (
    CONSTRAINT constraint_1531 CHECK ((("time" >= '2018-06-28 00:00:00'::timestamp without time zone) AND ("time" < '2018-07-05 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1531_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1532_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1532_chunk (
    CONSTRAINT constraint_1532 CHECK ((("time" >= '2018-07-26 00:00:00'::timestamp without time zone) AND ("time" < '2018-08-02 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1532_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1533_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1533_chunk (
    CONSTRAINT constraint_1533 CHECK ((("time" >= '2018-08-30 00:00:00'::timestamp without time zone) AND ("time" < '2018-09-06 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1533_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1534_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1534_chunk (
    CONSTRAINT constraint_1534 CHECK ((("time" >= '2018-09-27 00:00:00'::timestamp without time zone) AND ("time" < '2018-10-04 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1534_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1535_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1535_chunk (
    CONSTRAINT constraint_1535 CHECK ((("time" >= '2018-11-01 00:00:00'::timestamp without time zone) AND ("time" < '2018-11-08 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1535_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1536_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1536_chunk (
    CONSTRAINT constraint_1536 CHECK ((("time" >= '2018-11-29 00:00:00'::timestamp without time zone) AND ("time" < '2018-12-06 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1536_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1537_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1537_chunk (
    CONSTRAINT constraint_1537 CHECK ((("time" >= '2018-12-27 00:00:00'::timestamp without time zone) AND ("time" < '2019-01-03 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1537_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1538_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1538_chunk (
    CONSTRAINT constraint_1538 CHECK ((("time" >= '2019-01-31 00:00:00'::timestamp without time zone) AND ("time" < '2019-02-07 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1538_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1539_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1539_chunk (
    CONSTRAINT constraint_1539 CHECK ((("time" >= '2019-02-28 00:00:00'::timestamp without time zone) AND ("time" < '2019-03-07 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1539_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1540_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1540_chunk (
    CONSTRAINT constraint_1540 CHECK ((("time" >= '2019-03-28 00:00:00'::timestamp without time zone) AND ("time" < '2019-04-04 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1540_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1541_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1541_chunk (
    CONSTRAINT constraint_1541 CHECK ((("time" >= '2019-04-25 00:00:00'::timestamp without time zone) AND ("time" < '2019-05-02 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1541_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1542_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1542_chunk (
    CONSTRAINT constraint_1542 CHECK ((("time" >= '2019-05-30 00:00:00'::timestamp without time zone) AND ("time" < '2019-06-06 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1542_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1543_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1543_chunk (
    CONSTRAINT constraint_1543 CHECK ((("time" >= '2019-06-27 00:00:00'::timestamp without time zone) AND ("time" < '2019-07-04 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1543_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1544_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1544_chunk (
    CONSTRAINT constraint_1544 CHECK ((("time" >= '2019-08-01 00:00:00'::timestamp without time zone) AND ("time" < '2019-08-08 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1544_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1545_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1545_chunk (
    CONSTRAINT constraint_1545 CHECK ((("time" >= '2019-08-29 00:00:00'::timestamp without time zone) AND ("time" < '2019-09-05 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1545_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1546_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1546_chunk (
    CONSTRAINT constraint_1546 CHECK ((("time" >= '2019-09-26 00:00:00'::timestamp without time zone) AND ("time" < '2019-10-03 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1546_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1547_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1547_chunk (
    CONSTRAINT constraint_1547 CHECK ((("time" >= '2019-10-31 00:00:00'::timestamp without time zone) AND ("time" < '2019-11-07 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1547_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1548_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1548_chunk (
    CONSTRAINT constraint_1548 CHECK ((("time" >= '2019-11-28 00:00:00'::timestamp without time zone) AND ("time" < '2019-12-05 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1548_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1549_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1549_chunk (
    CONSTRAINT constraint_1549 CHECK ((("time" >= '2019-12-26 00:00:00'::timestamp without time zone) AND ("time" < '2020-01-02 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1549_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1550_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1550_chunk (
    CONSTRAINT constraint_1550 CHECK ((("time" >= '2020-01-30 00:00:00'::timestamp without time zone) AND ("time" < '2020-02-06 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1550_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1551_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1551_chunk (
    CONSTRAINT constraint_1551 CHECK ((("time" >= '2020-02-27 00:00:00'::timestamp without time zone) AND ("time" < '2020-03-05 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1551_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1552_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1552_chunk (
    CONSTRAINT constraint_1552 CHECK ((("time" >= '2020-06-25 00:00:00'::timestamp without time zone) AND ("time" < '2020-07-02 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1552_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1553_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1553_chunk (
    CONSTRAINT constraint_1553 CHECK ((("time" >= '2020-07-30 00:00:00'::timestamp without time zone) AND ("time" < '2020-08-06 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1553_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1554_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1554_chunk (
    CONSTRAINT constraint_1554 CHECK ((("time" >= '2020-08-27 00:00:00'::timestamp without time zone) AND ("time" < '2020-09-03 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1554_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1555_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1555_chunk (
    CONSTRAINT constraint_1555 CHECK ((("time" >= '2020-10-01 00:00:00'::timestamp without time zone) AND ("time" < '2020-10-08 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1555_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1556_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1556_chunk (
    CONSTRAINT constraint_1556 CHECK ((("time" >= '2020-10-29 00:00:00'::timestamp without time zone) AND ("time" < '2020-11-05 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1556_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1557_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1557_chunk (
    CONSTRAINT constraint_1557 CHECK ((("time" >= '2020-11-26 00:00:00'::timestamp without time zone) AND ("time" < '2020-12-03 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1557_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1558_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1558_chunk (
    CONSTRAINT constraint_1558 CHECK ((("time" >= '2020-12-31 00:00:00'::timestamp without time zone) AND ("time" < '2021-01-07 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1558_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1559_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1559_chunk (
    CONSTRAINT constraint_1559 CHECK ((("time" >= '2021-01-28 00:00:00'::timestamp without time zone) AND ("time" < '2021-02-04 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1559_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1560_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1560_chunk (
    CONSTRAINT constraint_1560 CHECK ((("time" >= '2021-02-25 00:00:00'::timestamp without time zone) AND ("time" < '2021-03-04 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1560_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1561_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1561_chunk (
    CONSTRAINT constraint_1561 CHECK ((("time" >= '2021-04-01 00:00:00'::timestamp without time zone) AND ("time" < '2021-04-08 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1561_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1562_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1562_chunk (
    CONSTRAINT constraint_1562 CHECK ((("time" >= '2021-04-29 00:00:00'::timestamp without time zone) AND ("time" < '2021-05-06 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1562_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1563_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1563_chunk (
    CONSTRAINT constraint_1563 CHECK ((("time" >= '2021-05-27 00:00:00'::timestamp without time zone) AND ("time" < '2021-06-03 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1563_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1564_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1564_chunk (
    CONSTRAINT constraint_1564 CHECK ((("time" >= '2021-07-01 00:00:00'::timestamp without time zone) AND ("time" < '2021-07-08 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1564_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1565_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1565_chunk (
    CONSTRAINT constraint_1565 CHECK ((("time" >= '2021-07-29 00:00:00'::timestamp without time zone) AND ("time" < '2021-08-05 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1565_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1566_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1566_chunk (
    CONSTRAINT constraint_1566 CHECK ((("time" >= '2021-08-26 00:00:00'::timestamp without time zone) AND ("time" < '2021-09-02 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1566_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1567_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1567_chunk (
    CONSTRAINT constraint_1567 CHECK ((("time" >= '2021-09-30 00:00:00'::timestamp without time zone) AND ("time" < '2021-10-07 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1567_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1568_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1568_chunk (
    CONSTRAINT constraint_1568 CHECK ((("time" >= '2021-10-28 00:00:00'::timestamp without time zone) AND ("time" < '2021-11-04 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1568_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1569_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1569_chunk (
    CONSTRAINT constraint_1569 CHECK ((("time" >= '2021-11-25 00:00:00'::timestamp without time zone) AND ("time" < '2021-12-02 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1569_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1570_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1570_chunk (
    CONSTRAINT constraint_1570 CHECK ((("time" >= '2021-12-30 00:00:00'::timestamp without time zone) AND ("time" < '2022-01-06 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1570_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1571_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1571_chunk (
    CONSTRAINT constraint_1571 CHECK ((("time" >= '2022-01-27 00:00:00'::timestamp without time zone) AND ("time" < '2022-02-03 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1571_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1572_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1572_chunk (
    CONSTRAINT constraint_1572 CHECK ((("time" >= '2022-02-24 00:00:00'::timestamp without time zone) AND ("time" < '2022-03-03 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1572_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1573_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1573_chunk (
    CONSTRAINT constraint_1573 CHECK ((("time" >= '2022-03-31 00:00:00'::timestamp without time zone) AND ("time" < '2022-04-07 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1573_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1574_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1574_chunk (
    CONSTRAINT constraint_1574 CHECK ((("time" >= '2022-04-28 00:00:00'::timestamp without time zone) AND ("time" < '2022-05-05 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1574_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1575_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1575_chunk (
    CONSTRAINT constraint_1575 CHECK ((("time" >= '2022-05-26 00:00:00'::timestamp without time zone) AND ("time" < '2022-06-02 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1575_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1576_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1576_chunk (
    CONSTRAINT constraint_1576 CHECK ((("time" >= '2022-06-30 00:00:00'::timestamp without time zone) AND ("time" < '2022-07-07 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1576_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1577_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1577_chunk (
    CONSTRAINT constraint_1577 CHECK ((("time" >= '2022-07-28 00:00:00'::timestamp without time zone) AND ("time" < '2022-08-04 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1577_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1578_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1578_chunk (
    CONSTRAINT constraint_1578 CHECK ((("time" >= '2022-09-01 00:00:00'::timestamp without time zone) AND ("time" < '2022-09-08 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1578_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1579_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1579_chunk (
    CONSTRAINT constraint_1579 CHECK ((("time" >= '2022-09-29 00:00:00'::timestamp without time zone) AND ("time" < '2022-10-06 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1579_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1580_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1580_chunk (
    CONSTRAINT constraint_1580 CHECK ((("time" >= '2022-10-27 00:00:00'::timestamp without time zone) AND ("time" < '2022-11-03 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1580_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1581_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1581_chunk (
    CONSTRAINT constraint_1581 CHECK ((("time" >= '2022-12-01 00:00:00'::timestamp without time zone) AND ("time" < '2022-12-08 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1581_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1582_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1582_chunk (
    CONSTRAINT constraint_1582 CHECK ((("time" >= '2022-12-29 00:00:00'::timestamp without time zone) AND ("time" < '2023-01-05 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1582_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1583_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1583_chunk (
    CONSTRAINT constraint_1583 CHECK ((("time" >= '2023-01-26 00:00:00'::timestamp without time zone) AND ("time" < '2023-02-02 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1583_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1584_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1584_chunk (
    CONSTRAINT constraint_1584 CHECK ((("time" >= '2023-02-23 00:00:00'::timestamp without time zone) AND ("time" < '2023-03-02 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1584_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1585_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1585_chunk (
    CONSTRAINT constraint_1585 CHECK ((("time" >= '2023-03-30 00:00:00'::timestamp without time zone) AND ("time" < '2023-04-06 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1585_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1586_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1586_chunk (
    CONSTRAINT constraint_1586 CHECK ((("time" >= '2023-04-27 00:00:00'::timestamp without time zone) AND ("time" < '2023-05-04 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1586_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1587_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1587_chunk (
    CONSTRAINT constraint_1587 CHECK ((("time" >= '2023-06-01 00:00:00'::timestamp without time zone) AND ("time" < '2023-06-08 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1587_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1588_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1588_chunk (
    CONSTRAINT constraint_1588 CHECK ((("time" >= '2023-06-29 00:00:00'::timestamp without time zone) AND ("time" < '2023-07-06 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1588_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1589_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1589_chunk (
    CONSTRAINT constraint_1589 CHECK ((("time" >= '2023-07-27 00:00:00'::timestamp without time zone) AND ("time" < '2023-08-03 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1589_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1590_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1590_chunk (
    CONSTRAINT constraint_1590 CHECK ((("time" >= '2023-08-31 00:00:00'::timestamp without time zone) AND ("time" < '2023-09-07 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1590_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1591_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1591_chunk (
    CONSTRAINT constraint_1591 CHECK ((("time" >= '2023-09-28 00:00:00'::timestamp without time zone) AND ("time" < '2023-10-05 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1591_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1592_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1592_chunk (
    CONSTRAINT constraint_1592 CHECK ((("time" >= '2023-10-26 00:00:00'::timestamp without time zone) AND ("time" < '2023-11-02 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1592_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1593_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1593_chunk (
    CONSTRAINT constraint_1593 CHECK ((("time" >= '2023-11-30 00:00:00'::timestamp without time zone) AND ("time" < '2023-12-07 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1593_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1594_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1594_chunk (
    CONSTRAINT constraint_1594 CHECK ((("time" >= '2023-12-28 00:00:00'::timestamp without time zone) AND ("time" < '2024-01-04 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1594_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1595_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1595_chunk (
    CONSTRAINT constraint_1595 CHECK ((("time" >= '2024-02-01 00:00:00'::timestamp without time zone) AND ("time" < '2024-02-08 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1595_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1596_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1596_chunk (
    CONSTRAINT constraint_1596 CHECK ((("time" >= '2024-02-29 00:00:00'::timestamp without time zone) AND ("time" < '2024-03-07 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1596_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1597_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1597_chunk (
    CONSTRAINT constraint_1597 CHECK ((("time" >= '2024-03-28 00:00:00'::timestamp without time zone) AND ("time" < '2024-04-04 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1597_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1598_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1598_chunk (
    CONSTRAINT constraint_1598 CHECK ((("time" >= '2024-04-25 00:00:00'::timestamp without time zone) AND ("time" < '2024-05-02 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1598_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1599_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1599_chunk (
    CONSTRAINT constraint_1599 CHECK ((("time" >= '2024-05-30 00:00:00'::timestamp without time zone) AND ("time" < '2024-06-06 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1599_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1600_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1600_chunk (
    CONSTRAINT constraint_1600 CHECK ((("time" >= '2024-06-27 00:00:00'::timestamp without time zone) AND ("time" < '2024-07-04 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1600_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1601_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1601_chunk (
    CONSTRAINT constraint_1601 CHECK ((("time" >= '2024-08-01 00:00:00'::timestamp without time zone) AND ("time" < '2024-08-08 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1601_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1602_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1602_chunk (
    CONSTRAINT constraint_1602 CHECK ((("time" >= '2024-08-29 00:00:00'::timestamp without time zone) AND ("time" < '2024-09-05 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1602_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1603_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1603_chunk (
    CONSTRAINT constraint_1603 CHECK ((("time" >= '2024-09-26 00:00:00'::timestamp without time zone) AND ("time" < '2024-10-03 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1603_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1604_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1604_chunk (
    CONSTRAINT constraint_1604 CHECK ((("time" >= '2024-10-31 00:00:00'::timestamp without time zone) AND ("time" < '2024-11-07 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1604_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1605_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1605_chunk (
    CONSTRAINT constraint_1605 CHECK ((("time" >= '2024-11-28 00:00:00'::timestamp without time zone) AND ("time" < '2024-12-05 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1605_chunk OWNER TO postgres;

--
-- Name: _hyper_4_1606_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_4_1606_chunk (
    CONSTRAINT constraint_1606 CHECK ((("time" >= '2024-12-26 00:00:00'::timestamp without time zone) AND ("time" < '2025-01-02 00:00:00'::timestamp without time zone)))
)
INHERITS (public.coe_bidding);


ALTER TABLE _timescaledb_internal._hyper_4_1606_chunk OWNER TO postgres;

--
-- Name: daily_rain_summary; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.daily_rain_summary (
    date date NOT NULL,
    west boolean,
    east boolean,
    central boolean,
    south boolean,
    north boolean
);


ALTER TABLE public.daily_rain_summary OWNER TO postgres;

--
-- Name: public_holidays; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.public_holidays (
    date date NOT NULL,
    day public.weekday,
    holiday text
);


ALTER TABLE public.public_holidays OWNER TO postgres;

--
-- Name: _hyper_3_1000_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1000_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1000_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1000_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1000_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1000_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1001_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1001_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1001_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1001_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1001_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1001_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1002_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1002_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1002_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1002_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1002_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1002_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1003_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1003_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1003_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1003_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1003_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1003_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1004_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1004_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1004_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1004_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1004_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1004_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1005_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1005_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1005_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1005_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1005_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1005_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1006_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1006_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1006_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1006_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1006_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1006_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1007_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1007_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1007_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1007_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1007_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1007_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1008_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1008_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1008_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1008_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1008_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1008_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1009_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1009_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1009_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1009_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1009_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1009_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1010_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1010_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1010_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1010_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1010_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1010_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1011_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1011_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1011_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1011_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1011_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1011_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1012_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1012_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1012_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1012_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1012_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1012_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1013_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1013_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1013_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1013_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1013_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1013_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1014_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1014_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1014_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1014_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1014_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1014_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1015_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1015_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1015_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1015_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1015_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1015_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1016_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1016_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1016_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1016_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1016_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1016_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1017_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1017_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1017_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1017_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1017_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1017_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1018_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1018_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1018_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1018_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1018_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1018_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1019_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1019_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1019_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1019_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1019_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1019_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1020_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1020_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1020_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1020_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1020_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1020_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1021_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1021_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1021_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1021_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1021_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1021_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1022_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1022_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1022_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1022_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1022_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1022_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1023_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1023_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1023_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1023_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1023_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1023_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1024_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1024_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1024_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1024_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1024_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1024_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1025_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1025_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1025_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1025_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1025_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1025_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1026_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1026_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1026_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1026_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1026_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1026_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1027_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1027_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1027_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1027_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1027_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1027_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1028_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1028_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1028_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1028_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1028_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1028_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1029_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1029_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1029_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1029_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1029_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1029_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1030_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1030_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1030_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1030_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1030_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1030_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1031_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1031_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1031_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1031_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1031_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1031_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1032_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1032_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1032_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1032_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1032_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1032_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1033_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1033_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1033_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1033_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1033_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1033_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1034_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1034_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1034_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1034_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1034_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1034_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1035_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1035_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1035_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1035_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1035_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1035_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1036_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1036_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1036_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1036_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1036_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1036_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1037_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1037_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1037_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1037_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1037_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1037_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1038_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1038_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1038_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1038_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1038_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1038_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1039_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1039_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1039_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1039_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1039_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1039_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1040_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1040_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1040_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1040_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1040_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1040_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1041_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1041_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1041_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1041_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1041_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1041_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1042_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1042_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1042_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1042_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1042_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1042_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1043_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1043_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1043_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1043_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1043_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1043_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1044_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1044_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1044_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1044_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1044_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1044_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1045_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1045_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1045_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1045_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1045_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1045_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1046_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1046_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1046_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1046_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1046_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1046_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1047_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1047_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1047_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1047_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1047_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1047_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1048_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1048_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1048_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1048_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1048_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1048_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1049_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1049_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1049_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1049_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1049_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1049_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1050_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1050_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1050_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1050_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1050_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1050_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1051_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1051_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1051_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1051_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1051_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1051_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1052_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1052_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1052_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1052_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1052_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1052_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1053_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1053_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1053_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1053_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1053_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1053_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1054_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1054_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1054_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1054_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1054_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1054_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1055_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1055_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1055_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1055_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1055_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1055_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1056_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1056_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1056_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1056_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1056_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1056_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1057_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1057_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1057_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1057_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1057_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1057_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1058_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1058_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1058_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1058_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1058_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1058_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1059_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1059_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1059_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1059_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1059_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1059_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1060_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1060_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1060_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1060_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1060_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1060_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1061_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1061_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1061_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1061_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1061_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1061_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1062_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1062_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1062_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1062_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1062_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1062_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1063_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1063_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1063_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1063_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1063_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1063_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1064_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1064_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1064_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1064_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1064_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1064_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1065_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1065_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1065_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1065_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1065_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1065_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1066_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1066_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1066_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1066_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1066_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1066_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1067_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1067_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1067_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1067_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1067_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1067_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1068_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1068_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1068_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1068_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1068_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1068_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1069_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1069_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1069_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1069_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1069_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1069_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1070_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1070_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1070_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1070_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1070_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1070_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1071_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1071_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1071_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1071_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1071_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1071_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1072_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1072_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1072_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1072_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1072_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1072_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1073_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1073_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1073_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1073_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1073_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1073_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1074_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1074_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1074_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1074_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1074_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1074_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1075_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1075_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1075_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1075_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1075_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1075_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1076_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1076_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1076_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1076_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1076_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1076_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1077_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1077_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1077_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1077_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1077_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1077_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1078_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1078_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1078_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1078_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1078_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1078_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1079_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1079_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1079_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1079_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1079_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1079_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1080_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1080_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1080_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1080_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1080_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1080_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1081_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1081_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1081_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1081_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1081_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1081_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1082_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1082_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1082_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1082_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1082_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1082_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1083_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1083_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1083_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1083_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1083_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1083_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1084_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1084_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1084_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1084_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1084_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1084_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1085_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1085_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1085_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1085_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1085_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1085_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1086_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1086_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1086_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1086_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1086_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1086_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1087_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1087_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1087_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1087_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1087_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1087_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1088_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1088_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1088_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1088_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1088_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1088_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1089_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1089_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1089_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1089_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1089_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1089_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1090_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1090_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1090_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1090_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1090_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1090_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1091_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1091_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1091_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1091_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1091_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1091_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1092_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1092_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1092_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1092_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1092_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1092_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1093_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1093_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1093_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1093_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1093_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1093_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1094_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1094_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1094_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1094_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1094_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1094_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1095_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1095_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1095_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1095_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1095_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1095_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1096_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1096_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1096_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1096_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1096_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1096_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1097_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1097_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1097_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1097_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1097_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1097_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1098_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1098_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1098_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1098_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1098_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1098_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1099_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1099_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1099_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1099_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1099_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1099_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1100_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1100_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1100_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1100_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1100_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1100_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1101_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1101_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1101_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1101_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1101_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1101_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1102_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1102_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1102_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1102_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1102_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1102_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1103_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1103_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1103_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1103_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1103_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1103_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1104_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1104_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1104_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1104_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1104_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1104_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1105_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1105_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1105_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1105_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1105_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1105_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1106_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1106_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1106_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1106_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1106_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1106_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1107_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1107_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1107_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1107_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1107_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1107_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1108_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1108_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1108_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1108_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1108_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1108_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1109_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1109_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1109_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1109_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1109_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1109_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1110_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1110_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1110_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1110_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1110_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1110_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1111_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1111_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1111_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1111_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1111_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1111_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1112_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1112_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1112_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1112_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1112_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1112_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1113_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1113_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1113_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1113_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1113_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1113_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1114_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1114_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1114_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1114_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1114_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1114_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1115_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1115_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1115_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1115_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1115_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1115_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1116_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1116_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1116_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1116_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1116_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1116_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1117_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1117_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1117_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1117_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1117_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1117_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1118_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1118_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1118_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1118_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1118_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1118_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1119_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1119_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1119_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1119_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1119_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1119_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1120_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1120_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1120_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1120_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1120_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1120_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1121_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1121_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1121_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1121_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1121_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1121_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1122_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1122_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1122_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1122_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1122_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1122_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1123_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1123_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1123_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1123_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1123_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1123_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1124_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1124_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1124_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1124_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1124_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1124_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1125_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1125_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1125_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1125_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1125_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1125_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1126_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1126_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1126_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1126_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1126_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1126_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1127_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1127_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1127_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1127_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1127_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1127_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1128_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1128_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1128_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1128_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1128_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1128_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1129_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1129_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1129_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1129_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1129_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1129_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1130_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1130_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1130_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1130_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1130_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1130_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1131_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1131_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1131_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1131_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1131_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1131_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1132_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1132_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1132_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1132_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1132_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1132_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1133_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1133_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1133_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1133_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1133_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1133_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1134_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1134_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1134_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1134_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1134_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1134_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1135_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1135_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1135_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1135_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1135_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1135_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1136_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1136_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1136_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1136_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1136_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1136_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1137_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1137_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1137_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1137_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1137_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1137_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1138_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1138_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1138_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1138_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1138_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1138_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1139_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1139_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1139_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1139_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1139_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1139_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1140_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1140_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1140_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1140_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1140_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1140_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1141_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1141_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1141_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1141_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1141_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1141_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1142_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1142_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1142_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1142_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1142_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1142_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1143_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1143_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1143_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1143_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1143_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1143_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1144_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1144_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1144_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1144_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1144_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1144_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1145_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1145_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1145_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1145_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1145_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1145_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1146_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1146_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1146_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1146_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1146_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1146_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1147_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1147_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1147_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1147_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1147_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1147_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1148_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1148_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1148_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1148_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1148_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1148_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1149_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1149_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1149_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1149_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1149_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1149_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1150_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1150_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1150_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1150_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1150_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1150_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1151_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1151_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1151_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1151_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1151_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1151_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1152_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1152_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1152_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1152_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1152_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1152_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1153_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1153_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1153_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1153_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1153_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1153_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1154_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1154_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1154_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1154_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1154_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1154_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1155_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1155_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1155_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1155_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1155_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1155_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1156_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1156_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1156_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1156_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1156_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1156_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1157_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1157_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1157_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1157_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1157_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1157_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1158_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1158_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1158_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1158_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1158_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1158_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1159_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1159_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1159_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1159_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1159_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1159_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1160_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1160_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1160_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1160_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1160_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1160_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1161_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1161_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1161_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1161_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1161_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1161_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1162_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1162_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1162_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1162_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1162_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1162_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1163_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1163_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1163_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1163_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1163_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1163_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1164_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1164_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1164_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1164_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1164_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1164_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1165_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1165_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1165_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1165_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1165_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1165_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1166_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1166_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1166_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1166_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1166_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1166_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1167_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1167_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1167_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1167_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1167_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1167_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1168_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1168_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1168_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1168_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1168_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1168_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1169_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1169_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1169_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1169_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1169_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1169_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1170_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1170_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1170_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1170_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1170_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1170_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1171_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1171_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1171_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1171_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1171_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1171_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1172_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1172_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1172_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1172_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1172_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1172_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1173_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1173_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1173_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1173_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1173_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1173_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1174_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1174_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1174_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1174_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1174_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1174_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1175_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1175_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1175_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1175_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1175_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1175_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1176_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1176_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1176_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1176_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1176_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1176_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1177_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1177_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1177_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1177_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1177_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1177_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1178_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1178_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1178_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1178_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1178_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1178_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1179_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1179_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1179_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1179_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1179_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1179_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1180_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1180_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1180_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1180_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1180_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1180_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1181_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1181_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1181_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1181_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1181_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1181_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1182_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1182_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1182_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1182_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1182_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1182_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1183_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1183_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1183_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1183_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1183_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1183_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1184_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1184_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1184_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1184_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1184_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1184_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1185_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1185_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1185_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1185_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1185_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1185_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1186_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1186_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1186_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1186_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1186_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1186_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1187_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1187_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1187_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1187_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1187_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1187_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1188_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1188_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1188_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1188_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1188_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1188_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1189_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1189_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1189_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1189_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1189_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1189_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1190_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1190_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1190_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1190_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1190_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1190_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1191_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1191_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1191_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1191_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1191_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1191_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1192_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1192_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1192_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1192_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1192_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1192_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1193_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1193_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1193_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1193_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1193_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1193_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1194_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1194_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1194_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1194_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1194_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1194_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1195_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1195_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1195_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1195_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1195_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1195_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1196_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1196_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1196_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1196_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1196_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1196_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1197_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1197_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1197_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1197_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1197_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1197_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1198_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1198_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1198_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1198_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1198_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1198_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1199_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1199_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1199_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1199_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1199_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1199_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1200_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1200_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1200_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1200_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1200_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1200_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1201_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1201_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1201_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1201_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1201_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1201_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1202_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1202_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1202_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1202_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1202_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1202_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1203_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1203_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1203_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1203_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1203_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1203_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1204_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1204_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1204_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1204_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1204_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1204_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1205_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1205_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1205_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1205_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1205_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1205_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1206_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1206_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1206_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1206_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1206_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1206_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1207_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1207_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1207_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1207_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1207_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1207_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1208_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1208_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1208_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1208_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1208_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1208_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1209_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1209_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1209_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1209_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1209_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1209_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1210_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1210_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1210_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1210_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1210_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1210_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1211_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1211_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1211_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1211_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1211_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1211_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1212_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1212_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1212_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1212_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1212_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1212_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1213_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1213_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1213_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1213_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1213_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1213_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1214_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1214_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1214_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1214_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1214_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1214_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1215_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1215_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1215_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1215_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1215_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1215_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1216_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1216_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1216_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1216_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1216_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1216_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1217_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1217_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1217_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1217_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1217_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1217_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1218_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1218_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1218_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1218_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1218_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1218_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1219_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1219_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1219_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1219_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1219_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1219_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1220_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1220_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1220_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1220_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1220_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1220_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1221_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1221_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1221_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1221_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1221_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1221_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1222_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1222_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1222_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1222_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1222_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1222_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1223_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1223_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1223_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1223_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1223_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1223_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1224_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1224_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1224_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1224_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1224_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1224_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1225_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1225_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1225_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1225_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1225_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1225_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1226_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1226_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1226_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1226_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1226_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1226_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1227_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1227_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1227_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1227_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1227_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1227_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1228_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1228_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1228_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1228_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1228_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1228_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1229_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1229_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1229_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1229_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1229_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1229_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1230_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1230_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1230_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1230_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1230_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1230_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1231_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1231_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1231_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1231_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1231_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1231_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1232_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1232_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1232_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1232_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1232_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1232_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1233_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1233_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1233_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1233_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1233_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1233_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1234_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1234_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1234_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1234_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1234_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1234_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1235_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1235_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1235_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1235_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1235_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1235_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1236_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1236_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1236_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1236_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1236_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1236_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1237_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1237_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1237_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1237_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1237_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1237_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1238_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1238_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1238_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1238_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1238_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1238_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1239_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1239_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1239_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1239_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1239_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1239_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1240_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1240_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1240_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1240_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1240_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1240_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1241_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1241_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1241_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1241_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1241_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1241_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1242_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1242_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1242_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1242_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1242_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1242_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1243_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1243_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1243_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1243_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1243_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1243_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1244_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1244_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1244_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1244_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1244_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1244_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1245_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1245_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1245_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1245_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1245_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1245_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1246_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1246_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1246_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1246_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1246_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1246_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1247_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1247_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1247_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1247_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1247_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1247_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1248_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1248_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1248_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1248_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1248_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1248_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1249_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1249_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1249_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1249_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1249_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1249_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1250_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1250_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_1250_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_1250_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_1250_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_1250_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_864_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_864_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_864_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_864_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_864_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_864_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_865_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_865_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_865_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_865_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_865_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_865_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_866_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_866_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_866_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_866_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_866_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_866_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_867_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_867_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_867_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_867_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_867_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_867_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_868_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_868_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_868_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_868_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_868_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_868_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_869_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_869_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_869_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_869_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_869_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_869_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_870_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_870_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_870_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_870_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_870_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_870_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_871_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_871_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_871_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_871_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_871_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_871_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_872_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_872_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_872_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_872_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_872_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_872_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_873_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_873_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_873_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_873_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_873_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_873_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_874_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_874_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_874_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_874_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_874_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_874_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_875_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_875_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_875_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_875_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_875_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_875_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_876_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_876_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_876_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_876_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_876_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_876_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_877_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_877_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_877_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_877_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_877_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_877_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_878_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_878_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_878_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_878_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_878_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_878_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_879_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_879_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_879_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_879_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_879_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_879_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_880_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_880_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_880_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_880_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_880_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_880_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_881_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_881_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_881_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_881_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_881_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_881_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_882_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_882_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_882_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_882_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_882_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_882_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_883_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_883_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_883_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_883_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_883_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_883_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_884_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_884_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_884_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_884_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_884_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_884_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_885_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_885_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_885_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_885_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_885_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_885_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_886_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_886_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_886_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_886_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_886_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_886_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_887_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_887_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_887_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_887_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_887_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_887_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_888_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_888_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_888_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_888_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_888_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_888_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_889_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_889_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_889_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_889_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_889_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_889_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_890_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_890_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_890_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_890_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_890_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_890_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_891_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_891_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_891_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_891_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_891_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_891_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_892_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_892_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_892_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_892_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_892_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_892_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_893_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_893_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_893_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_893_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_893_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_893_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_894_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_894_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_894_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_894_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_894_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_894_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_895_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_895_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_895_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_895_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_895_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_895_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_896_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_896_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_896_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_896_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_896_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_896_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_897_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_897_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_897_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_897_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_897_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_897_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_898_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_898_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_898_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_898_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_898_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_898_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_899_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_899_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_899_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_899_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_899_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_899_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_900_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_900_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_900_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_900_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_900_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_900_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_901_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_901_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_901_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_901_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_901_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_901_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_902_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_902_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_902_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_902_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_902_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_902_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_903_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_903_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_903_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_903_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_903_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_903_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_904_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_904_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_904_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_904_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_904_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_904_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_905_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_905_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_905_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_905_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_905_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_905_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_906_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_906_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_906_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_906_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_906_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_906_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_907_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_907_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_907_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_907_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_907_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_907_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_908_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_908_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_908_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_908_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_908_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_908_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_909_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_909_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_909_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_909_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_909_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_909_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_910_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_910_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_910_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_910_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_910_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_910_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_911_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_911_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_911_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_911_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_911_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_911_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_912_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_912_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_912_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_912_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_912_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_912_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_913_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_913_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_913_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_913_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_913_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_913_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_914_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_914_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_914_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_914_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_914_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_914_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_915_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_915_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_915_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_915_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_915_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_915_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_916_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_916_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_916_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_916_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_916_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_916_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_917_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_917_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_917_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_917_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_917_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_917_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_918_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_918_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_918_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_918_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_918_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_918_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_919_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_919_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_919_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_919_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_919_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_919_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_920_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_920_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_920_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_920_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_920_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_920_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_921_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_921_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_921_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_921_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_921_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_921_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_922_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_922_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_922_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_922_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_922_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_922_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_923_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_923_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_923_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_923_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_923_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_923_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_924_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_924_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_924_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_924_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_924_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_924_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_925_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_925_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_925_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_925_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_925_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_925_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_926_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_926_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_926_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_926_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_926_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_926_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_927_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_927_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_927_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_927_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_927_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_927_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_928_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_928_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_928_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_928_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_928_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_928_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_929_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_929_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_929_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_929_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_929_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_929_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_930_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_930_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_930_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_930_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_930_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_930_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_931_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_931_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_931_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_931_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_931_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_931_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_932_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_932_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_932_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_932_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_932_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_932_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_933_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_933_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_933_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_933_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_933_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_933_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_934_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_934_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_934_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_934_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_934_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_934_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_935_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_935_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_935_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_935_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_935_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_935_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_936_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_936_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_936_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_936_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_936_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_936_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_937_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_937_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_937_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_937_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_937_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_937_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_938_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_938_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_938_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_938_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_938_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_938_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_939_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_939_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_939_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_939_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_939_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_939_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_940_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_940_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_940_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_940_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_940_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_940_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_941_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_941_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_941_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_941_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_941_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_941_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_942_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_942_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_942_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_942_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_942_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_942_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_943_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_943_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_943_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_943_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_943_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_943_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_944_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_944_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_944_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_944_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_944_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_944_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_945_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_945_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_945_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_945_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_945_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_945_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_946_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_946_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_946_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_946_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_946_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_946_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_947_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_947_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_947_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_947_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_947_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_947_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_948_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_948_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_948_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_948_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_948_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_948_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_949_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_949_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_949_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_949_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_949_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_949_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_950_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_950_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_950_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_950_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_950_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_950_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_951_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_951_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_951_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_951_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_951_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_951_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_952_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_952_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_952_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_952_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_952_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_952_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_953_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_953_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_953_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_953_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_953_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_953_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_954_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_954_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_954_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_954_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_954_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_954_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_955_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_955_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_955_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_955_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_955_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_955_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_956_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_956_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_956_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_956_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_956_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_956_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_957_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_957_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_957_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_957_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_957_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_957_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_958_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_958_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_958_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_958_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_958_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_958_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_959_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_959_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_959_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_959_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_959_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_959_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_960_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_960_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_960_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_960_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_960_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_960_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_961_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_961_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_961_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_961_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_961_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_961_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_962_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_962_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_962_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_962_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_962_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_962_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_963_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_963_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_963_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_963_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_963_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_963_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_964_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_964_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_964_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_964_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_964_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_964_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_965_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_965_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_965_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_965_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_965_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_965_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_966_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_966_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_966_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_966_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_966_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_966_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_967_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_967_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_967_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_967_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_967_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_967_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_968_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_968_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_968_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_968_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_968_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_968_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_969_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_969_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_969_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_969_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_969_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_969_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_970_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_970_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_970_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_970_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_970_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_970_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_971_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_971_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_971_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_971_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_971_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_971_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_972_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_972_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_972_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_972_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_972_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_972_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_973_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_973_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_973_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_973_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_973_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_973_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_974_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_974_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_974_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_974_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_974_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_974_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_975_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_975_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_975_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_975_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_975_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_975_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_976_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_976_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_976_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_976_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_976_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_976_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_977_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_977_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_977_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_977_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_977_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_977_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_978_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_978_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_978_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_978_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_978_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_978_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_979_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_979_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_979_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_979_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_979_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_979_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_980_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_980_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_980_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_980_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_980_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_980_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_981_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_981_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_981_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_981_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_981_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_981_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_982_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_982_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_982_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_982_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_982_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_982_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_983_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_983_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_983_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_983_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_983_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_983_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_984_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_984_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_984_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_984_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_984_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_984_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_985_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_985_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_985_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_985_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_985_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_985_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_986_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_986_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_986_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_986_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_986_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_986_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_987_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_987_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_987_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_987_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_987_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_987_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_988_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_988_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_988_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_988_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_988_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_988_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_989_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_989_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_989_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_989_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_989_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_989_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_990_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_990_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_990_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_990_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_990_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_990_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_991_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_991_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_991_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_991_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_991_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_991_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_992_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_992_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_992_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_992_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_992_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_992_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_993_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_993_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_993_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_993_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_993_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_993_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_994_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_994_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_994_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_994_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_994_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_994_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_995_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_995_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_995_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_995_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_995_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_995_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_996_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_996_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_996_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_996_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_996_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_996_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_997_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_997_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_997_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_997_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_997_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_997_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_998_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_998_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_998_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_998_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_998_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_998_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_999_chunk_carpark_number_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_999_chunk_carpark_number_idx ON _timescaledb_internal._hyper_3_999_chunk USING btree (carpark_number);


--
-- Name: _hyper_3_999_chunk_temp_availability_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_3_999_chunk_temp_availability_time_idx ON _timescaledb_internal._hyper_3_999_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1429_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1429_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1429_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1430_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1430_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1430_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1431_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1431_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1431_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1432_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1432_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1432_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1433_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1433_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1433_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1434_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1434_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1434_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1435_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1435_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1435_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1436_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1436_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1436_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1437_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1437_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1437_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1438_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1438_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1438_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1439_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1439_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1439_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1440_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1440_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1440_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1441_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1441_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1441_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1442_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1442_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1442_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1443_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1443_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1443_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1444_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1444_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1444_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1445_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1445_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1445_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1446_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1446_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1446_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1447_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1447_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1447_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1448_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1448_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1448_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1449_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1449_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1449_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1450_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1450_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1450_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1451_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1451_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1451_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1452_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1452_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1452_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1453_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1453_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1453_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1454_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1454_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1454_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1455_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1455_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1455_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1456_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1456_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1456_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1457_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1457_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1457_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1458_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1458_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1458_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1459_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1459_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1459_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1460_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1460_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1460_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1461_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1461_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1461_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1462_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1462_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1462_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1463_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1463_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1463_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1464_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1464_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1464_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1465_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1465_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1465_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1466_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1466_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1466_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1467_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1467_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1467_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1468_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1468_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1468_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1469_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1469_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1469_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1470_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1470_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1470_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1471_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1471_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1471_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1472_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1472_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1472_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1473_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1473_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1473_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1474_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1474_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1474_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1475_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1475_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1475_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1476_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1476_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1476_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1477_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1477_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1477_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1478_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1478_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1478_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1479_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1479_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1479_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1480_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1480_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1480_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1481_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1481_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1481_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1482_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1482_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1482_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1483_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1483_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1483_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1484_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1484_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1484_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1485_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1485_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1485_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1486_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1486_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1486_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1487_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1487_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1487_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1488_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1488_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1488_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1489_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1489_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1489_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1490_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1490_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1490_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1491_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1491_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1491_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1492_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1492_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1492_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1493_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1493_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1493_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1494_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1494_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1494_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1495_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1495_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1495_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1496_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1496_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1496_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1497_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1497_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1497_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1498_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1498_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1498_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1499_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1499_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1499_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1500_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1500_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1500_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1501_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1501_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1501_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1502_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1502_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1502_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1503_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1503_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1503_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1504_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1504_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1504_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1505_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1505_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1505_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1506_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1506_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1506_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1507_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1507_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1507_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1508_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1508_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1508_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1509_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1509_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1509_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1510_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1510_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1510_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1511_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1511_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1511_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1512_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1512_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1512_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1513_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1513_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1513_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1514_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1514_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1514_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1515_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1515_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1515_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1516_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1516_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1516_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1517_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1517_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1517_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1518_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1518_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1518_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1519_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1519_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1519_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1520_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1520_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1520_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1521_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1521_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1521_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1522_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1522_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1522_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1523_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1523_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1523_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1524_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1524_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1524_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1525_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1525_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1525_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1526_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1526_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1526_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1527_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1527_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1527_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1528_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1528_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1528_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1529_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1529_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1529_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1530_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1530_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1530_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1531_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1531_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1531_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1532_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1532_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1532_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1533_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1533_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1533_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1534_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1534_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1534_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1535_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1535_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1535_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1536_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1536_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1536_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1537_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1537_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1537_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1538_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1538_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1538_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1539_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1539_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1539_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1540_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1540_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1540_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1541_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1541_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1541_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1542_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1542_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1542_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1543_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1543_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1543_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1544_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1544_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1544_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1545_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1545_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1545_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1546_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1546_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1546_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1547_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1547_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1547_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1548_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1548_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1548_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1549_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1549_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1549_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1550_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1550_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1550_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1551_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1551_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1551_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1552_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1552_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1552_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1553_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1553_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1553_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1554_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1554_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1554_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1555_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1555_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1555_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1556_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1556_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1556_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1557_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1557_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1557_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1558_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1558_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1558_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1559_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1559_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1559_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1560_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1560_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1560_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1561_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1561_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1561_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1562_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1562_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1562_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1563_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1563_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1563_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1564_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1564_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1564_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1565_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1565_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1565_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1566_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1566_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1566_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1567_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1567_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1567_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1568_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1568_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1568_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1569_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1569_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1569_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1570_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1570_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1570_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1571_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1571_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1571_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1572_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1572_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1572_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1573_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1573_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1573_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1574_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1574_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1574_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1575_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1575_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1575_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1576_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1576_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1576_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1577_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1577_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1577_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1578_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1578_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1578_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1579_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1579_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1579_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1580_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1580_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1580_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1581_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1581_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1581_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1582_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1582_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1582_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1583_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1583_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1583_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1584_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1584_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1584_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1585_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1585_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1585_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1586_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1586_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1586_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1587_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1587_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1587_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1588_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1588_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1588_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1589_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1589_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1589_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1590_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1590_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1590_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1591_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1591_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1591_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1592_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1592_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1592_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1593_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1593_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1593_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1594_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1594_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1594_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1595_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1595_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1595_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1596_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1596_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1596_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1597_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1597_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1597_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1598_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1598_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1598_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1599_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1599_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1599_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1600_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1600_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1600_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1601_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1601_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1601_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1602_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1602_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1602_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1603_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1603_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1603_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1604_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1604_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1604_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1605_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1605_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1605_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_1606_chunk_coe_bidding_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_4_1606_chunk_coe_bidding_time_idx ON _timescaledb_internal._hyper_4_1606_chunk USING btree ("time" DESC);


--
-- Name: carpark_number_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX carpark_number_idx ON public.carpark_availability USING btree (carpark_number);


--
-- Name: coe_bidding_time_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX coe_bidding_time_idx ON public.coe_bidding USING btree ("time" DESC);


--
-- Name: temp_availability_time_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX temp_availability_time_idx ON public.carpark_availability USING btree ("time" DESC);


--
-- Name: carpark_availability ts_insert_blocker; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER ts_insert_blocker BEFORE INSERT ON public.carpark_availability FOR EACH ROW EXECUTE FUNCTION _timescaledb_functions.insert_blocker();


--
-- Name: coe_bidding ts_insert_blocker; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER ts_insert_blocker BEFORE INSERT ON public.coe_bidding FOR EACH ROW EXECUTE FUNCTION _timescaledb_functions.insert_blocker();


--
-- PostgreSQL database dump complete
--

