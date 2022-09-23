--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12 (Debian 12.12-1.pgdg110+1)
-- Dumped by pg_dump version 12.12 (Debian 12.12-1.pgdg110+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cm_ad_hoc_attributes; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_ad_hoc_attributes (
    id integer NOT NULL,
    tag character varying(128),
    value character varying(256),
    co_person_role_id integer,
    org_identity_id integer,
    co_department_id integer,
    organization_id integer,
    source_ad_hoc_attribute_id integer,
    created timestamp without time zone,
    modified timestamp without time zone,
    ad_hoc_attribute_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_ad_hoc_attributes OWNER TO registry_user;

--
-- Name: cm_ad_hoc_attributes_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_ad_hoc_attributes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_ad_hoc_attributes_id_seq OWNER TO registry_user;

--
-- Name: cm_ad_hoc_attributes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_ad_hoc_attributes_id_seq OWNED BY public.cm_ad_hoc_attributes.id;


--
-- Name: cm_addresses; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_addresses (
    id integer NOT NULL,
    street text,
    room character varying(64),
    locality character varying(128),
    state character varying(128),
    postal_code character varying(16),
    country character varying(128),
    description character varying(128),
    type character varying(32),
    language character varying(16),
    co_person_role_id integer,
    org_identity_id integer,
    co_department_id integer,
    organization_id integer,
    source_address_id integer,
    created timestamp without time zone,
    modified timestamp without time zone,
    address_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_addresses OWNER TO registry_user;

--
-- Name: cm_addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_addresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_addresses_id_seq OWNER TO registry_user;

--
-- Name: cm_addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_addresses_id_seq OWNED BY public.cm_addresses.id;


--
-- Name: cm_api_users; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_api_users (
    id integer NOT NULL,
    co_id integer,
    privileged boolean,
    status character varying(2),
    username character varying(50),
    password character varying(40),
    valid_from timestamp without time zone,
    valid_through timestamp without time zone,
    remote_ip character varying(80),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_api_users OWNER TO registry_user;

--
-- Name: cm_api_users_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_api_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_api_users_id_seq OWNER TO registry_user;

--
-- Name: cm_api_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_api_users_id_seq OWNED BY public.cm_api_users.id;


--
-- Name: cm_application_preferences; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_application_preferences (
    id integer NOT NULL,
    co_person_id integer NOT NULL,
    tag character varying(128),
    value character varying(256),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_application_preferences OWNER TO registry_user;

--
-- Name: cm_application_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_application_preferences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_application_preferences_id_seq OWNER TO registry_user;

--
-- Name: cm_application_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_application_preferences_id_seq OWNED BY public.cm_application_preferences.id;


--
-- Name: cm_attribute_enumerations; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_attribute_enumerations (
    id integer NOT NULL,
    co_id integer,
    attribute character varying(80) NOT NULL,
    optvalue character varying(128),
    status character varying(2),
    dictionary_id integer,
    allow_other boolean,
    created timestamp without time zone,
    modified timestamp without time zone,
    attribute_enumeration_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_attribute_enumerations OWNER TO registry_user;

--
-- Name: cm_attribute_enumerations_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_attribute_enumerations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_attribute_enumerations_id_seq OWNER TO registry_user;

--
-- Name: cm_attribute_enumerations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_attribute_enumerations_id_seq OWNED BY public.cm_attribute_enumerations.id;


--
-- Name: cm_authentication_events; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_authentication_events (
    id integer NOT NULL,
    authenticated_identifier character varying(256),
    authentication_event character varying(2),
    remote_ip character varying(40),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_authentication_events OWNER TO registry_user;

--
-- Name: cm_authentication_events_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_authentication_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_authentication_events_id_seq OWNER TO registry_user;

--
-- Name: cm_authentication_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_authentication_events_id_seq OWNED BY public.cm_authentication_events.id;


--
-- Name: cm_authenticator_statuses; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_authenticator_statuses (
    id integer NOT NULL,
    authenticator_id integer,
    co_person_id integer,
    locked boolean,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_authenticator_statuses OWNER TO registry_user;

--
-- Name: cm_authenticator_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_authenticator_statuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_authenticator_statuses_id_seq OWNER TO registry_user;

--
-- Name: cm_authenticator_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_authenticator_statuses_id_seq OWNED BY public.cm_authenticator_statuses.id;


--
-- Name: cm_authenticators; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_authenticators (
    id integer NOT NULL,
    co_id integer NOT NULL,
    description character varying(256),
    plugin character varying(32),
    status character varying(2),
    co_message_template_id integer,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_authenticators OWNER TO registry_user;

--
-- Name: cm_authenticators_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_authenticators_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_authenticators_id_seq OWNER TO registry_user;

--
-- Name: cm_authenticators_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_authenticators_id_seq OWNED BY public.cm_authenticators.id;


--
-- Name: cm_clusters; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_clusters (
    id integer NOT NULL,
    co_id integer NOT NULL,
    description character varying(256),
    plugin character varying(32),
    status character varying(2),
    created timestamp without time zone,
    modified timestamp without time zone,
    cluster_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_clusters OWNER TO registry_user;

--
-- Name: cm_clusters_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_clusters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_clusters_id_seq OWNER TO registry_user;

--
-- Name: cm_clusters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_clusters_id_seq OWNED BY public.cm_clusters.id;


--
-- Name: cm_cmp_enrollment_attributes; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_cmp_enrollment_attributes (
    id integer NOT NULL,
    cmp_enrollment_configuration_id integer NOT NULL,
    attribute character varying(80) NOT NULL,
    type character varying(32),
    required integer,
    env_name character varying(80),
    ldap_name character varying(80),
    saml_name character varying(80),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_cmp_enrollment_attributes OWNER TO registry_user;

--
-- Name: cm_cmp_enrollment_attributes_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_cmp_enrollment_attributes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_cmp_enrollment_attributes_id_seq OWNER TO registry_user;

--
-- Name: cm_cmp_enrollment_attributes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_cmp_enrollment_attributes_id_seq OWNED BY public.cm_cmp_enrollment_attributes.id;


--
-- Name: cm_cmp_enrollment_configurations; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_cmp_enrollment_configurations (
    id integer NOT NULL,
    name character varying(128),
    attrs_from_ldap boolean,
    attrs_from_saml boolean,
    attrs_from_env boolean,
    attrs_from_coef boolean,
    pool_org_identities boolean,
    eds_help_url character varying(256),
    eds_preferred_idps text,
    eds_hidden_idps text,
    redirect_on_logout character varying(1024),
    app_base character varying(64),
    status character varying(2),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_cmp_enrollment_configurations OWNER TO registry_user;

--
-- Name: cm_cmp_enrollment_configurations_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_cmp_enrollment_configurations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_cmp_enrollment_configurations_id_seq OWNER TO registry_user;

--
-- Name: cm_cmp_enrollment_configurations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_cmp_enrollment_configurations_id_seq OWNED BY public.cm_cmp_enrollment_configurations.id;


--
-- Name: cm_co_dashboard_widgets; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_dashboard_widgets (
    id integer NOT NULL,
    co_dashboard_id integer NOT NULL,
    description character varying(256),
    plugin character varying(32),
    status character varying(2),
    ordr integer,
    created timestamp without time zone,
    modified timestamp without time zone,
    co_dashboard_widget_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_dashboard_widgets OWNER TO registry_user;

--
-- Name: cm_co_dashboard_widgets_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_dashboard_widgets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_dashboard_widgets_id_seq OWNER TO registry_user;

--
-- Name: cm_co_dashboard_widgets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_dashboard_widgets_id_seq OWNED BY public.cm_co_dashboard_widgets.id;


--
-- Name: cm_co_dashboards; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_dashboards (
    id integer NOT NULL,
    co_id integer NOT NULL,
    name character varying(128),
    description character varying(128),
    header_text text,
    footer_text text,
    visibility character varying(2),
    visibility_co_group_id integer,
    status character varying(2),
    created timestamp without time zone,
    modified timestamp without time zone,
    co_dashboard_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_dashboards OWNER TO registry_user;

--
-- Name: cm_co_dashboards_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_dashboards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_dashboards_id_seq OWNER TO registry_user;

--
-- Name: cm_co_dashboards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_dashboards_id_seq OWNED BY public.cm_co_dashboards.id;


--
-- Name: cm_co_departments; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_departments (
    id integer NOT NULL,
    co_id integer NOT NULL,
    cou_id integer,
    type character varying(32),
    name character varying(128),
    description character varying(128),
    introduction text,
    leadership_co_group_id integer,
    administrative_co_group_id integer,
    support_co_group_id integer,
    created timestamp without time zone,
    modified timestamp without time zone,
    co_department_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_departments OWNER TO registry_user;

--
-- Name: cm_co_departments_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_departments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_departments_id_seq OWNER TO registry_user;

--
-- Name: cm_co_departments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_departments_id_seq OWNED BY public.cm_co_departments.id;


--
-- Name: cm_co_email_lists; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_email_lists (
    id integer NOT NULL,
    co_id integer NOT NULL,
    name character varying(64),
    description character varying(128),
    admins_co_group_id integer,
    members_co_group_id integer,
    moderators_co_group_id integer,
    status character varying(2),
    created timestamp without time zone,
    modified timestamp without time zone,
    co_email_list_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_email_lists OWNER TO registry_user;

--
-- Name: cm_co_email_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_email_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_email_lists_id_seq OWNER TO registry_user;

--
-- Name: cm_co_email_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_email_lists_id_seq OWNED BY public.cm_co_email_lists.id;


--
-- Name: cm_co_enrollment_attribute_defaults; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_enrollment_attribute_defaults (
    id integer NOT NULL,
    co_enrollment_attribute_id integer NOT NULL,
    affiliation character varying(32),
    value character varying(80),
    modifiable boolean,
    created timestamp without time zone,
    modified timestamp without time zone,
    co_enrollment_attribute_default_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_enrollment_attribute_defaults OWNER TO registry_user;

--
-- Name: cm_co_enrollment_attribute_defaults_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_enrollment_attribute_defaults_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_enrollment_attribute_defaults_id_seq OWNER TO registry_user;

--
-- Name: cm_co_enrollment_attribute_defaults_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_enrollment_attribute_defaults_id_seq OWNED BY public.cm_co_enrollment_attribute_defaults.id;


--
-- Name: cm_co_enrollment_attributes; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_enrollment_attributes (
    id integer NOT NULL,
    co_enrollment_flow_id integer NOT NULL,
    label character varying(80) NOT NULL,
    description character varying(256),
    attribute character varying(80) NOT NULL,
    required integer,
    required_fields character varying(160),
    ordr integer,
    hidden boolean,
    copy_to_coperson boolean,
    ignore_authoritative boolean,
    default_env character varying(80),
    login boolean,
    language character varying(16),
    created timestamp without time zone,
    modified timestamp without time zone,
    co_enrollment_attribute_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_enrollment_attributes OWNER TO registry_user;

--
-- Name: cm_co_enrollment_attributes_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_enrollment_attributes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_enrollment_attributes_id_seq OWNER TO registry_user;

--
-- Name: cm_co_enrollment_attributes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_enrollment_attributes_id_seq OWNED BY public.cm_co_enrollment_attributes.id;


--
-- Name: cm_co_enrollment_authenticators; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_enrollment_authenticators (
    id integer NOT NULL,
    co_enrollment_flow_id integer NOT NULL,
    authenticator_id integer NOT NULL,
    required integer,
    created timestamp without time zone,
    modified timestamp without time zone,
    co_enrollment_authenticator_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_enrollment_authenticators OWNER TO registry_user;

--
-- Name: cm_co_enrollment_authenticators_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_enrollment_authenticators_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_enrollment_authenticators_id_seq OWNER TO registry_user;

--
-- Name: cm_co_enrollment_authenticators_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_enrollment_authenticators_id_seq OWNED BY public.cm_co_enrollment_authenticators.id;


--
-- Name: cm_co_enrollment_clusters; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_enrollment_clusters (
    id integer NOT NULL,
    co_enrollment_flow_id integer NOT NULL,
    cluster_id integer NOT NULL,
    enabled boolean,
    created timestamp without time zone,
    modified timestamp without time zone,
    co_enrollment_cluster_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_enrollment_clusters OWNER TO registry_user;

--
-- Name: cm_co_enrollment_clusters_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_enrollment_clusters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_enrollment_clusters_id_seq OWNER TO registry_user;

--
-- Name: cm_co_enrollment_clusters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_enrollment_clusters_id_seq OWNED BY public.cm_co_enrollment_clusters.id;


--
-- Name: cm_co_enrollment_flow_wedges; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_enrollment_flow_wedges (
    id integer NOT NULL,
    co_enrollment_flow_id integer NOT NULL,
    description character varying(256),
    plugin character varying(32),
    status character varying(2),
    ordr integer,
    created timestamp without time zone,
    modified timestamp without time zone,
    co_enrollment_flow_wedge_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_enrollment_flow_wedges OWNER TO registry_user;

--
-- Name: cm_co_enrollment_flow_wedges_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_enrollment_flow_wedges_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_enrollment_flow_wedges_id_seq OWNER TO registry_user;

--
-- Name: cm_co_enrollment_flow_wedges_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_enrollment_flow_wedges_id_seq OWNED BY public.cm_co_enrollment_flow_wedges.id;


--
-- Name: cm_co_enrollment_flows; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_enrollment_flows (
    id integer NOT NULL,
    name character varying(128),
    co_id integer NOT NULL,
    authz_level character varying(2),
    authz_cou_id integer,
    authz_co_group_id integer,
    my_identity_shortcut boolean,
    match_policy character varying(2),
    enable_person_find boolean,
    approval_required boolean,
    approver_co_group_id integer,
    verify_email boolean,
    email_verification_mode character varying(2),
    invitation_validity integer,
    require_authn boolean,
    notification_co_group_id integer,
    status character varying(2),
    notify_from character varying(256),
    verification_subject character varying(256),
    verification_body text,
    verification_template_id integer,
    notify_on_approval boolean,
    approval_subject character varying(256),
    approval_body text,
    approval_template_id integer,
    denial_template_id integer,
    notify_on_finalize boolean,
    finalization_template_id integer,
    introduction_text text,
    conclusion_text text,
    t_and_c_mode character varying(2),
    redirect_on_submit character varying(1024),
    redirect_on_confirm character varying(1024),
    redirect_on_finalize character varying(1024),
    return_url_allowlist text,
    ignore_authoritative boolean,
    duplicate_mode character varying(2),
    co_theme_id integer,
    theme_stacking character varying(2),
    establish_authenticators boolean,
    establish_cluster_accounts boolean,
    created timestamp without time zone,
    modified timestamp without time zone,
    co_enrollment_flow_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_enrollment_flows OWNER TO registry_user;

--
-- Name: cm_co_enrollment_flows_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_enrollment_flows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_enrollment_flows_id_seq OWNER TO registry_user;

--
-- Name: cm_co_enrollment_flows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_enrollment_flows_id_seq OWNED BY public.cm_co_enrollment_flows.id;


--
-- Name: cm_co_enrollment_sources; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_enrollment_sources (
    id integer NOT NULL,
    co_enrollment_flow_id integer NOT NULL,
    org_identity_source_id integer NOT NULL,
    org_identity_mode character varying(2),
    verify_family_name boolean,
    ordr integer,
    created timestamp without time zone,
    modified timestamp without time zone,
    co_enrollment_source_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_enrollment_sources OWNER TO registry_user;

--
-- Name: cm_co_enrollment_sources_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_enrollment_sources_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_enrollment_sources_id_seq OWNER TO registry_user;

--
-- Name: cm_co_enrollment_sources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_enrollment_sources_id_seq OWNED BY public.cm_co_enrollment_sources.id;


--
-- Name: cm_co_expiration_counts; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_expiration_counts (
    id integer NOT NULL,
    co_expiration_policy_id integer NOT NULL,
    co_person_role_id integer NOT NULL,
    expiration_count integer,
    created timestamp without time zone,
    modified timestamp without time zone,
    co_expiration_count_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_expiration_counts OWNER TO registry_user;

--
-- Name: cm_co_expiration_counts_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_expiration_counts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_expiration_counts_id_seq OWNER TO registry_user;

--
-- Name: cm_co_expiration_counts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_expiration_counts_id_seq OWNED BY public.cm_co_expiration_counts.id;


--
-- Name: cm_co_expiration_policies; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_expiration_policies (
    id integer NOT NULL,
    co_id integer NOT NULL,
    description character varying(256),
    cond_cou_id integer,
    cond_affiliation character varying(32),
    cond_before_expiry integer,
    cond_after_expiry integer,
    cond_count integer,
    cond_status character varying(2),
    cond_sponsor_invalid boolean,
    act_affiliation character varying(32),
    act_clear_expiry boolean,
    act_cou_id integer,
    act_notify_co_admin boolean,
    act_notify_cou_admin boolean,
    act_notify_co_group_id integer,
    act_notify_co_person boolean,
    act_notify_sponsor boolean,
    act_notification_template_id integer,
    act_notification_subject character varying(256),
    act_notification_body text,
    act_status character varying(2),
    status character varying(2),
    created timestamp without time zone,
    modified timestamp without time zone,
    co_expiration_policy_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_expiration_policies OWNER TO registry_user;

--
-- Name: cm_co_expiration_policies_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_expiration_policies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_expiration_policies_id_seq OWNER TO registry_user;

--
-- Name: cm_co_expiration_policies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_expiration_policies_id_seq OWNED BY public.cm_co_expiration_policies.id;


--
-- Name: cm_co_extended_attributes; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_extended_attributes (
    id integer NOT NULL,
    co_id integer NOT NULL,
    name character varying(64),
    display_name character varying(64),
    type character varying(32),
    indx boolean,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_co_extended_attributes OWNER TO registry_user;

--
-- Name: cm_co_extended_attributes_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_extended_attributes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_extended_attributes_id_seq OWNER TO registry_user;

--
-- Name: cm_co_extended_attributes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_extended_attributes_id_seq OWNED BY public.cm_co_extended_attributes.id;


--
-- Name: cm_co_extended_types; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_extended_types (
    id integer NOT NULL,
    co_id integer NOT NULL,
    attribute character varying(32),
    name character varying(32),
    display_name character varying(64),
    edupersonaffiliation character varying(32),
    status character varying(2)
);


ALTER TABLE public.cm_co_extended_types OWNER TO registry_user;

--
-- Name: cm_co_extended_types_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_extended_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_extended_types_id_seq OWNER TO registry_user;

--
-- Name: cm_co_extended_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_extended_types_id_seq OWNED BY public.cm_co_extended_types.id;


--
-- Name: cm_co_group_members; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_group_members (
    id integer NOT NULL,
    co_group_id integer NOT NULL,
    co_person_id integer NOT NULL,
    member boolean,
    owner boolean,
    valid_from timestamp without time zone,
    valid_through timestamp without time zone,
    source_org_identity_id integer,
    co_group_nesting_id integer,
    created timestamp without time zone,
    modified timestamp without time zone,
    co_group_member_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_group_members OWNER TO registry_user;

--
-- Name: cm_co_group_members_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_group_members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_group_members_id_seq OWNER TO registry_user;

--
-- Name: cm_co_group_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_group_members_id_seq OWNED BY public.cm_co_group_members.id;


--
-- Name: cm_co_group_nestings; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_group_nestings (
    id integer NOT NULL,
    co_group_id integer NOT NULL,
    target_co_group_id integer NOT NULL,
    negate boolean,
    created timestamp without time zone,
    modified timestamp without time zone,
    co_group_nesting_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_group_nestings OWNER TO registry_user;

--
-- Name: cm_co_group_nestings_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_group_nestings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_group_nestings_id_seq OWNER TO registry_user;

--
-- Name: cm_co_group_nestings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_group_nestings_id_seq OWNED BY public.cm_co_group_nestings.id;


--
-- Name: cm_co_group_ois_mappings; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_group_ois_mappings (
    id integer NOT NULL,
    org_identity_source_id integer,
    attribute character varying(80) NOT NULL,
    comparison character varying(4) NOT NULL,
    pattern character varying(80) NOT NULL,
    co_group_id integer,
    created timestamp without time zone,
    modified timestamp without time zone,
    co_group_ois_mapping_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_group_ois_mappings OWNER TO registry_user;

--
-- Name: cm_co_group_ois_mappings_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_group_ois_mappings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_group_ois_mappings_id_seq OWNER TO registry_user;

--
-- Name: cm_co_group_ois_mappings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_group_ois_mappings_id_seq OWNED BY public.cm_co_group_ois_mappings.id;


--
-- Name: cm_co_grouper_provisioner_groups; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_grouper_provisioner_groups (
    id integer NOT NULL,
    co_grouper_provisioner_target_id integer,
    co_group_id integer,
    stem character varying(256),
    extension character varying(256),
    description character varying(256),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_co_grouper_provisioner_groups OWNER TO registry_user;

--
-- Name: cm_co_grouper_provisioner_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_grouper_provisioner_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_grouper_provisioner_groups_id_seq OWNER TO registry_user;

--
-- Name: cm_co_grouper_provisioner_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_grouper_provisioner_groups_id_seq OWNED BY public.cm_co_grouper_provisioner_groups.id;


--
-- Name: cm_co_grouper_provisioner_targets; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_grouper_provisioner_targets (
    id integer NOT NULL,
    co_provisioning_target_id integer,
    serverurl character varying(256),
    contextpath character varying(64),
    login character varying(64),
    password character varying(64),
    stem character varying(256),
    subject_identifier character varying(32),
    login_identifier character varying(32),
    email_identifier character varying(32),
    legacy_comanage_subject boolean,
    subject_view character varying(30),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_co_grouper_provisioner_targets OWNER TO registry_user;

--
-- Name: cm_co_grouper_provisioner_targets_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_grouper_provisioner_targets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_grouper_provisioner_targets_id_seq OWNER TO registry_user;

--
-- Name: cm_co_grouper_provisioner_targets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_grouper_provisioner_targets_id_seq OWNED BY public.cm_co_grouper_provisioner_targets.id;


--
-- Name: cm_co_groups; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_groups (
    id integer NOT NULL,
    co_id integer NOT NULL,
    cou_id integer,
    name character varying(128),
    description character varying(256),
    open boolean,
    status character varying(2),
    group_type character varying(2),
    auto boolean,
    nesting_mode_all boolean,
    created timestamp without time zone,
    modified timestamp without time zone,
    co_group_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_groups OWNER TO registry_user;

--
-- Name: cm_co_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_groups_id_seq OWNER TO registry_user;

--
-- Name: cm_co_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_groups_id_seq OWNED BY public.cm_co_groups.id;


--
-- Name: cm_co_identifier_assignments; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_identifier_assignments (
    id integer NOT NULL,
    co_id integer NOT NULL,
    status character varying(2),
    context character varying(2),
    identifier_type character varying(32) NOT NULL,
    email_type character varying(32),
    description character varying(256),
    login boolean,
    algorithm character varying(2),
    format character varying(256),
    minimum integer,
    maximum integer,
    permitted character varying(2),
    collision_resolution character varying(64),
    exclusions character varying(8),
    ordr integer,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_co_identifier_assignments OWNER TO registry_user;

--
-- Name: cm_co_identifier_assignments_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_identifier_assignments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_identifier_assignments_id_seq OWNER TO registry_user;

--
-- Name: cm_co_identifier_assignments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_identifier_assignments_id_seq OWNED BY public.cm_co_identifier_assignments.id;


--
-- Name: cm_co_identifier_validators; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_identifier_validators (
    id integer NOT NULL,
    co_id integer NOT NULL,
    description character varying(256),
    plugin character varying(32),
    co_extended_type_id integer NOT NULL,
    status character varying(2),
    created timestamp without time zone,
    modified timestamp without time zone,
    co_identifier_validator_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_identifier_validators OWNER TO registry_user;

--
-- Name: cm_co_identifier_validators_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_identifier_validators_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_identifier_validators_id_seq OWNER TO registry_user;

--
-- Name: cm_co_identifier_validators_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_identifier_validators_id_seq OWNED BY public.cm_co_identifier_validators.id;


--
-- Name: cm_co_invites; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_invites (
    id integer NOT NULL,
    co_person_id integer NOT NULL,
    invitation character varying(48) NOT NULL,
    mail character varying(256),
    skip_invite boolean,
    email_address_id integer,
    expires timestamp without time zone,
    created timestamp without time zone,
    modified timestamp without time zone,
    co_invite_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_invites OWNER TO registry_user;

--
-- Name: cm_co_invites_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_invites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_invites_id_seq OWNER TO registry_user;

--
-- Name: cm_co_invites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_invites_id_seq OWNED BY public.cm_co_invites.id;


--
-- Name: cm_co_job_history_records; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_job_history_records (
    id integer NOT NULL,
    co_job_id integer NOT NULL,
    record_key character varying(64),
    co_person_id integer,
    org_identity_id integer,
    comment character varying(256),
    status character varying(2),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_co_job_history_records OWNER TO registry_user;

--
-- Name: cm_co_job_history_records_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_job_history_records_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_job_history_records_id_seq OWNER TO registry_user;

--
-- Name: cm_co_job_history_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_job_history_records_id_seq OWNED BY public.cm_co_job_history_records.id;


--
-- Name: cm_co_jobs; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_jobs (
    id integer NOT NULL,
    co_id integer NOT NULL,
    job_type character varying(64),
    job_type_fk integer,
    job_mode character varying(16),
    job_params text,
    requeue_interval integer,
    retry_interval integer,
    requeued_from_co_job_id integer,
    status character varying(2),
    register_summary character varying(256),
    start_summary character varying(256),
    finish_summary character varying(256),
    queue_time timestamp without time zone,
    start_after_time timestamp without time zone,
    start_time timestamp without time zone,
    complete_time timestamp without time zone,
    percent_complete integer,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_co_jobs OWNER TO registry_user;

--
-- Name: cm_co_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_jobs_id_seq OWNER TO registry_user;

--
-- Name: cm_co_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_jobs_id_seq OWNED BY public.cm_co_jobs.id;


--
-- Name: cm_co_ldap_provisioner_attr_groupings; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_ldap_provisioner_attr_groupings (
    id integer NOT NULL,
    co_ldap_provisioner_target_id integer,
    "grouping" character varying(80),
    type character varying(32),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_co_ldap_provisioner_attr_groupings OWNER TO registry_user;

--
-- Name: cm_co_ldap_provisioner_attr_groupings_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_ldap_provisioner_attr_groupings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_ldap_provisioner_attr_groupings_id_seq OWNER TO registry_user;

--
-- Name: cm_co_ldap_provisioner_attr_groupings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_ldap_provisioner_attr_groupings_id_seq OWNED BY public.cm_co_ldap_provisioner_attr_groupings.id;


--
-- Name: cm_co_ldap_provisioner_attributes; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_ldap_provisioner_attributes (
    id integer NOT NULL,
    co_ldap_provisioner_target_id integer,
    attribute character varying(80),
    objectclass character varying(80),
    type character varying(32),
    export boolean,
    use_org_value boolean,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_co_ldap_provisioner_attributes OWNER TO registry_user;

--
-- Name: cm_co_ldap_provisioner_attributes_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_ldap_provisioner_attributes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_ldap_provisioner_attributes_id_seq OWNER TO registry_user;

--
-- Name: cm_co_ldap_provisioner_attributes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_ldap_provisioner_attributes_id_seq OWNED BY public.cm_co_ldap_provisioner_attributes.id;


--
-- Name: cm_co_ldap_provisioner_dns; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_ldap_provisioner_dns (
    id integer NOT NULL,
    co_ldap_provisioner_target_id integer,
    co_person_id integer,
    co_group_id integer,
    dn character varying(256),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_co_ldap_provisioner_dns OWNER TO registry_user;

--
-- Name: cm_co_ldap_provisioner_dns_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_ldap_provisioner_dns_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_ldap_provisioner_dns_id_seq OWNER TO registry_user;

--
-- Name: cm_co_ldap_provisioner_dns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_ldap_provisioner_dns_id_seq OWNED BY public.cm_co_ldap_provisioner_dns.id;


--
-- Name: cm_co_ldap_provisioner_targets; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_ldap_provisioner_targets (
    id integer NOT NULL,
    co_provisioning_target_id integer,
    serverurl character varying(256),
    binddn character varying(128),
    password character varying(64),
    basedn character varying(128),
    dn_attribute_name character varying(32),
    dn_identifier_type character varying(32),
    group_basedn character varying(128),
    person_ocs character varying(256),
    group_ocs character varying(256),
    attr_opts boolean,
    scope_suffix character varying(128),
    unconf_attr_mode character varying(2),
    oc_eduperson boolean,
    oc_edumember boolean,
    oc_groupofnames boolean,
    oc_posixaccount boolean,
    oc_posixgroup boolean,
    oc_voposixaccount boolean,
    oc_voposixgroup boolean,
    cluster_id integer,
    oc_ldappublickey boolean,
    oc_voperson boolean,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_co_ldap_provisioner_targets OWNER TO registry_user;

--
-- Name: cm_co_ldap_provisioner_targets_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_ldap_provisioner_targets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_ldap_provisioner_targets_id_seq OWNER TO registry_user;

--
-- Name: cm_co_ldap_provisioner_targets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_ldap_provisioner_targets_id_seq OWNED BY public.cm_co_ldap_provisioner_targets.id;


--
-- Name: cm_co_localizations; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_localizations (
    id integer NOT NULL,
    co_id integer NOT NULL,
    lkey character varying(40),
    language character varying(16),
    text character varying(512)
);


ALTER TABLE public.cm_co_localizations OWNER TO registry_user;

--
-- Name: cm_co_localizations_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_localizations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_localizations_id_seq OWNER TO registry_user;

--
-- Name: cm_co_localizations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_localizations_id_seq OWNED BY public.cm_co_localizations.id;


--
-- Name: cm_co_message_templates; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_message_templates (
    id integer NOT NULL,
    co_id integer NOT NULL,
    description character varying(256) NOT NULL,
    context character varying(2),
    cc character varying(256),
    bcc character varying(256),
    message_subject character varying(256),
    message_body text,
    message_body_html text,
    format character varying(4),
    status character varying(2),
    created timestamp without time zone,
    modified timestamp without time zone,
    co_message_template_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_message_templates OWNER TO registry_user;

--
-- Name: cm_co_message_templates_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_message_templates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_message_templates_id_seq OWNER TO registry_user;

--
-- Name: cm_co_message_templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_message_templates_id_seq OWNED BY public.cm_co_message_templates.id;


--
-- Name: cm_co_navigation_links; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_navigation_links (
    id integer NOT NULL,
    co_id integer NOT NULL,
    description character varying(256),
    title character varying(256) NOT NULL,
    url character varying(256),
    ordr integer,
    location character varying(32),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_co_navigation_links OWNER TO registry_user;

--
-- Name: cm_co_navigation_links_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_navigation_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_navigation_links_id_seq OWNER TO registry_user;

--
-- Name: cm_co_navigation_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_navigation_links_id_seq OWNED BY public.cm_co_navigation_links.id;


--
-- Name: cm_co_notifications; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_notifications (
    id integer NOT NULL,
    subject_co_person_id integer,
    subject_co_group_id integer,
    actor_co_person_id integer,
    recipient_co_person_id integer,
    recipient_co_group_id integer,
    resolver_co_person_id integer,
    action character varying(4),
    comment character varying(256),
    source_url character varying(160),
    source_controller character varying(80),
    source_action character varying(80),
    source_id integer,
    source_arg0 character varying(80),
    source_val0 character varying(80),
    email_subject character varying(256),
    email_body text,
    resolution_subject character varying(256),
    resolution_body text,
    status character varying(2),
    notification_time timestamp without time zone,
    resolution_time timestamp without time zone,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_co_notifications OWNER TO registry_user;

--
-- Name: cm_co_notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_notifications_id_seq OWNER TO registry_user;

--
-- Name: cm_co_notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_notifications_id_seq OWNED BY public.cm_co_notifications.id;


--
-- Name: cm_co_nsf_demographics; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_nsf_demographics (
    id integer NOT NULL,
    co_person_id integer NOT NULL,
    gender character varying(2),
    citizenship character varying(2),
    ethnicity character varying(2),
    race character varying(5),
    disability character varying(4),
    created timestamp without time zone,
    modified timestamp without time zone,
    co_nsf_demographic_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_nsf_demographics OWNER TO registry_user;

--
-- Name: cm_co_nsf_demographics_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_nsf_demographics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_nsf_demographics_id_seq OWNER TO registry_user;

--
-- Name: cm_co_nsf_demographics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_nsf_demographics_id_seq OWNED BY public.cm_co_nsf_demographics.id;


--
-- Name: cm_co_org_identity_links; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_org_identity_links (
    id integer NOT NULL,
    co_person_id integer NOT NULL,
    org_identity_id integer NOT NULL,
    created timestamp without time zone,
    modified timestamp without time zone,
    co_org_identity_link_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_org_identity_links OWNER TO registry_user;

--
-- Name: cm_co_org_identity_links_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_org_identity_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_org_identity_links_id_seq OWNER TO registry_user;

--
-- Name: cm_co_org_identity_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_org_identity_links_id_seq OWNED BY public.cm_co_org_identity_links.id;


--
-- Name: cm_co_people; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_people (
    id integer NOT NULL,
    co_id integer NOT NULL,
    status character varying(2),
    date_of_birth date,
    timezone character varying(80),
    created timestamp without time zone,
    modified timestamp without time zone,
    co_person_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_people OWNER TO registry_user;

--
-- Name: cm_co_people_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_people_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_people_id_seq OWNER TO registry_user;

--
-- Name: cm_co_people_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_people_id_seq OWNED BY public.cm_co_people.id;


--
-- Name: cm_co_person_roles; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_person_roles (
    id integer NOT NULL,
    co_person_id integer NOT NULL,
    sponsor_co_person_id integer,
    cou_id integer,
    affiliation character varying(32),
    title character varying(128),
    o character varying(128),
    ou character varying(128),
    valid_from timestamp without time zone,
    valid_through timestamp without time zone,
    ordr integer,
    status character varying(2),
    source_org_identity_id integer,
    created timestamp without time zone,
    modified timestamp without time zone,
    co_person_role_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_person_roles OWNER TO registry_user;

--
-- Name: cm_co_person_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_person_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_person_roles_id_seq OWNER TO registry_user;

--
-- Name: cm_co_person_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_person_roles_id_seq OWNED BY public.cm_co_person_roles.id;


--
-- Name: cm_co_petition_attributes; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_petition_attributes (
    id integer NOT NULL,
    co_petition_id integer NOT NULL,
    co_enrollment_attribute_id integer NOT NULL,
    attribute character varying(80),
    value character varying(160),
    attribute_foreign_key integer,
    created timestamp without time zone,
    modified timestamp without time zone,
    co_petition_attribute_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_petition_attributes OWNER TO registry_user;

--
-- Name: cm_co_petition_attributes_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_petition_attributes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_petition_attributes_id_seq OWNER TO registry_user;

--
-- Name: cm_co_petition_attributes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_petition_attributes_id_seq OWNED BY public.cm_co_petition_attributes.id;


--
-- Name: cm_co_petition_history_records; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_petition_history_records (
    id integer NOT NULL,
    co_petition_id integer NOT NULL,
    actor_co_person_id integer,
    action character varying(4),
    comment character varying(160),
    created timestamp without time zone,
    modified timestamp without time zone,
    co_petition_history_record_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_petition_history_records OWNER TO registry_user;

--
-- Name: cm_co_petition_history_records_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_petition_history_records_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_petition_history_records_id_seq OWNER TO registry_user;

--
-- Name: cm_co_petition_history_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_petition_history_records_id_seq OWNED BY public.cm_co_petition_history_records.id;


--
-- Name: cm_co_petitions; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_petitions (
    id integer NOT NULL,
    co_enrollment_flow_id integer NOT NULL,
    co_id integer NOT NULL,
    cou_id integer,
    enrollee_org_identity_id integer,
    archived_org_identity_id integer,
    enrollee_co_person_id integer,
    enrollee_co_person_role_id integer,
    petitioner_co_person_id integer,
    sponsor_co_person_id integer,
    approver_co_person_id integer,
    co_invite_id integer,
    authenticated_identifier character varying(256),
    petitioner_token character varying(48),
    enrollee_token character varying(48),
    return_url character varying(256),
    approver_comment character varying(256),
    status character varying(2),
    created timestamp without time zone,
    modified timestamp without time zone,
    co_petition_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_petitions OWNER TO registry_user;

--
-- Name: cm_co_petitions_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_petitions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_petitions_id_seq OWNER TO registry_user;

--
-- Name: cm_co_petitions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_petitions_id_seq OWNED BY public.cm_co_petitions.id;


--
-- Name: cm_co_pipelines; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_pipelines (
    id integer NOT NULL,
    co_id integer NOT NULL,
    name character varying(128),
    status character varying(2),
    match_strategy character varying(2),
    match_type character varying(32),
    match_server_id integer,
    sync_on_add boolean,
    sync_on_update boolean,
    sync_on_delete boolean,
    sync_coperson_status character varying(2),
    create_role boolean,
    sync_cou_id integer,
    sync_affiliation character varying(32),
    sync_replace_cou_id integer,
    sync_status_on_delete character varying(2),
    co_enrollment_flow_id integer,
    created timestamp without time zone,
    modified timestamp without time zone,
    co_pipeline_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_pipelines OWNER TO registry_user;

--
-- Name: cm_co_pipelines_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_pipelines_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_pipelines_id_seq OWNER TO registry_user;

--
-- Name: cm_co_pipelines_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_pipelines_id_seq OWNED BY public.cm_co_pipelines.id;


--
-- Name: cm_co_provisioning_exports; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_provisioning_exports (
    id integer NOT NULL,
    co_provisioning_target_id integer,
    co_person_id integer,
    co_group_id integer,
    co_email_list_id integer,
    co_service_id integer,
    exporttime timestamp without time zone,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_co_provisioning_exports OWNER TO registry_user;

--
-- Name: cm_co_provisioning_exports_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_provisioning_exports_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_provisioning_exports_id_seq OWNER TO registry_user;

--
-- Name: cm_co_provisioning_exports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_provisioning_exports_id_seq OWNED BY public.cm_co_provisioning_exports.id;


--
-- Name: cm_co_provisioning_target_filters; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_provisioning_target_filters (
    id integer NOT NULL,
    co_provisioning_target_id integer NOT NULL,
    data_filter_id integer NOT NULL,
    ordr integer,
    created timestamp without time zone,
    modified timestamp without time zone,
    co_provisioning_target_filter_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_provisioning_target_filters OWNER TO registry_user;

--
-- Name: cm_co_provisioning_target_filters_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_provisioning_target_filters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_provisioning_target_filters_id_seq OWNER TO registry_user;

--
-- Name: cm_co_provisioning_target_filters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_provisioning_target_filters_id_seq OWNED BY public.cm_co_provisioning_target_filters.id;


--
-- Name: cm_co_provisioning_targets; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_provisioning_targets (
    id integer NOT NULL,
    co_id integer NOT NULL,
    description character varying(256),
    plugin character varying(32),
    provision_co_group_id integer,
    skip_org_identity_source_id integer,
    status character varying(2),
    retry_interval integer,
    ordr integer,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_co_provisioning_targets OWNER TO registry_user;

--
-- Name: cm_co_provisioning_targets_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_provisioning_targets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_provisioning_targets_id_seq OWNER TO registry_user;

--
-- Name: cm_co_provisioning_targets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_provisioning_targets_id_seq OWNED BY public.cm_co_provisioning_targets.id;


--
-- Name: cm_co_self_service_permissions; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_self_service_permissions (
    id integer NOT NULL,
    co_id integer NOT NULL,
    model character varying(40),
    type character varying(16),
    permission character varying(16),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_co_self_service_permissions OWNER TO registry_user;

--
-- Name: cm_co_self_service_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_self_service_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_self_service_permissions_id_seq OWNER TO registry_user;

--
-- Name: cm_co_self_service_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_self_service_permissions_id_seq OWNED BY public.cm_co_self_service_permissions.id;


--
-- Name: cm_co_sequential_identifier_assignments; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_sequential_identifier_assignments (
    id integer NOT NULL,
    co_identifier_assignment_id integer NOT NULL,
    affix character varying(256),
    last integer,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_co_sequential_identifier_assignments OWNER TO registry_user;

--
-- Name: cm_co_sequential_identifier_assignments_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_sequential_identifier_assignments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_sequential_identifier_assignments_id_seq OWNER TO registry_user;

--
-- Name: cm_co_sequential_identifier_assignments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_sequential_identifier_assignments_id_seq OWNED BY public.cm_co_sequential_identifier_assignments.id;


--
-- Name: cm_co_services; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_services (
    id integer NOT NULL,
    co_id integer NOT NULL,
    cou_id integer,
    name character varying(128),
    description character varying(128),
    short_label character varying(32),
    co_group_id integer,
    cluster_id integer,
    service_url character varying(256),
    service_label character varying(1024),
    contact_email character varying(128),
    logo_url character varying(512),
    entitlement_uri character varying(256),
    visibility character varying(2),
    identifier_type character varying(32),
    authenticator_id integer,
    status character varying(2),
    created timestamp without time zone,
    modified timestamp without time zone,
    co_service_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_services OWNER TO registry_user;

--
-- Name: cm_co_services_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_services_id_seq OWNER TO registry_user;

--
-- Name: cm_co_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_services_id_seq OWNED BY public.cm_co_services.id;


--
-- Name: cm_co_settings; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_settings (
    id integer NOT NULL,
    co_id integer NOT NULL,
    enable_nsf_demo boolean,
    disable_expiration boolean,
    disable_ois_sync boolean,
    group_validity_sync_window integer,
    garbage_collection_interval integer,
    enable_normalization boolean,
    enable_empty_cou boolean,
    invitation_validity integer,
    permitted_fields_name character varying(160),
    required_fields_addr character varying(160),
    required_fields_name character varying(160),
    t_and_c_login_mode character varying(2),
    sponsor_eligibility character varying(2),
    theme_stacking character varying(2),
    sponsor_co_group_id integer,
    default_co_pipeline_id integer,
    elect_strategy_primary_name character varying(2),
    co_dashboard_id integer,
    co_theme_id integer,
    global_search_limit integer,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_co_settings OWNER TO registry_user;

--
-- Name: cm_co_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_settings_id_seq OWNER TO registry_user;

--
-- Name: cm_co_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_settings_id_seq OWNED BY public.cm_co_settings.id;


--
-- Name: cm_co_sql_provisioner_targets; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_sql_provisioner_targets (
    id integer NOT NULL,
    co_provisioning_target_id integer,
    server_id integer,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_co_sql_provisioner_targets OWNER TO registry_user;

--
-- Name: cm_co_sql_provisioner_targets_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_sql_provisioner_targets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_sql_provisioner_targets_id_seq OWNER TO registry_user;

--
-- Name: cm_co_sql_provisioner_targets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_sql_provisioner_targets_id_seq OWNED BY public.cm_co_sql_provisioner_targets.id;


--
-- Name: cm_co_t_and_c_agreements; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_t_and_c_agreements (
    id integer NOT NULL,
    co_terms_and_conditions_id integer,
    co_person_id integer NOT NULL,
    agreement_time timestamp without time zone,
    identifier character varying(256),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_co_t_and_c_agreements OWNER TO registry_user;

--
-- Name: cm_co_t_and_c_agreements_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_t_and_c_agreements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_t_and_c_agreements_id_seq OWNER TO registry_user;

--
-- Name: cm_co_t_and_c_agreements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_t_and_c_agreements_id_seq OWNED BY public.cm_co_t_and_c_agreements.id;


--
-- Name: cm_co_terms_and_conditions; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_terms_and_conditions (
    id integer NOT NULL,
    co_id integer NOT NULL,
    description character varying(256),
    url character varying(256),
    body text,
    cou_id integer,
    status character varying(2),
    ordr integer,
    created timestamp without time zone,
    modified timestamp without time zone,
    co_terms_and_conditions_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_terms_and_conditions OWNER TO registry_user;

--
-- Name: cm_co_terms_and_conditions_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_terms_and_conditions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_terms_and_conditions_id_seq OWNER TO registry_user;

--
-- Name: cm_co_terms_and_conditions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_terms_and_conditions_id_seq OWNED BY public.cm_co_terms_and_conditions.id;


--
-- Name: cm_co_themes; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_co_themes (
    id integer NOT NULL,
    co_id integer NOT NULL,
    name character varying(80),
    hide_title boolean,
    hide_footer_logo boolean,
    css text,
    header text,
    footer text,
    created timestamp without time zone,
    modified timestamp without time zone,
    co_theme_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_co_themes OWNER TO registry_user;

--
-- Name: cm_co_themes_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_co_themes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_co_themes_id_seq OWNER TO registry_user;

--
-- Name: cm_co_themes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_co_themes_id_seq OWNED BY public.cm_co_themes.id;


--
-- Name: cm_core_apis; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_core_apis (
    id integer NOT NULL,
    co_id integer NOT NULL,
    status character varying(2),
    api_user_id integer NOT NULL,
    identifier_type character varying(32),
    api character varying(2),
    created timestamp without time zone,
    modified timestamp without time zone,
    core_api_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_core_apis OWNER TO registry_user;

--
-- Name: cm_core_apis_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_core_apis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_core_apis_id_seq OWNER TO registry_user;

--
-- Name: cm_core_apis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_core_apis_id_seq OWNED BY public.cm_core_apis.id;


--
-- Name: cm_cos; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_cos (
    id integer NOT NULL,
    name character varying(128),
    description character varying(128),
    status character varying(2),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_cos OWNER TO registry_user;

--
-- Name: cm_cos_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_cos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_cos_id_seq OWNER TO registry_user;

--
-- Name: cm_cos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_cos_id_seq OWNED BY public.cm_cos.id;


--
-- Name: cm_cous; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_cous (
    id integer NOT NULL,
    co_id integer NOT NULL,
    name character varying(128),
    description character varying(128),
    parent_id integer,
    lft integer,
    rght integer,
    created timestamp without time zone,
    modified timestamp without time zone,
    cou_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_cous OWNER TO registry_user;

--
-- Name: cm_cous_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_cous_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_cous_id_seq OWNER TO registry_user;

--
-- Name: cm_cous_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_cous_id_seq OWNED BY public.cm_cous.id;


--
-- Name: cm_data_filters; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_data_filters (
    id integer NOT NULL,
    co_id integer,
    description character varying(256),
    plugin character varying(32),
    status character varying(2),
    created timestamp without time zone,
    modified timestamp without time zone,
    data_filter_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_data_filters OWNER TO registry_user;

--
-- Name: cm_data_filters_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_data_filters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_data_filters_id_seq OWNER TO registry_user;

--
-- Name: cm_data_filters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_data_filters_id_seq OWNED BY public.cm_data_filters.id;


--
-- Name: cm_dictionaries; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_dictionaries (
    id integer NOT NULL,
    co_id integer,
    description character varying(128),
    mode character varying(2),
    created timestamp without time zone,
    modified timestamp without time zone,
    dictionary_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_dictionaries OWNER TO registry_user;

--
-- Name: cm_dictionaries_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_dictionaries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_dictionaries_id_seq OWNER TO registry_user;

--
-- Name: cm_dictionaries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_dictionaries_id_seq OWNED BY public.cm_dictionaries.id;


--
-- Name: cm_dictionary_entries; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_dictionary_entries (
    id integer NOT NULL,
    dictionary_id integer,
    value character varying(80),
    code character varying(16),
    ordr integer,
    created timestamp without time zone,
    modified timestamp without time zone,
    dictionary_entry_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_dictionary_entries OWNER TO registry_user;

--
-- Name: cm_dictionary_entries_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_dictionary_entries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_dictionary_entries_id_seq OWNER TO registry_user;

--
-- Name: cm_dictionary_entries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_dictionary_entries_id_seq OWNED BY public.cm_dictionary_entries.id;


--
-- Name: cm_email_addresses; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_email_addresses (
    id integer NOT NULL,
    mail character varying(256),
    description character varying(128),
    type character varying(32),
    verified boolean,
    co_person_id integer,
    org_identity_id integer,
    co_department_id integer,
    organization_id integer,
    source_email_address_id integer,
    created timestamp without time zone,
    modified timestamp without time zone,
    email_address_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_email_addresses OWNER TO registry_user;

--
-- Name: cm_email_addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_email_addresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_email_addresses_id_seq OWNER TO registry_user;

--
-- Name: cm_email_addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_email_addresses_id_seq OWNED BY public.cm_email_addresses.id;


--
-- Name: cm_env_sources; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_env_sources (
    id integer NOT NULL,
    org_identity_source_id integer,
    env_name_honorific character varying(80),
    env_name_given character varying(80),
    env_name_middle character varying(80),
    env_name_family character varying(80),
    env_name_suffix character varying(80),
    env_affiliation character varying(80),
    env_title character varying(80),
    env_o character varying(80),
    env_ou character varying(80),
    env_mail character varying(80),
    env_telephone_number character varying(80),
    env_address_street character varying(80),
    env_address_locality character varying(80),
    env_address_state character varying(80),
    env_address_postalcode character varying(80),
    env_address_country character varying(80),
    env_identifier_eppn character varying(80),
    env_identifier_eppn_login boolean,
    env_identifier_eptid character varying(256),
    env_identifier_eptid_login boolean,
    env_identifier_epuid character varying(80),
    env_identifier_epuid_login boolean,
    env_identifier_oidcsub character varying(256),
    env_identifier_oidcsub_login boolean,
    env_identifier_orcid character varying(80),
    env_identifier_orcid_login boolean,
    env_identifier_samlpairwiseid character varying(256),
    env_identifier_samlpairwiseid_login boolean,
    env_identifier_samlsubjectid character varying(256),
    env_identifier_samlsubjectid_login boolean,
    env_identifier_sorid character varying(1024),
    env_identifier_sorid_login boolean,
    env_identifier_network character varying(80),
    env_identifier_network_login boolean,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_env_sources OWNER TO registry_user;

--
-- Name: cm_env_sources_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_env_sources_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_env_sources_id_seq OWNER TO registry_user;

--
-- Name: cm_env_sources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_env_sources_id_seq OWNED BY public.cm_env_sources.id;


--
-- Name: cm_history_records; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_history_records (
    id integer NOT NULL,
    co_person_id integer,
    co_person_role_id integer,
    org_identity_id integer,
    co_group_id integer,
    co_email_list_id integer,
    co_service_id integer,
    actor_co_person_id integer,
    action character varying(4),
    comment character varying(256),
    created timestamp without time zone,
    modified timestamp without time zone,
    history_record_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_history_records OWNER TO registry_user;

--
-- Name: cm_history_records_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_history_records_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_history_records_id_seq OWNER TO registry_user;

--
-- Name: cm_history_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_history_records_id_seq OWNED BY public.cm_history_records.id;


--
-- Name: cm_http_servers; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_http_servers (
    id integer NOT NULL,
    server_id integer,
    serverurl character varying(256),
    username character varying(128),
    password character varying(400),
    ssl_verify_peer boolean,
    ssl_verify_host boolean,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_http_servers OWNER TO registry_user;

--
-- Name: cm_http_servers_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_http_servers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_http_servers_id_seq OWNER TO registry_user;

--
-- Name: cm_http_servers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_http_servers_id_seq OWNED BY public.cm_http_servers.id;


--
-- Name: cm_identifiers; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_identifiers (
    id integer NOT NULL,
    identifier character varying(512),
    type character varying(32),
    login boolean,
    status character varying(2),
    co_person_id integer,
    org_identity_id integer,
    co_department_id integer,
    co_group_id integer,
    organization_id integer,
    source_identifier_id integer,
    co_provisioning_target_id integer,
    created timestamp without time zone,
    modified timestamp without time zone,
    identifier_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_identifiers OWNER TO registry_user;

--
-- Name: cm_identifiers_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_identifiers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_identifiers_id_seq OWNER TO registry_user;

--
-- Name: cm_identifiers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_identifiers_id_seq OWNED BY public.cm_identifiers.id;


--
-- Name: cm_identity_documents; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_identity_documents (
    id integer NOT NULL,
    co_person_id integer NOT NULL,
    document_type character varying(2),
    document_subtype character varying(80),
    issuing_authority character varying(80),
    subject character varying(80),
    document_identifier character varying(80),
    valid_from timestamp without time zone,
    valid_through timestamp without time zone,
    verification_method character varying(2),
    verifier_identifier character varying(256),
    verifier_comment character varying(256),
    created timestamp without time zone,
    modified timestamp without time zone,
    identity_document_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_identity_documents OWNER TO registry_user;

--
-- Name: cm_identity_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_identity_documents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_identity_documents_id_seq OWNER TO registry_user;

--
-- Name: cm_identity_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_identity_documents_id_seq OWNED BY public.cm_identity_documents.id;


--
-- Name: cm_kafka_servers; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_kafka_servers (
    id integer NOT NULL,
    server_id integer,
    brokers character varying(256),
    security_protocol character varying(24),
    sasl_mechanism character varying(24),
    username character varying(128),
    password character varying(400),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_kafka_servers OWNER TO registry_user;

--
-- Name: cm_kafka_servers_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_kafka_servers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_kafka_servers_id_seq OWNER TO registry_user;

--
-- Name: cm_kafka_servers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_kafka_servers_id_seq OWNED BY public.cm_kafka_servers.id;


--
-- Name: cm_ldap_servers; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_ldap_servers (
    id integer NOT NULL,
    server_id integer,
    serverurl character varying(256),
    binddn character varying(128),
    password character varying(80),
    basedn character varying(128),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_ldap_servers OWNER TO registry_user;

--
-- Name: cm_ldap_servers_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_ldap_servers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_ldap_servers_id_seq OWNER TO registry_user;

--
-- Name: cm_ldap_servers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_ldap_servers_id_seq OWNED BY public.cm_ldap_servers.id;


--
-- Name: cm_locks; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_locks (
    id integer NOT NULL,
    co_id integer,
    label character varying(32),
    pid integer,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_locks OWNER TO registry_user;

--
-- Name: cm_locks_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_locks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_locks_id_seq OWNER TO registry_user;

--
-- Name: cm_locks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_locks_id_seq OWNED BY public.cm_locks.id;


--
-- Name: cm_match_server_attributes; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_match_server_attributes (
    id integer NOT NULL,
    match_server_id integer,
    attribute character varying(80),
    type character varying(32),
    required integer,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_match_server_attributes OWNER TO registry_user;

--
-- Name: cm_match_server_attributes_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_match_server_attributes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_match_server_attributes_id_seq OWNER TO registry_user;

--
-- Name: cm_match_server_attributes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_match_server_attributes_id_seq OWNED BY public.cm_match_server_attributes.id;


--
-- Name: cm_match_servers; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_match_servers (
    id integer NOT NULL,
    server_id integer,
    serverurl character varying(256),
    username character varying(128),
    password character varying(80),
    sor_label character varying(40),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_match_servers OWNER TO registry_user;

--
-- Name: cm_match_servers_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_match_servers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_match_servers_id_seq OWNER TO registry_user;

--
-- Name: cm_match_servers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_match_servers_id_seq OWNED BY public.cm_match_servers.id;


--
-- Name: cm_meta; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_meta (
    upgrade_version character varying(16)
);


ALTER TABLE public.cm_meta OWNER TO registry_user;

--
-- Name: cm_names; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_names (
    id integer NOT NULL,
    honorific character varying(32),
    given character varying(128),
    middle character varying(128),
    family character varying(128),
    suffix character varying(32),
    type character varying(32),
    language character varying(16),
    co_person_id integer,
    org_identity_id integer,
    primary_name boolean,
    source_name_id integer,
    created timestamp without time zone,
    modified timestamp without time zone,
    name_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_names OWNER TO registry_user;

--
-- Name: cm_names_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_names_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_names_id_seq OWNER TO registry_user;

--
-- Name: cm_names_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_names_id_seq OWNED BY public.cm_names.id;


--
-- Name: cm_navigation_links; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_navigation_links (
    id integer NOT NULL,
    description character varying(256),
    title character varying(256) NOT NULL,
    url character varying(256),
    ordr integer,
    location character varying(32),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_navigation_links OWNER TO registry_user;

--
-- Name: cm_navigation_links_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_navigation_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_navigation_links_id_seq OWNER TO registry_user;

--
-- Name: cm_navigation_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_navigation_links_id_seq OWNED BY public.cm_navigation_links.id;


--
-- Name: cm_oauth2_servers; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_oauth2_servers (
    id integer NOT NULL,
    server_id integer,
    serverurl character varying(256),
    clientid character varying(120),
    client_secret character varying(80),
    access_grant_type character varying(2),
    scope character varying(256),
    refresh_token character varying(160),
    access_token character varying(160),
    token_response text,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_oauth2_servers OWNER TO registry_user;

--
-- Name: cm_oauth2_servers_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_oauth2_servers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_oauth2_servers_id_seq OWNER TO registry_user;

--
-- Name: cm_oauth2_servers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_oauth2_servers_id_seq OWNED BY public.cm_oauth2_servers.id;


--
-- Name: cm_orcid_sources; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_orcid_sources (
    id integer NOT NULL,
    org_identity_source_id integer,
    server_id integer,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_orcid_sources OWNER TO registry_user;

--
-- Name: cm_orcid_sources_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_orcid_sources_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_orcid_sources_id_seq OWNER TO registry_user;

--
-- Name: cm_orcid_sources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_orcid_sources_id_seq OWNED BY public.cm_orcid_sources.id;


--
-- Name: cm_org_identities; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_org_identities (
    id integer NOT NULL,
    status character varying(2),
    date_of_birth date,
    affiliation character varying(32),
    title character varying(128),
    o character varying(128),
    ou character varying(128),
    co_id integer,
    valid_from timestamp without time zone,
    valid_through timestamp without time zone,
    created timestamp without time zone,
    modified timestamp without time zone,
    org_identity_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_org_identities OWNER TO registry_user;

--
-- Name: cm_org_identities_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_org_identities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_org_identities_id_seq OWNER TO registry_user;

--
-- Name: cm_org_identities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_org_identities_id_seq OWNED BY public.cm_org_identities.id;


--
-- Name: cm_org_identity_source_records; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_org_identity_source_records (
    id integer NOT NULL,
    org_identity_source_id integer,
    sorid character varying(1024),
    source_record text,
    last_update timestamp without time zone,
    org_identity_id integer,
    co_petition_id integer,
    reference_identifier character varying(40),
    created timestamp without time zone,
    modified timestamp without time zone,
    org_identity_source_record_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_org_identity_source_records OWNER TO registry_user;

--
-- Name: cm_org_identity_source_records_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_org_identity_source_records_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_org_identity_source_records_id_seq OWNER TO registry_user;

--
-- Name: cm_org_identity_source_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_org_identity_source_records_id_seq OWNED BY public.cm_org_identity_source_records.id;


--
-- Name: cm_org_identity_sources; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_org_identity_sources (
    id integer NOT NULL,
    co_id integer,
    description character varying(256),
    plugin character varying(32),
    co_pipeline_id integer,
    status character varying(2),
    sync_mode character varying(2),
    sync_query_mismatch_mode character varying(2),
    sync_query_skip_known boolean,
    sync_on_user_login boolean,
    eppn_identifier_type character varying(128),
    eppn_suffix character varying(128),
    hash_source_record boolean,
    created timestamp without time zone,
    modified timestamp without time zone,
    org_identity_source_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_org_identity_sources OWNER TO registry_user;

--
-- Name: cm_org_identity_sources_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_org_identity_sources_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_org_identity_sources_id_seq OWNER TO registry_user;

--
-- Name: cm_org_identity_sources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_org_identity_sources_id_seq OWNED BY public.cm_org_identity_sources.id;


--
-- Name: cm_organizations; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_organizations (
    id integer NOT NULL,
    co_id integer NOT NULL,
    name character varying(128),
    description character varying(128),
    type character varying(32),
    created timestamp without time zone,
    modified timestamp without time zone,
    organization_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_organizations OWNER TO registry_user;

--
-- Name: cm_organizations_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_organizations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_organizations_id_seq OWNER TO registry_user;

--
-- Name: cm_organizations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_organizations_id_seq OWNED BY public.cm_organizations.id;


--
-- Name: cm_servers; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_servers (
    id integer NOT NULL,
    co_id integer,
    description character varying(128),
    server_type character varying(2),
    status character varying(2),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_servers OWNER TO registry_user;

--
-- Name: cm_servers_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_servers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_servers_id_seq OWNER TO registry_user;

--
-- Name: cm_servers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_servers_id_seq OWNED BY public.cm_servers.id;


--
-- Name: cm_sql_servers; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_sql_servers (
    id integer NOT NULL,
    server_id integer,
    type character varying(2),
    hostname character varying(128),
    username character varying(120),
    password character varying(80),
    databas character varying(128),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_sql_servers OWNER TO registry_user;

--
-- Name: cm_sql_servers_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_sql_servers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_sql_servers_id_seq OWNER TO registry_user;

--
-- Name: cm_sql_servers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_sql_servers_id_seq OWNED BY public.cm_sql_servers.id;


--
-- Name: cm_ssh_key_authenticators; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_ssh_key_authenticators (
    id integer NOT NULL,
    authenticator_id integer,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.cm_ssh_key_authenticators OWNER TO registry_user;

--
-- Name: cm_ssh_key_authenticators_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_ssh_key_authenticators_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_ssh_key_authenticators_id_seq OWNER TO registry_user;

--
-- Name: cm_ssh_key_authenticators_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_ssh_key_authenticators_id_seq OWNED BY public.cm_ssh_key_authenticators.id;


--
-- Name: cm_ssh_keys; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_ssh_keys (
    id integer NOT NULL,
    ssh_key_authenticator_id integer,
    co_person_id integer NOT NULL,
    comment character varying(256),
    type character varying(32),
    skey text,
    created timestamp without time zone,
    modified timestamp without time zone,
    ssh_key_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_ssh_keys OWNER TO registry_user;

--
-- Name: cm_ssh_keys_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_ssh_keys_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_ssh_keys_id_seq OWNER TO registry_user;

--
-- Name: cm_ssh_keys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_ssh_keys_id_seq OWNED BY public.cm_ssh_keys.id;


--
-- Name: cm_telephone_numbers; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_telephone_numbers (
    id integer NOT NULL,
    country_code character varying(3),
    area_code character varying(8),
    number character varying(64),
    extension character varying(16),
    description character varying(128),
    type character varying(32),
    co_person_role_id integer,
    org_identity_id integer,
    co_department_id integer,
    organization_id integer,
    source_telephone_number_id integer,
    created timestamp without time zone,
    modified timestamp without time zone,
    telephone_number_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_telephone_numbers OWNER TO registry_user;

--
-- Name: cm_telephone_numbers_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_telephone_numbers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_telephone_numbers_id_seq OWNER TO registry_user;

--
-- Name: cm_telephone_numbers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_telephone_numbers_id_seq OWNED BY public.cm_telephone_numbers.id;


--
-- Name: cm_urls; Type: TABLE; Schema: public; Owner: registry_user
--

CREATE TABLE public.cm_urls (
    id integer NOT NULL,
    url character varying(256),
    description character varying(128),
    type character varying(32),
    co_person_id integer,
    org_identity_id integer,
    co_department_id integer,
    organization_id integer,
    source_url_id integer,
    created timestamp without time zone,
    modified timestamp without time zone,
    url_id integer,
    revision integer,
    deleted boolean,
    actor_identifier character varying(256)
);


ALTER TABLE public.cm_urls OWNER TO registry_user;

--
-- Name: cm_urls_id_seq; Type: SEQUENCE; Schema: public; Owner: registry_user
--

CREATE SEQUENCE public.cm_urls_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cm_urls_id_seq OWNER TO registry_user;

--
-- Name: cm_urls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: registry_user
--

ALTER SEQUENCE public.cm_urls_id_seq OWNED BY public.cm_urls.id;


--
-- Name: cm_ad_hoc_attributes id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_ad_hoc_attributes ALTER COLUMN id SET DEFAULT nextval('public.cm_ad_hoc_attributes_id_seq'::regclass);


--
-- Name: cm_addresses id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_addresses ALTER COLUMN id SET DEFAULT nextval('public.cm_addresses_id_seq'::regclass);


--
-- Name: cm_api_users id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_api_users ALTER COLUMN id SET DEFAULT nextval('public.cm_api_users_id_seq'::regclass);


--
-- Name: cm_application_preferences id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_application_preferences ALTER COLUMN id SET DEFAULT nextval('public.cm_application_preferences_id_seq'::regclass);


--
-- Name: cm_attribute_enumerations id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_attribute_enumerations ALTER COLUMN id SET DEFAULT nextval('public.cm_attribute_enumerations_id_seq'::regclass);


--
-- Name: cm_authentication_events id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_authentication_events ALTER COLUMN id SET DEFAULT nextval('public.cm_authentication_events_id_seq'::regclass);


--
-- Name: cm_authenticator_statuses id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_authenticator_statuses ALTER COLUMN id SET DEFAULT nextval('public.cm_authenticator_statuses_id_seq'::regclass);


--
-- Name: cm_authenticators id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_authenticators ALTER COLUMN id SET DEFAULT nextval('public.cm_authenticators_id_seq'::regclass);


--
-- Name: cm_clusters id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_clusters ALTER COLUMN id SET DEFAULT nextval('public.cm_clusters_id_seq'::regclass);


--
-- Name: cm_cmp_enrollment_attributes id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_cmp_enrollment_attributes ALTER COLUMN id SET DEFAULT nextval('public.cm_cmp_enrollment_attributes_id_seq'::regclass);


--
-- Name: cm_cmp_enrollment_configurations id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_cmp_enrollment_configurations ALTER COLUMN id SET DEFAULT nextval('public.cm_cmp_enrollment_configurations_id_seq'::regclass);


--
-- Name: cm_co_dashboard_widgets id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_dashboard_widgets ALTER COLUMN id SET DEFAULT nextval('public.cm_co_dashboard_widgets_id_seq'::regclass);


--
-- Name: cm_co_dashboards id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_dashboards ALTER COLUMN id SET DEFAULT nextval('public.cm_co_dashboards_id_seq'::regclass);


--
-- Name: cm_co_departments id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_departments ALTER COLUMN id SET DEFAULT nextval('public.cm_co_departments_id_seq'::regclass);


--
-- Name: cm_co_email_lists id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_email_lists ALTER COLUMN id SET DEFAULT nextval('public.cm_co_email_lists_id_seq'::regclass);


--
-- Name: cm_co_enrollment_attribute_defaults id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_attribute_defaults ALTER COLUMN id SET DEFAULT nextval('public.cm_co_enrollment_attribute_defaults_id_seq'::regclass);


--
-- Name: cm_co_enrollment_attributes id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_attributes ALTER COLUMN id SET DEFAULT nextval('public.cm_co_enrollment_attributes_id_seq'::regclass);


--
-- Name: cm_co_enrollment_authenticators id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_authenticators ALTER COLUMN id SET DEFAULT nextval('public.cm_co_enrollment_authenticators_id_seq'::regclass);


--
-- Name: cm_co_enrollment_clusters id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_clusters ALTER COLUMN id SET DEFAULT nextval('public.cm_co_enrollment_clusters_id_seq'::regclass);


--
-- Name: cm_co_enrollment_flow_wedges id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_flow_wedges ALTER COLUMN id SET DEFAULT nextval('public.cm_co_enrollment_flow_wedges_id_seq'::regclass);


--
-- Name: cm_co_enrollment_flows id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_flows ALTER COLUMN id SET DEFAULT nextval('public.cm_co_enrollment_flows_id_seq'::regclass);


--
-- Name: cm_co_enrollment_sources id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_sources ALTER COLUMN id SET DEFAULT nextval('public.cm_co_enrollment_sources_id_seq'::regclass);


--
-- Name: cm_co_expiration_counts id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_expiration_counts ALTER COLUMN id SET DEFAULT nextval('public.cm_co_expiration_counts_id_seq'::regclass);


--
-- Name: cm_co_expiration_policies id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_expiration_policies ALTER COLUMN id SET DEFAULT nextval('public.cm_co_expiration_policies_id_seq'::regclass);


--
-- Name: cm_co_extended_attributes id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_extended_attributes ALTER COLUMN id SET DEFAULT nextval('public.cm_co_extended_attributes_id_seq'::regclass);


--
-- Name: cm_co_extended_types id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_extended_types ALTER COLUMN id SET DEFAULT nextval('public.cm_co_extended_types_id_seq'::regclass);


--
-- Name: cm_co_group_members id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_group_members ALTER COLUMN id SET DEFAULT nextval('public.cm_co_group_members_id_seq'::regclass);


--
-- Name: cm_co_group_nestings id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_group_nestings ALTER COLUMN id SET DEFAULT nextval('public.cm_co_group_nestings_id_seq'::regclass);


--
-- Name: cm_co_group_ois_mappings id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_group_ois_mappings ALTER COLUMN id SET DEFAULT nextval('public.cm_co_group_ois_mappings_id_seq'::regclass);


--
-- Name: cm_co_grouper_provisioner_groups id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_grouper_provisioner_groups ALTER COLUMN id SET DEFAULT nextval('public.cm_co_grouper_provisioner_groups_id_seq'::regclass);


--
-- Name: cm_co_grouper_provisioner_targets id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_grouper_provisioner_targets ALTER COLUMN id SET DEFAULT nextval('public.cm_co_grouper_provisioner_targets_id_seq'::regclass);


--
-- Name: cm_co_groups id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_groups ALTER COLUMN id SET DEFAULT nextval('public.cm_co_groups_id_seq'::regclass);


--
-- Name: cm_co_identifier_assignments id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_identifier_assignments ALTER COLUMN id SET DEFAULT nextval('public.cm_co_identifier_assignments_id_seq'::regclass);


--
-- Name: cm_co_identifier_validators id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_identifier_validators ALTER COLUMN id SET DEFAULT nextval('public.cm_co_identifier_validators_id_seq'::regclass);


--
-- Name: cm_co_invites id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_invites ALTER COLUMN id SET DEFAULT nextval('public.cm_co_invites_id_seq'::regclass);


--
-- Name: cm_co_job_history_records id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_job_history_records ALTER COLUMN id SET DEFAULT nextval('public.cm_co_job_history_records_id_seq'::regclass);


--
-- Name: cm_co_jobs id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_jobs ALTER COLUMN id SET DEFAULT nextval('public.cm_co_jobs_id_seq'::regclass);


--
-- Name: cm_co_ldap_provisioner_attr_groupings id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_ldap_provisioner_attr_groupings ALTER COLUMN id SET DEFAULT nextval('public.cm_co_ldap_provisioner_attr_groupings_id_seq'::regclass);


--
-- Name: cm_co_ldap_provisioner_attributes id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_ldap_provisioner_attributes ALTER COLUMN id SET DEFAULT nextval('public.cm_co_ldap_provisioner_attributes_id_seq'::regclass);


--
-- Name: cm_co_ldap_provisioner_dns id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_ldap_provisioner_dns ALTER COLUMN id SET DEFAULT nextval('public.cm_co_ldap_provisioner_dns_id_seq'::regclass);


--
-- Name: cm_co_ldap_provisioner_targets id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_ldap_provisioner_targets ALTER COLUMN id SET DEFAULT nextval('public.cm_co_ldap_provisioner_targets_id_seq'::regclass);


--
-- Name: cm_co_localizations id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_localizations ALTER COLUMN id SET DEFAULT nextval('public.cm_co_localizations_id_seq'::regclass);


--
-- Name: cm_co_message_templates id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_message_templates ALTER COLUMN id SET DEFAULT nextval('public.cm_co_message_templates_id_seq'::regclass);


--
-- Name: cm_co_navigation_links id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_navigation_links ALTER COLUMN id SET DEFAULT nextval('public.cm_co_navigation_links_id_seq'::regclass);


--
-- Name: cm_co_notifications id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_notifications ALTER COLUMN id SET DEFAULT nextval('public.cm_co_notifications_id_seq'::regclass);


--
-- Name: cm_co_nsf_demographics id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_nsf_demographics ALTER COLUMN id SET DEFAULT nextval('public.cm_co_nsf_demographics_id_seq'::regclass);


--
-- Name: cm_co_org_identity_links id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_org_identity_links ALTER COLUMN id SET DEFAULT nextval('public.cm_co_org_identity_links_id_seq'::regclass);


--
-- Name: cm_co_people id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_people ALTER COLUMN id SET DEFAULT nextval('public.cm_co_people_id_seq'::regclass);


--
-- Name: cm_co_person_roles id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_person_roles ALTER COLUMN id SET DEFAULT nextval('public.cm_co_person_roles_id_seq'::regclass);


--
-- Name: cm_co_petition_attributes id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_petition_attributes ALTER COLUMN id SET DEFAULT nextval('public.cm_co_petition_attributes_id_seq'::regclass);


--
-- Name: cm_co_petition_history_records id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_petition_history_records ALTER COLUMN id SET DEFAULT nextval('public.cm_co_petition_history_records_id_seq'::regclass);


--
-- Name: cm_co_petitions id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_petitions ALTER COLUMN id SET DEFAULT nextval('public.cm_co_petitions_id_seq'::regclass);


--
-- Name: cm_co_pipelines id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_pipelines ALTER COLUMN id SET DEFAULT nextval('public.cm_co_pipelines_id_seq'::regclass);


--
-- Name: cm_co_provisioning_exports id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_provisioning_exports ALTER COLUMN id SET DEFAULT nextval('public.cm_co_provisioning_exports_id_seq'::regclass);


--
-- Name: cm_co_provisioning_target_filters id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_provisioning_target_filters ALTER COLUMN id SET DEFAULT nextval('public.cm_co_provisioning_target_filters_id_seq'::regclass);


--
-- Name: cm_co_provisioning_targets id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_provisioning_targets ALTER COLUMN id SET DEFAULT nextval('public.cm_co_provisioning_targets_id_seq'::regclass);


--
-- Name: cm_co_self_service_permissions id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_self_service_permissions ALTER COLUMN id SET DEFAULT nextval('public.cm_co_self_service_permissions_id_seq'::regclass);


--
-- Name: cm_co_sequential_identifier_assignments id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_sequential_identifier_assignments ALTER COLUMN id SET DEFAULT nextval('public.cm_co_sequential_identifier_assignments_id_seq'::regclass);


--
-- Name: cm_co_services id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_services ALTER COLUMN id SET DEFAULT nextval('public.cm_co_services_id_seq'::regclass);


--
-- Name: cm_co_settings id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_settings ALTER COLUMN id SET DEFAULT nextval('public.cm_co_settings_id_seq'::regclass);


--
-- Name: cm_co_sql_provisioner_targets id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_sql_provisioner_targets ALTER COLUMN id SET DEFAULT nextval('public.cm_co_sql_provisioner_targets_id_seq'::regclass);


--
-- Name: cm_co_t_and_c_agreements id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_t_and_c_agreements ALTER COLUMN id SET DEFAULT nextval('public.cm_co_t_and_c_agreements_id_seq'::regclass);


--
-- Name: cm_co_terms_and_conditions id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_terms_and_conditions ALTER COLUMN id SET DEFAULT nextval('public.cm_co_terms_and_conditions_id_seq'::regclass);


--
-- Name: cm_co_themes id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_themes ALTER COLUMN id SET DEFAULT nextval('public.cm_co_themes_id_seq'::regclass);


--
-- Name: cm_core_apis id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_core_apis ALTER COLUMN id SET DEFAULT nextval('public.cm_core_apis_id_seq'::regclass);


--
-- Name: cm_cos id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_cos ALTER COLUMN id SET DEFAULT nextval('public.cm_cos_id_seq'::regclass);


--
-- Name: cm_cous id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_cous ALTER COLUMN id SET DEFAULT nextval('public.cm_cous_id_seq'::regclass);


--
-- Name: cm_data_filters id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_data_filters ALTER COLUMN id SET DEFAULT nextval('public.cm_data_filters_id_seq'::regclass);


--
-- Name: cm_dictionaries id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_dictionaries ALTER COLUMN id SET DEFAULT nextval('public.cm_dictionaries_id_seq'::regclass);


--
-- Name: cm_dictionary_entries id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_dictionary_entries ALTER COLUMN id SET DEFAULT nextval('public.cm_dictionary_entries_id_seq'::regclass);


--
-- Name: cm_email_addresses id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_email_addresses ALTER COLUMN id SET DEFAULT nextval('public.cm_email_addresses_id_seq'::regclass);


--
-- Name: cm_env_sources id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_env_sources ALTER COLUMN id SET DEFAULT nextval('public.cm_env_sources_id_seq'::regclass);


--
-- Name: cm_history_records id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_history_records ALTER COLUMN id SET DEFAULT nextval('public.cm_history_records_id_seq'::regclass);


--
-- Name: cm_http_servers id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_http_servers ALTER COLUMN id SET DEFAULT nextval('public.cm_http_servers_id_seq'::regclass);


--
-- Name: cm_identifiers id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_identifiers ALTER COLUMN id SET DEFAULT nextval('public.cm_identifiers_id_seq'::regclass);


--
-- Name: cm_identity_documents id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_identity_documents ALTER COLUMN id SET DEFAULT nextval('public.cm_identity_documents_id_seq'::regclass);


--
-- Name: cm_kafka_servers id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_kafka_servers ALTER COLUMN id SET DEFAULT nextval('public.cm_kafka_servers_id_seq'::regclass);


--
-- Name: cm_ldap_servers id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_ldap_servers ALTER COLUMN id SET DEFAULT nextval('public.cm_ldap_servers_id_seq'::regclass);


--
-- Name: cm_locks id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_locks ALTER COLUMN id SET DEFAULT nextval('public.cm_locks_id_seq'::regclass);


--
-- Name: cm_match_server_attributes id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_match_server_attributes ALTER COLUMN id SET DEFAULT nextval('public.cm_match_server_attributes_id_seq'::regclass);


--
-- Name: cm_match_servers id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_match_servers ALTER COLUMN id SET DEFAULT nextval('public.cm_match_servers_id_seq'::regclass);


--
-- Name: cm_names id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_names ALTER COLUMN id SET DEFAULT nextval('public.cm_names_id_seq'::regclass);


--
-- Name: cm_navigation_links id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_navigation_links ALTER COLUMN id SET DEFAULT nextval('public.cm_navigation_links_id_seq'::regclass);


--
-- Name: cm_oauth2_servers id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_oauth2_servers ALTER COLUMN id SET DEFAULT nextval('public.cm_oauth2_servers_id_seq'::regclass);


--
-- Name: cm_orcid_sources id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_orcid_sources ALTER COLUMN id SET DEFAULT nextval('public.cm_orcid_sources_id_seq'::regclass);


--
-- Name: cm_org_identities id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_org_identities ALTER COLUMN id SET DEFAULT nextval('public.cm_org_identities_id_seq'::regclass);


--
-- Name: cm_org_identity_source_records id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_org_identity_source_records ALTER COLUMN id SET DEFAULT nextval('public.cm_org_identity_source_records_id_seq'::regclass);


--
-- Name: cm_org_identity_sources id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_org_identity_sources ALTER COLUMN id SET DEFAULT nextval('public.cm_org_identity_sources_id_seq'::regclass);


--
-- Name: cm_organizations id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_organizations ALTER COLUMN id SET DEFAULT nextval('public.cm_organizations_id_seq'::regclass);


--
-- Name: cm_servers id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_servers ALTER COLUMN id SET DEFAULT nextval('public.cm_servers_id_seq'::regclass);


--
-- Name: cm_sql_servers id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_sql_servers ALTER COLUMN id SET DEFAULT nextval('public.cm_sql_servers_id_seq'::regclass);


--
-- Name: cm_ssh_key_authenticators id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_ssh_key_authenticators ALTER COLUMN id SET DEFAULT nextval('public.cm_ssh_key_authenticators_id_seq'::regclass);


--
-- Name: cm_ssh_keys id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_ssh_keys ALTER COLUMN id SET DEFAULT nextval('public.cm_ssh_keys_id_seq'::regclass);


--
-- Name: cm_telephone_numbers id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_telephone_numbers ALTER COLUMN id SET DEFAULT nextval('public.cm_telephone_numbers_id_seq'::regclass);


--
-- Name: cm_urls id; Type: DEFAULT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_urls ALTER COLUMN id SET DEFAULT nextval('public.cm_urls_id_seq'::regclass);


--
-- Data for Name: cm_ad_hoc_attributes; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_ad_hoc_attributes (id, tag, value, co_person_role_id, org_identity_id, co_department_id, organization_id, source_ad_hoc_attribute_id, created, modified, ad_hoc_attribute_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_addresses; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_addresses (id, street, room, locality, state, postal_code, country, description, type, language, co_person_role_id, org_identity_id, co_department_id, organization_id, source_address_id, created, modified, address_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_api_users; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_api_users (id, co_id, privileged, status, username, password, valid_from, valid_through, remote_ip, created, modified) FROM stdin;
1	2	t	A	co_2.apiuser	5c11618acd751adef0479a25d222fe416acca41a	\N	\N		2022-09-23 17:38:41	2022-09-23 18:46:03
\.


--
-- Data for Name: cm_application_preferences; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_application_preferences (id, co_person_id, tag, value, created, modified) FROM stdin;
1	1	uiMainMenuSelectedParentId	peopleMenu	2022-09-23 17:36:49	2022-09-23 18:48:38
\.


--
-- Data for Name: cm_attribute_enumerations; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_attribute_enumerations (id, co_id, attribute, optvalue, status, dictionary_id, allow_other, created, modified, attribute_enumeration_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_authentication_events; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_authentication_events (id, authenticated_identifier, authentication_event, remote_ip, created, modified) FROM stdin;
1	banderson	IN	192.168.144.8	2022-09-23 17:36:46	2022-09-23 17:36:46
2	banderson	IN	192.168.176.7	2022-09-23 17:51:37	2022-09-23 17:51:37
3	banderson	IN	192.168.208.7	2022-09-23 18:22:24	2022-09-23 18:22:24
4	banderson	IN	192.168.240.10	2022-09-23 18:30:06	2022-09-23 18:30:06
5	banderson	IN	172.21.0.8	2022-09-23 18:44:51	2022-09-23 18:44:51
6	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:09	2022-09-23 18:46:09
7	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:09	2022-09-23 18:46:09
8	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:10	2022-09-23 18:46:10
9	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:10	2022-09-23 18:46:10
10	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:11	2022-09-23 18:46:11
11	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:12	2022-09-23 18:46:12
12	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:12	2022-09-23 18:46:12
13	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:13	2022-09-23 18:46:13
14	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:14	2022-09-23 18:46:14
15	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:14	2022-09-23 18:46:14
16	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:15	2022-09-23 18:46:15
17	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:16	2022-09-23 18:46:16
18	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:16	2022-09-23 18:46:16
19	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:17	2022-09-23 18:46:17
20	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:17	2022-09-23 18:46:17
21	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:17	2022-09-23 18:46:17
22	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:18	2022-09-23 18:46:18
23	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:19	2022-09-23 18:46:19
24	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:19	2022-09-23 18:46:19
25	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:20	2022-09-23 18:46:20
26	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:21	2022-09-23 18:46:21
27	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:21	2022-09-23 18:46:21
28	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:22	2022-09-23 18:46:22
29	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:23	2022-09-23 18:46:23
30	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:23	2022-09-23 18:46:23
31	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:23	2022-09-23 18:46:23
32	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:24	2022-09-23 18:46:24
33	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:24	2022-09-23 18:46:24
34	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:25	2022-09-23 18:46:25
35	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:25	2022-09-23 18:46:25
36	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:26	2022-09-23 18:46:26
37	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:27	2022-09-23 18:46:27
38	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:27	2022-09-23 18:46:27
39	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:28	2022-09-23 18:46:28
40	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:29	2022-09-23 18:46:29
41	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:46:29	2022-09-23 18:46:29
42	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:35	2022-09-23 18:49:35
43	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:36	2022-09-23 18:49:36
44	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:36	2022-09-23 18:49:36
45	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:37	2022-09-23 18:49:37
46	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:37	2022-09-23 18:49:37
47	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:37	2022-09-23 18:49:37
48	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:38	2022-09-23 18:49:38
49	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:38	2022-09-23 18:49:38
50	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:39	2022-09-23 18:49:39
51	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:39	2022-09-23 18:49:39
52	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:39	2022-09-23 18:49:39
53	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:40	2022-09-23 18:49:40
54	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:40	2022-09-23 18:49:40
55	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:41	2022-09-23 18:49:41
56	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:42	2022-09-23 18:49:42
57	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:42	2022-09-23 18:49:42
58	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:43	2022-09-23 18:49:43
59	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:43	2022-09-23 18:49:43
60	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:44	2022-09-23 18:49:44
61	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:45	2022-09-23 18:49:45
62	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:45	2022-09-23 18:49:45
63	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:46	2022-09-23 18:49:46
64	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:46	2022-09-23 18:49:46
65	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:47	2022-09-23 18:49:47
66	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:47	2022-09-23 18:49:47
67	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:48	2022-09-23 18:49:48
68	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:48	2022-09-23 18:49:48
69	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:49	2022-09-23 18:49:49
70	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:49	2022-09-23 18:49:49
71	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:50	2022-09-23 18:49:50
72	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:51	2022-09-23 18:49:51
73	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:51	2022-09-23 18:49:51
74	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:52	2022-09-23 18:49:52
75	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:52	2022-09-23 18:49:52
76	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:52	2022-09-23 18:49:52
77	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:53	2022-09-23 18:49:53
78	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:53	2022-09-23 18:49:53
79	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:54	2022-09-23 18:49:54
80	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:55	2022-09-23 18:49:55
81	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:55	2022-09-23 18:49:55
82	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:56	2022-09-23 18:49:56
83	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:56	2022-09-23 18:49:56
84	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:57	2022-09-23 18:49:57
85	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:58	2022-09-23 18:49:58
86	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:58	2022-09-23 18:49:58
87	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:59	2022-09-23 18:49:59
88	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:59	2022-09-23 18:49:59
89	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:49:59	2022-09-23 18:49:59
90	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:00	2022-09-23 18:50:00
91	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:01	2022-09-23 18:50:01
92	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:01	2022-09-23 18:50:01
93	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:02	2022-09-23 18:50:02
94	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:03	2022-09-23 18:50:03
95	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:03	2022-09-23 18:50:03
96	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:04	2022-09-23 18:50:04
97	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:05	2022-09-23 18:50:05
98	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:05	2022-09-23 18:50:05
99	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:06	2022-09-23 18:50:06
100	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:06	2022-09-23 18:50:06
101	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:06	2022-09-23 18:50:06
102	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:07	2022-09-23 18:50:07
103	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:08	2022-09-23 18:50:08
104	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:08	2022-09-23 18:50:08
105	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:09	2022-09-23 18:50:09
106	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:09	2022-09-23 18:50:09
107	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:10	2022-09-23 18:50:10
108	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:11	2022-09-23 18:50:11
109	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:11	2022-09-23 18:50:11
110	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:12	2022-09-23 18:50:12
111	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:12	2022-09-23 18:50:12
112	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:13	2022-09-23 18:50:13
113	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:13	2022-09-23 18:50:13
114	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:14	2022-09-23 18:50:14
115	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:15	2022-09-23 18:50:15
116	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:15	2022-09-23 18:50:15
117	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:15	2022-09-23 18:50:15
118	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:16	2022-09-23 18:50:16
119	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:17	2022-09-23 18:50:17
120	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:17	2022-09-23 18:50:17
121	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:18	2022-09-23 18:50:18
122	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:19	2022-09-23 18:50:19
123	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:19	2022-09-23 18:50:19
124	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:19	2022-09-23 18:50:19
125	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:20	2022-09-23 18:50:20
126	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:20	2022-09-23 18:50:20
127	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:21	2022-09-23 18:50:21
128	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:22	2022-09-23 18:50:22
129	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:22	2022-09-23 18:50:22
130	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:23	2022-09-23 18:50:23
131	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:23	2022-09-23 18:50:23
132	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:24	2022-09-23 18:50:24
133	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:25	2022-09-23 18:50:25
134	co_2.apiuser	AI	172.21.0.8	2022-09-23 18:50:25	2022-09-23 18:50:25
\.


--
-- Data for Name: cm_authenticator_statuses; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_authenticator_statuses (id, authenticator_id, co_person_id, locked, created, modified) FROM stdin;
\.


--
-- Data for Name: cm_authenticators; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_authenticators (id, co_id, description, plugin, status, co_message_template_id, created, modified) FROM stdin;
\.


--
-- Data for Name: cm_clusters; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_clusters (id, co_id, description, plugin, status, created, modified, cluster_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_cmp_enrollment_attributes; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_cmp_enrollment_attributes (id, cmp_enrollment_configuration_id, attribute, type, required, env_name, ldap_name, saml_name, created, modified) FROM stdin;
\.


--
-- Data for Name: cm_cmp_enrollment_configurations; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_cmp_enrollment_configurations (id, name, attrs_from_ldap, attrs_from_saml, attrs_from_env, attrs_from_coef, pool_org_identities, eds_help_url, eds_preferred_idps, eds_hidden_idps, redirect_on_logout, app_base, status, created, modified) FROM stdin;
1	CMP Enrollment Configuration	f	f	f	t	f	\N	\N	\N	\N	/registry/	A	2022-09-23 17:29:26	2022-09-23 18:44:51
\.


--
-- Data for Name: cm_co_dashboard_widgets; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_dashboard_widgets (id, co_dashboard_id, description, plugin, status, ordr, created, modified, co_dashboard_widget_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_co_dashboards; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_dashboards (id, co_id, name, description, header_text, footer_text, visibility, visibility_co_group_id, status, created, modified, co_dashboard_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_co_departments; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_departments (id, co_id, cou_id, type, name, description, introduction, leadership_co_group_id, administrative_co_group_id, support_co_group_id, created, modified, co_department_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_co_email_lists; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_email_lists (id, co_id, name, description, admins_co_group_id, members_co_group_id, moderators_co_group_id, status, created, modified, co_email_list_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_co_enrollment_attribute_defaults; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_enrollment_attribute_defaults (id, co_enrollment_attribute_id, affiliation, value, modifiable, created, modified, co_enrollment_attribute_default_id, revision, deleted, actor_identifier) FROM stdin;
1	29	\N		t	2022-09-23 17:41:48	2022-09-23 17:41:48	\N	0	f	banderson
\.


--
-- Data for Name: cm_co_enrollment_attributes; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_enrollment_attributes (id, co_enrollment_flow_id, label, description, attribute, required, required_fields, ordr, hidden, copy_to_coperson, ignore_authoritative, default_env, login, language, created, modified, co_enrollment_attribute_id, revision, deleted, actor_identifier) FROM stdin;
1	1	Affiliation	\N	r:affiliation	1	\N	1	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
2	1	Title	\N	r:title	0	\N	2	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
3	1	Sponsor	\N	r:sponsor_co_person_id	0	\N	3	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
4	1	Valid From	\N	r:valid_from	0	\N	4	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
5	1	Valid Through	\N	r:valid_through	0	\N	5	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
6	2	Name	\N	i:name:official	1	\N	1	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
7	2	Email	\N	i:email_address:official	1	\N	2	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
8	2	Name (Preferred)	\N	p:name:official	1	\N	3	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
9	2	Affiliation	\N	r:affiliation	1	\N	4	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
10	2	Organization	\N	o:o	0	\N	5	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
11	2	Title	\N	r:title	0	\N	6	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
12	2	Sponsor	\N	r:sponsor_co_person_id	0	\N	7	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
13	2	Valid From	\N	r:valid_from	0	\N	8	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
14	2	Valid Through	\N	r:valid_through	0	\N	9	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
15	2	Number (Mobile)	\N	m:telephone_number:mobile	0	\N	10	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
16	3	Name	\N	i:name:official	1	\N	1	\N	t	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
17	3	Email	\N	i:email_address:official	1	\N	2	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
18	3	Affiliation	\N	r:affiliation	1	\N	3	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
19	3	Organization	\N	o:o	0	\N	4	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
20	3	Title	\N	r:title	0	\N	5	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
21	4	Name	\N	i:name:official	1	\N	1	\N	t	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
22	4	Email	\N	i:email_address:official	1	\N	2	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
23	4	Affiliation	\N	r:affiliation	1	\N	3	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
24	4	Organization	\N	o:o	0	\N	4	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
25	5	Name	\N	i:name:official	1	\N	1	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
26	5	Email	\N	i:email_address:official	1	\N	2	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
27	6	Name	\N	i:name:official	1	\N	1	\N	t	\N	\N	\N	\N	2022-09-23 17:40:52	2022-09-23 17:40:52	\N	0	f	banderson
28	6	Email	\N	i:email_address:official	1	\N	2	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:52	2022-09-23 17:40:52	\N	0	f	banderson
30	6	Organization	\N	o:o	0	\N	4	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:52	2022-09-23 17:40:52	\N	0	f	banderson
31	6	Affiliation	\N	r:affiliation	1	\N	3	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:52	2022-09-23 17:40:52	29	0	f	banderson
29	6	Affiliation		r:affiliation	0		3	f	f	\N		f		2022-09-23 17:40:52	2022-09-23 17:41:48	\N	1	f	banderson
\.


--
-- Data for Name: cm_co_enrollment_authenticators; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_enrollment_authenticators (id, co_enrollment_flow_id, authenticator_id, required, created, modified, co_enrollment_authenticator_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_co_enrollment_clusters; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_enrollment_clusters (id, co_enrollment_flow_id, cluster_id, enabled, created, modified, co_enrollment_cluster_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_co_enrollment_flow_wedges; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_enrollment_flow_wedges (id, co_enrollment_flow_id, description, plugin, status, ordr, created, modified, co_enrollment_flow_wedge_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_co_enrollment_flows; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_enrollment_flows (id, name, co_id, authz_level, authz_cou_id, authz_co_group_id, my_identity_shortcut, match_policy, enable_person_find, approval_required, approver_co_group_id, verify_email, email_verification_mode, invitation_validity, require_authn, notification_co_group_id, status, notify_from, verification_subject, verification_body, verification_template_id, notify_on_approval, approval_subject, approval_body, approval_template_id, denial_template_id, notify_on_finalize, finalization_template_id, introduction_text, conclusion_text, t_and_c_mode, redirect_on_submit, redirect_on_confirm, redirect_on_finalize, return_url_allowlist, ignore_authoritative, duplicate_mode, co_theme_id, theme_stacking, establish_authenticators, establish_cluster_accounts, created, modified, co_enrollment_flow_id, revision, deleted, actor_identifier) FROM stdin;
1	Additional Role (Template)	2	A	\N	\N	\N	P	\N	f	\N	\N	X	\N	\N	\N	T	\N	\N	\N	\N	f	\N	\N	\N	\N	\N	\N	\N	\N	X	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
2	Conscription With Approval (Template)	2	A	\N	\N	\N	A	\N	t	\N	\N	X	\N	\N	\N	T	\N	\N	\N	\N	f	\N	\N	\N	\N	\N	\N	\N	\N	X	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
3	Invitation (Template)	2	A	\N	\N	\N	N	\N	f	\N	\N	R	\N	\N	\N	T	\N	\N	\N	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	X	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
4	Self Signup With Approval (Template)	2	N	\N	\N	\N	N	\N	t	\N	\N	R	\N	\N	\N	T	\N	\N	\N	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	IC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
5	Account Linking (Template)	2	CP	\N	\N	\N	S	\N	f	\N	\N	R	\N	t	\N	T	\N	\N	\N	\N	f	\N	\N	\N	\N	\N	\N	\N	\N	X	\N	\N	\N	\N	t	\N	\N	\N	\N	\N	2022-09-23 17:40:47	2022-09-23 17:40:47	\N	0	f	banderson
7	Copy of Self Signup With Approval (Template)	2	N	\N	\N	\N	N	\N	t	\N	\N	R	\N	\N	\N	T	\N	\N	\N	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	IC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-09-23 17:40:52	2022-09-23 17:40:52	6	0	f	banderson
8	Self Signup (CSP Use Case)	2	N	\N	\N	f	N	f	f	\N	\N	R	1440	f	\N	A	noreply@workbench.incommon.org	Invitation to join (@CO_NAME)	You have been invited to join (@CO_NAME).\r\nPlease click the link below to accept or decline.\r\n\r\n(@INVITE_URL)	\N	t	Petition to join (@CO_NAME) has been approved	Your petition to join (@CO_NAME) as been approved. You may now log in to the platform.	\N	\N	f	\N			IC					\N	D	\N	A	\N	\N	2022-09-23 17:40:52	2022-09-23 17:41:39	6	1	f	banderson
6	Self Signup (CSP Use Case)	2	N	\N	\N	f	N	f	f	\N	\N	R	1440	f	\N	A	noreply@workbench.incommon.org	Invitation to join (@CO_NAME)	You have been invited to join (@CO_NAME).\r\nPlease click the link below to accept or decline.\r\n\r\n(@INVITE_URL)	\N	t	Petition to join (@CO_NAME) has been approved	Your petition to join (@CO_NAME) as been approved. You may now log in to the platform.	\N	\N	f	\N			IC					\N	D	\N	A	\N	\N	2022-09-23 17:40:52	2022-09-23 17:41:54	\N	2	f	banderson
\.


--
-- Data for Name: cm_co_enrollment_sources; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_enrollment_sources (id, co_enrollment_flow_id, org_identity_source_id, org_identity_mode, verify_family_name, ordr, created, modified, co_enrollment_source_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_co_expiration_counts; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_expiration_counts (id, co_expiration_policy_id, co_person_role_id, expiration_count, created, modified, co_expiration_count_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_co_expiration_policies; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_expiration_policies (id, co_id, description, cond_cou_id, cond_affiliation, cond_before_expiry, cond_after_expiry, cond_count, cond_status, cond_sponsor_invalid, act_affiliation, act_clear_expiry, act_cou_id, act_notify_co_admin, act_notify_cou_admin, act_notify_co_group_id, act_notify_co_person, act_notify_sponsor, act_notification_template_id, act_notification_subject, act_notification_body, act_status, status, created, modified, co_expiration_policy_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_co_extended_attributes; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_extended_attributes (id, co_id, name, display_name, type, indx, created, modified) FROM stdin;
\.


--
-- Data for Name: cm_co_extended_types; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_extended_types (id, co_id, attribute, name, display_name, edupersonaffiliation, status) FROM stdin;
1	1	Address.type	campus	Campus	\N	A
2	1	Address.type	home	Home	\N	A
3	1	Address.type	office	Office	\N	A
4	1	Address.type	postal	Postal	\N	A
5	1	CoDepartment.type	vo	VO	\N	A
6	1	CoDepartment.type	researchinstitute	Research Institute	\N	A
7	1	CoDepartment.type	department	Department	\N	A
8	1	CoPersonRole.affiliation	faculty	Faculty	\N	A
9	1	CoPersonRole.affiliation	student	Student	\N	A
10	1	CoPersonRole.affiliation	staff	Staff	\N	A
11	1	CoPersonRole.affiliation	alum	Alum	\N	A
12	1	CoPersonRole.affiliation	member	Member	\N	A
13	1	CoPersonRole.affiliation	affiliate	Affiliate	\N	A
14	1	CoPersonRole.affiliation	employee	Employee	\N	A
15	1	CoPersonRole.affiliation	librarywalkin	Library Walk-In	\N	A
16	1	EmailAddress.type	delivery	Delivery	\N	A
17	1	EmailAddress.type	forwarding	Forwarding	\N	A
18	1	EmailAddress.type	list	Mailing List	\N	A
19	1	EmailAddress.type	official	Official	\N	A
20	1	EmailAddress.type	personal	Personal	\N	A
21	1	EmailAddress.type	preferred	Preferred	\N	A
22	1	EmailAddress.type	recovery	Recovery	\N	A
23	1	Identifier.type	sor-affiliate	Affiliate SoRID	\N	A
24	1	Identifier.type	badge	Badge	\N	A
25	1	Identifier.type	enterprise	Enterprise	\N	A
26	1	Identifier.type	eppn	ePPN	\N	A
27	1	Identifier.type	eptid	ePTID	\N	A
28	1	Identifier.type	epuid	ePUID	\N	A
29	1	Identifier.type	sor-guest	Guest SoRID	\N	A
30	1	Identifier.type	sor-hr	HR SoRID	\N	A
31	1	Identifier.type	mail	Mail	\N	A
32	1	Identifier.type	national	National	\N	A
33	1	Identifier.type	network	Network	\N	A
34	1	Identifier.type	oidcsub	OIDC sub	\N	A
35	1	Identifier.type	openid	OpenID	\N	A
36	1	Identifier.type	orcid	ORCID iD	\N	A
37	1	Identifier.type	provisioningtarget	Provisioning Target	\N	A
38	1	Identifier.type	reference	Match Reference	\N	A
39	1	Identifier.type	pairwiseid	SAML pairwise-id	\N	A
40	1	Identifier.type	subjectid	SAML subject-id	\N	A
41	1	Identifier.type	sorid	System of Record ID	\N	A
42	1	Identifier.type	sor-student	Student SoRID	\N	A
43	1	Identifier.type	uid	UID	\N	A
44	1	Name.type	alternate	Alternate	\N	A
45	1	Name.type	author	Author	\N	A
46	1	Name.type	fka	FKA	\N	A
47	1	Name.type	official	Official	\N	A
48	1	Name.type	preferred	Preferred	\N	A
49	1	Organization.type	edu	Academic	\N	A
50	1	Organization.type	com	Commercial	\N	A
51	1	Organization.type	gov	Government	\N	A
52	1	TelephoneNumber.type	campus	Campus	\N	A
53	1	TelephoneNumber.type	fax	Fax	\N	A
54	1	TelephoneNumber.type	home	Home	\N	A
55	1	TelephoneNumber.type	mobile	Mobile	\N	A
56	1	TelephoneNumber.type	office	Office	\N	A
57	1	Url.type	official	Official	\N	A
58	1	Url.type	personal	Personal	\N	A
59	2	Address.type	campus	Campus	\N	A
60	2	Address.type	home	Home	\N	A
61	2	Address.type	office	Office	\N	A
62	2	Address.type	postal	Postal	\N	A
63	2	CoDepartment.type	vo	VO	\N	A
64	2	CoDepartment.type	researchinstitute	Research Institute	\N	A
65	2	CoDepartment.type	department	Department	\N	A
66	2	CoPersonRole.affiliation	faculty	Faculty	\N	A
67	2	CoPersonRole.affiliation	student	Student	\N	A
68	2	CoPersonRole.affiliation	staff	Staff	\N	A
69	2	CoPersonRole.affiliation	alum	Alum	\N	A
70	2	CoPersonRole.affiliation	member	Member	\N	A
71	2	CoPersonRole.affiliation	affiliate	Affiliate	\N	A
72	2	CoPersonRole.affiliation	employee	Employee	\N	A
73	2	CoPersonRole.affiliation	librarywalkin	Library Walk-In	\N	A
74	2	EmailAddress.type	delivery	Delivery	\N	A
75	2	EmailAddress.type	forwarding	Forwarding	\N	A
76	2	EmailAddress.type	list	Mailing List	\N	A
77	2	EmailAddress.type	official	Official	\N	A
78	2	EmailAddress.type	personal	Personal	\N	A
79	2	EmailAddress.type	preferred	Preferred	\N	A
80	2	EmailAddress.type	recovery	Recovery	\N	A
81	2	Identifier.type	sor-affiliate	Affiliate SoRID	\N	A
82	2	Identifier.type	badge	Badge	\N	A
83	2	Identifier.type	enterprise	Enterprise	\N	A
84	2	Identifier.type	eppn	ePPN	\N	A
85	2	Identifier.type	eptid	ePTID	\N	A
86	2	Identifier.type	epuid	ePUID	\N	A
87	2	Identifier.type	sor-guest	Guest SoRID	\N	A
88	2	Identifier.type	sor-hr	HR SoRID	\N	A
89	2	Identifier.type	mail	Mail	\N	A
90	2	Identifier.type	national	National	\N	A
91	2	Identifier.type	network	Network	\N	A
92	2	Identifier.type	oidcsub	OIDC sub	\N	A
93	2	Identifier.type	openid	OpenID	\N	A
94	2	Identifier.type	orcid	ORCID iD	\N	A
95	2	Identifier.type	provisioningtarget	Provisioning Target	\N	A
96	2	Identifier.type	reference	Match Reference	\N	A
97	2	Identifier.type	pairwiseid	SAML pairwise-id	\N	A
98	2	Identifier.type	subjectid	SAML subject-id	\N	A
99	2	Identifier.type	sorid	System of Record ID	\N	A
100	2	Identifier.type	sor-student	Student SoRID	\N	A
101	2	Identifier.type	uid	UID	\N	A
102	2	Name.type	alternate	Alternate	\N	A
103	2	Name.type	author	Author	\N	A
104	2	Name.type	fka	FKA	\N	A
105	2	Name.type	official	Official	\N	A
106	2	Name.type	preferred	Preferred	\N	A
107	2	Organization.type	edu	Academic	\N	A
108	2	Organization.type	com	Commercial	\N	A
109	2	Organization.type	gov	Government	\N	A
110	2	TelephoneNumber.type	campus	Campus	\N	A
111	2	TelephoneNumber.type	fax	Fax	\N	A
112	2	TelephoneNumber.type	home	Home	\N	A
113	2	TelephoneNumber.type	mobile	Mobile	\N	A
114	2	TelephoneNumber.type	office	Office	\N	A
115	2	Url.type	official	Official	\N	A
116	2	Url.type	personal	Personal	\N	A
117	2	Identifier.type	GuestID	Identifier issued to all guests	\N	A
\.


--
-- Data for Name: cm_co_group_members; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_group_members (id, co_group_id, co_person_id, member, owner, valid_from, valid_through, source_org_identity_id, co_group_nesting_id, created, modified, co_group_member_id, revision, deleted, actor_identifier) FROM stdin;
1	2	1	t	f	\N	\N	\N	\N	2022-09-23 17:29:25	2022-09-23 17:29:25	\N	0	f	Shell user "root"
2	1	1	t	t	\N	\N	\N	\N	2022-09-23 17:29:25	2022-09-23 17:29:26	\N	0	f	Shell user "root"
3	5	2	t	f	\N	\N	\N	\N	2022-09-23 18:46:10	2022-09-23 18:46:10	\N	0	f	co_2.apiuser
4	6	2	t	f	\N	\N	\N	\N	2022-09-23 18:46:11	2022-09-23 18:46:11	\N	0	f	co_2.apiuser
5	5	3	t	f	\N	\N	\N	\N	2022-09-23 18:46:18	2022-09-23 18:46:18	\N	0	f	co_2.apiuser
6	6	3	t	f	\N	\N	\N	\N	2022-09-23 18:46:18	2022-09-23 18:46:18	\N	0	f	co_2.apiuser
7	5	4	t	f	\N	\N	\N	\N	2022-09-23 18:46:24	2022-09-23 18:46:24	\N	0	f	co_2.apiuser
8	6	4	t	f	\N	\N	\N	\N	2022-09-23 18:46:24	2022-09-23 18:46:24	\N	0	f	co_2.apiuser
9	5	5	t	f	\N	\N	\N	\N	2022-09-23 18:49:40	2022-09-23 18:49:40	\N	0	f	co_2.apiuser
10	6	5	t	f	\N	\N	\N	\N	2022-09-23 18:49:41	2022-09-23 18:49:41	\N	0	f	co_2.apiuser
11	5	6	t	f	\N	\N	\N	\N	2022-09-23 18:49:47	2022-09-23 18:49:47	\N	0	f	co_2.apiuser
12	6	6	t	f	\N	\N	\N	\N	2022-09-23 18:49:47	2022-09-23 18:49:47	\N	0	f	co_2.apiuser
13	5	7	t	f	\N	\N	\N	\N	2022-09-23 18:49:53	2022-09-23 18:49:53	\N	0	f	co_2.apiuser
14	6	7	t	f	\N	\N	\N	\N	2022-09-23 18:49:54	2022-09-23 18:49:54	\N	0	f	co_2.apiuser
15	5	8	t	f	\N	\N	\N	\N	2022-09-23 18:50:00	2022-09-23 18:50:00	\N	0	f	co_2.apiuser
16	6	8	t	f	\N	\N	\N	\N	2022-09-23 18:50:00	2022-09-23 18:50:00	\N	0	f	co_2.apiuser
17	5	9	t	f	\N	\N	\N	\N	2022-09-23 18:50:07	2022-09-23 18:50:07	\N	0	f	co_2.apiuser
18	6	9	t	f	\N	\N	\N	\N	2022-09-23 18:50:07	2022-09-23 18:50:07	\N	0	f	co_2.apiuser
19	5	10	t	f	\N	\N	\N	\N	2022-09-23 18:50:14	2022-09-23 18:50:14	\N	0	f	co_2.apiuser
20	6	10	t	f	\N	\N	\N	\N	2022-09-23 18:50:14	2022-09-23 18:50:14	\N	0	f	co_2.apiuser
21	5	11	t	f	\N	\N	\N	\N	2022-09-23 18:50:21	2022-09-23 18:50:21	\N	0	f	co_2.apiuser
22	6	11	t	f	\N	\N	\N	\N	2022-09-23 18:50:21	2022-09-23 18:50:21	\N	0	f	co_2.apiuser
\.


--
-- Data for Name: cm_co_group_nestings; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_group_nestings (id, co_group_id, target_co_group_id, negate, created, modified, co_group_nesting_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_co_group_ois_mappings; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_group_ois_mappings (id, org_identity_source_id, attribute, comparison, pattern, co_group_id, created, modified, co_group_ois_mapping_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_co_grouper_provisioner_groups; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_grouper_provisioner_groups (id, co_grouper_provisioner_target_id, co_group_id, stem, extension, description, created, modified) FROM stdin;
\.


--
-- Data for Name: cm_co_grouper_provisioner_targets; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_grouper_provisioner_targets (id, co_provisioning_target_id, serverurl, contextpath, login, password, stem, subject_identifier, login_identifier, email_identifier, legacy_comanage_subject, subject_view, created, modified) FROM stdin;
\.


--
-- Data for Name: cm_co_groups; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_groups (id, co_id, cou_id, name, description, open, status, group_type, auto, nesting_mode_all, created, modified, co_group_id, revision, deleted, actor_identifier) FROM stdin;
1	1	\N	CO:admins	COmanage Administrators	f	A	A	f	\N	2022-09-23 17:29:25	2022-09-23 17:29:25	\N	0	f	Shell user "root"
2	1	\N	CO:members:active	COmanage Active Members	f	A	MA	t	\N	2022-09-23 17:29:25	2022-09-23 17:29:25	\N	0	f	Shell user "root"
3	1	\N	CO:members:all	COmanage Members	f	A	M	t	\N	2022-09-23 17:29:25	2022-09-23 17:29:25	\N	0	f	Shell user "root"
4	2	\N	CO:admins	Guests/Sponsored Accounts Administrators	f	A	A	f	\N	2022-09-23 17:37:31	2022-09-23 17:37:31	\N	0	f	banderson
5	2	\N	CO:members:active	Guests/Sponsored Accounts Active Members	f	A	MA	t	\N	2022-09-23 17:37:31	2022-09-23 17:37:31	\N	0	f	banderson
6	2	\N	CO:members:all	Guests/Sponsored Accounts Members	f	A	M	t	\N	2022-09-23 17:37:31	2022-09-23 17:37:31	\N	0	f	banderson
\.


--
-- Data for Name: cm_co_identifier_assignments; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_identifier_assignments (id, co_id, status, context, identifier_type, email_type, description, login, algorithm, format, minimum, maximum, permitted, collision_resolution, exclusions, ordr, created, modified) FROM stdin;
1	2	A	CP	GuestID		Guest Identifier	t	S	G(#:8)	1	\N	AN	\N	\N	1	2022-09-23 17:40:37	2022-09-23 17:40:37
\.


--
-- Data for Name: cm_co_identifier_validators; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_identifier_validators (id, co_id, description, plugin, co_extended_type_id, status, created, modified, co_identifier_validator_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_co_invites; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_invites (id, co_person_id, invitation, mail, skip_invite, email_address_id, expires, created, modified, co_invite_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_co_job_history_records; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_job_history_records (id, co_job_id, record_key, co_person_id, org_identity_id, comment, status, created, modified) FROM stdin;
\.


--
-- Data for Name: cm_co_jobs; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_jobs (id, co_id, job_type, job_type_fk, job_mode, job_params, requeue_interval, retry_interval, requeued_from_co_job_id, status, register_summary, start_summary, finish_summary, queue_time, start_after_time, start_time, complete_time, percent_complete, created, modified) FROM stdin;
1	1	CoreJob.GarbageCollector	\N		{"object_type":"Co"}	1440	0	\N	Q	Started via JobShell by setup (CoPerson ID -1)	\N	\N	2022-09-23 17:29:25	\N	\N	\N	\N	2022-09-23 17:29:25	2022-09-23 17:29:25
\.


--
-- Data for Name: cm_co_ldap_provisioner_attr_groupings; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_ldap_provisioner_attr_groupings (id, co_ldap_provisioner_target_id, "grouping", type, created, modified) FROM stdin;
\.


--
-- Data for Name: cm_co_ldap_provisioner_attributes; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_ldap_provisioner_attributes (id, co_ldap_provisioner_target_id, attribute, objectclass, type, export, use_org_value, created, modified) FROM stdin;
\.


--
-- Data for Name: cm_co_ldap_provisioner_dns; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_ldap_provisioner_dns (id, co_ldap_provisioner_target_id, co_person_id, co_group_id, dn, created, modified) FROM stdin;
\.


--
-- Data for Name: cm_co_ldap_provisioner_targets; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_ldap_provisioner_targets (id, co_provisioning_target_id, serverurl, binddn, password, basedn, dn_attribute_name, dn_identifier_type, group_basedn, person_ocs, group_ocs, attr_opts, scope_suffix, unconf_attr_mode, oc_eduperson, oc_edumember, oc_groupofnames, oc_posixaccount, oc_posixgroup, oc_voposixaccount, oc_voposixgroup, cluster_id, oc_ldappublickey, oc_voperson, created, modified) FROM stdin;
\.


--
-- Data for Name: cm_co_localizations; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_localizations (id, co_id, lkey, language, text) FROM stdin;
\.


--
-- Data for Name: cm_co_message_templates; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_message_templates (id, co_id, description, context, cc, bcc, message_subject, message_body, message_body_html, format, status, created, modified, co_message_template_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_co_navigation_links; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_navigation_links (id, co_id, description, title, url, ordr, location, created, modified) FROM stdin;
\.


--
-- Data for Name: cm_co_notifications; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_notifications (id, subject_co_person_id, subject_co_group_id, actor_co_person_id, recipient_co_person_id, recipient_co_group_id, resolver_co_person_id, action, comment, source_url, source_controller, source_action, source_id, source_arg0, source_val0, email_subject, email_body, resolution_subject, resolution_body, status, notification_time, resolution_time, created, modified) FROM stdin;
\.


--
-- Data for Name: cm_co_nsf_demographics; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_nsf_demographics (id, co_person_id, gender, citizenship, ethnicity, race, disability, created, modified, co_nsf_demographic_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_co_org_identity_links; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_org_identity_links (id, co_person_id, org_identity_id, created, modified, co_org_identity_link_id, revision, deleted, actor_identifier) FROM stdin;
1	1	1	2022-09-23 17:29:26	2022-09-23 17:29:26	\N	0	f	Shell user "root"
2	2	2	2022-09-23 18:46:11	2022-09-23 18:46:11	\N	0	f	co_2.apiuser
3	3	3	2022-09-23 18:46:18	2022-09-23 18:46:18	\N	0	f	co_2.apiuser
4	4	4	2022-09-23 18:46:25	2022-09-23 18:46:25	\N	0	f	co_2.apiuser
5	5	5	2022-09-23 18:49:41	2022-09-23 18:49:41	\N	0	f	co_2.apiuser
6	6	6	2022-09-23 18:49:48	2022-09-23 18:49:48	\N	0	f	co_2.apiuser
7	7	7	2022-09-23 18:49:54	2022-09-23 18:49:54	\N	0	f	co_2.apiuser
8	8	8	2022-09-23 18:50:01	2022-09-23 18:50:01	\N	0	f	co_2.apiuser
9	9	9	2022-09-23 18:50:08	2022-09-23 18:50:08	\N	0	f	co_2.apiuser
10	10	10	2022-09-23 18:50:15	2022-09-23 18:50:15	\N	0	f	co_2.apiuser
11	11	11	2022-09-23 18:50:21	2022-09-23 18:50:21	\N	0	f	co_2.apiuser
\.


--
-- Data for Name: cm_co_people; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_people (id, co_id, status, date_of_birth, timezone, created, modified, co_person_id, revision, deleted, actor_identifier) FROM stdin;
1	1	A	\N	\N	2022-09-23 17:29:25	2022-09-23 17:29:25	\N	0	f	Shell user "root"
2	2	A	\N	\N	2022-09-23 18:46:10	2022-09-23 18:46:10	\N	0	f	co_2.apiuser
3	2	A	\N	\N	2022-09-23 18:46:18	2022-09-23 18:46:18	\N	0	f	co_2.apiuser
4	2	A	\N	\N	2022-09-23 18:46:24	2022-09-23 18:46:24	\N	0	f	co_2.apiuser
5	2	A	\N	\N	2022-09-23 18:49:40	2022-09-23 18:49:40	\N	0	f	co_2.apiuser
6	2	A	\N	\N	2022-09-23 18:49:47	2022-09-23 18:49:47	\N	0	f	co_2.apiuser
7	2	A	\N	\N	2022-09-23 18:49:53	2022-09-23 18:49:53	\N	0	f	co_2.apiuser
8	2	A	\N	\N	2022-09-23 18:50:00	2022-09-23 18:50:00	\N	0	f	co_2.apiuser
9	2	A	\N	\N	2022-09-23 18:50:07	2022-09-23 18:50:07	\N	0	f	co_2.apiuser
10	2	A	\N	\N	2022-09-23 18:50:14	2022-09-23 18:50:14	\N	0	f	co_2.apiuser
11	2	A	\N	\N	2022-09-23 18:50:20	2022-09-23 18:50:20	\N	0	f	co_2.apiuser
\.


--
-- Data for Name: cm_co_person_roles; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_person_roles (id, co_person_id, sponsor_co_person_id, cou_id, affiliation, title, o, ou, valid_from, valid_through, ordr, status, source_org_identity_id, created, modified, co_person_role_id, revision, deleted, actor_identifier) FROM stdin;
1	1	\N	\N	staff	Administrator	\N	\N	\N	\N	\N	A	\N	2022-09-23 17:29:26	2022-09-23 17:29:26	\N	0	f	Shell user "root"
2	2	\N	\N	member	\N	\N	\N	\N	\N	\N	A	\N	2022-09-23 18:46:15	2022-09-23 18:46:15	\N	0	f	co_2.apiuser
3	3	\N	\N	member	\N	\N	\N	\N	\N	\N	A	\N	2022-09-23 18:46:21	2022-09-23 18:46:21	\N	0	f	co_2.apiuser
4	4	\N	\N	member	\N	\N	\N	\N	\N	\N	A	\N	2022-09-23 18:46:28	2022-09-23 18:46:28	\N	0	f	co_2.apiuser
5	5	\N	\N	member	\N	\N	\N	\N	\N	\N	A	\N	2022-09-23 18:49:44	2022-09-23 18:49:44	\N	0	f	co_2.apiuser
6	6	\N	\N	member	\N	\N	\N	\N	\N	\N	A	\N	2022-09-23 18:49:51	2022-09-23 18:49:51	\N	0	f	co_2.apiuser
7	7	\N	\N	member	\N	\N	\N	\N	\N	\N	A	\N	2022-09-23 18:49:57	2022-09-23 18:49:57	\N	0	f	co_2.apiuser
8	8	\N	\N	member	\N	\N	\N	\N	\N	\N	A	\N	2022-09-23 18:50:04	2022-09-23 18:50:04	\N	0	f	co_2.apiuser
9	9	\N	\N	member	\N	\N	\N	\N	\N	\N	A	\N	2022-09-23 18:50:11	2022-09-23 18:50:11	\N	0	f	co_2.apiuser
10	10	\N	\N	member	\N	\N	\N	\N	\N	\N	A	\N	2022-09-23 18:50:17	2022-09-23 18:50:17	\N	0	f	co_2.apiuser
11	11	\N	\N	member	\N	\N	\N	\N	\N	\N	A	\N	2022-09-23 18:50:24	2022-09-23 18:50:24	\N	0	f	co_2.apiuser
\.


--
-- Data for Name: cm_co_petition_attributes; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_petition_attributes (id, co_petition_id, co_enrollment_attribute_id, attribute, value, attribute_foreign_key, created, modified, co_petition_attribute_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_co_petition_history_records; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_petition_history_records (id, co_petition_id, actor_co_person_id, action, comment, created, modified, co_petition_history_record_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_co_petitions; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_petitions (id, co_enrollment_flow_id, co_id, cou_id, enrollee_org_identity_id, archived_org_identity_id, enrollee_co_person_id, enrollee_co_person_role_id, petitioner_co_person_id, sponsor_co_person_id, approver_co_person_id, co_invite_id, authenticated_identifier, petitioner_token, enrollee_token, return_url, approver_comment, status, created, modified, co_petition_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_co_pipelines; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_pipelines (id, co_id, name, status, match_strategy, match_type, match_server_id, sync_on_add, sync_on_update, sync_on_delete, sync_coperson_status, create_role, sync_cou_id, sync_affiliation, sync_replace_cou_id, sync_status_on_delete, co_enrollment_flow_id, created, modified, co_pipeline_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_co_provisioning_exports; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_provisioning_exports (id, co_provisioning_target_id, co_person_id, co_group_id, co_email_list_id, co_service_id, exporttime, created, modified) FROM stdin;
10	1	9	\N	\N	\N	2022-09-23 18:50:12	2022-09-23 18:50:07	2022-09-23 18:50:12
1	1	2	\N	\N	\N	2022-09-23 18:46:15	2022-09-23 18:46:10	2022-09-23 18:46:15
11	1	10	\N	\N	\N	2022-09-23 18:50:18	2022-09-23 18:50:14	2022-09-23 18:50:18
4	1	3	\N	\N	\N	2022-09-23 18:46:22	2022-09-23 18:46:18	2022-09-23 18:46:22
2	1	\N	5	\N	\N	2022-09-23 18:50:24	2022-09-23 18:46:11	2022-09-23 18:50:24
3	1	\N	6	\N	\N	2022-09-23 18:50:24	2022-09-23 18:46:11	2022-09-23 18:50:24
5	1	4	\N	\N	\N	2022-09-23 18:46:29	2022-09-23 18:46:24	2022-09-23 18:46:29
12	1	11	\N	\N	\N	2022-09-23 18:50:25	2022-09-23 18:50:21	2022-09-23 18:50:25
6	1	5	\N	\N	\N	2022-09-23 18:49:45	2022-09-23 18:49:40	2022-09-23 18:49:45
7	1	6	\N	\N	\N	2022-09-23 18:49:51	2022-09-23 18:49:47	2022-09-23 18:49:51
8	1	7	\N	\N	\N	2022-09-23 18:49:58	2022-09-23 18:49:53	2022-09-23 18:49:58
9	1	8	\N	\N	\N	2022-09-23 18:50:05	2022-09-23 18:50:00	2022-09-23 18:50:05
\.


--
-- Data for Name: cm_co_provisioning_target_filters; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_provisioning_target_filters (id, co_provisioning_target_id, data_filter_id, ordr, created, modified, co_provisioning_target_filter_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_co_provisioning_targets; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_provisioning_targets (id, co_id, description, plugin, provision_co_group_id, skip_org_identity_source_id, status, retry_interval, ordr, created, modified) FROM stdin;
1	2	COmanage data export	SqlProvisioner	\N	\N	A	\N	1	2022-09-23 17:57:44	2022-09-23 17:57:44
\.


--
-- Data for Name: cm_co_self_service_permissions; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_self_service_permissions (id, co_id, model, type, permission, created, modified) FROM stdin;
\.


--
-- Data for Name: cm_co_sequential_identifier_assignments; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_sequential_identifier_assignments (id, co_identifier_assignment_id, affix, last, created, modified) FROM stdin;
1	1	G%08.8s	10	2022-09-23 18:46:15	2022-09-23 18:50:25
\.


--
-- Data for Name: cm_co_services; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_services (id, co_id, cou_id, name, description, short_label, co_group_id, cluster_id, service_url, service_label, contact_email, logo_url, entitlement_uri, visibility, identifier_type, authenticator_id, status, created, modified, co_service_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_co_settings; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_settings (id, co_id, enable_nsf_demo, disable_expiration, disable_ois_sync, group_validity_sync_window, garbage_collection_interval, enable_normalization, enable_empty_cou, invitation_validity, permitted_fields_name, required_fields_addr, required_fields_name, t_and_c_login_mode, sponsor_eligibility, theme_stacking, sponsor_co_group_id, default_co_pipeline_id, elect_strategy_primary_name, co_dashboard_id, co_theme_id, global_search_limit, created, modified) FROM stdin;
\.


--
-- Data for Name: cm_co_sql_provisioner_targets; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_sql_provisioner_targets (id, co_provisioning_target_id, server_id, created, modified) FROM stdin;
1	1	1	2022-09-23 17:57:44	2022-09-23 17:57:55
\.


--
-- Data for Name: cm_co_t_and_c_agreements; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_t_and_c_agreements (id, co_terms_and_conditions_id, co_person_id, agreement_time, identifier, created, modified) FROM stdin;
\.


--
-- Data for Name: cm_co_terms_and_conditions; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_terms_and_conditions (id, co_id, description, url, body, cou_id, status, ordr, created, modified, co_terms_and_conditions_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_co_themes; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_co_themes (id, co_id, name, hide_title, hide_footer_logo, css, header, footer, created, modified, co_theme_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_core_apis; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_core_apis (id, co_id, status, api_user_id, identifier_type, api, created, modified, core_api_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_cos; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_cos (id, name, description, status, created, modified) FROM stdin;
1	COmanage	COmanage Registry Internal CO	A	2022-09-23 17:29:25	2022-09-23 17:29:25
2	Guests/Sponsored Accounts		A	2022-09-23 17:37:31	2022-09-23 17:37:31
\.


--
-- Data for Name: cm_cous; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_cous (id, co_id, name, description, parent_id, lft, rght, created, modified, cou_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_data_filters; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_data_filters (id, co_id, description, plugin, status, created, modified, data_filter_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_dictionaries; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_dictionaries (id, co_id, description, mode, created, modified, dictionary_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_dictionary_entries; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_dictionary_entries (id, dictionary_id, value, code, ordr, created, modified, dictionary_entry_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_email_addresses; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_email_addresses (id, mail, description, type, verified, co_person_id, org_identity_id, co_department_id, organization_id, source_email_address_id, created, modified, email_address_id, revision, deleted, actor_identifier) FROM stdin;
1	guest1@workbench.incommon.org		official	f	2	\N	\N	\N	\N	2022-09-23 18:46:12	2022-09-23 18:46:12	\N	0	f	co_2.apiuser
2	guest2@workbench.incommon.org		official	f	3	\N	\N	\N	\N	2022-09-23 18:46:19	2022-09-23 18:46:19	\N	0	f	co_2.apiuser
3	guest3@workbench.incommon.org		official	f	4	\N	\N	\N	\N	2022-09-23 18:46:26	2022-09-23 18:46:26	\N	0	f	co_2.apiuser
4	guest4@workbench.incommon.org		official	f	5	\N	\N	\N	\N	2022-09-23 18:49:42	2022-09-23 18:49:42	\N	0	f	co_2.apiuser
5	guest5@workbench.incommon.org		official	f	6	\N	\N	\N	\N	2022-09-23 18:49:49	2022-09-23 18:49:49	\N	0	f	co_2.apiuser
6	guest6@workbench.incommon.org		official	f	7	\N	\N	\N	\N	2022-09-23 18:49:55	2022-09-23 18:49:55	\N	0	f	co_2.apiuser
7	guest7@workbench.incommon.org		official	f	8	\N	\N	\N	\N	2022-09-23 18:50:02	2022-09-23 18:50:02	\N	0	f	co_2.apiuser
8	guest8@workbench.incommon.org		official	f	9	\N	\N	\N	\N	2022-09-23 18:50:09	2022-09-23 18:50:09	\N	0	f	co_2.apiuser
9	guest9@workbench.incommon.org		official	f	10	\N	\N	\N	\N	2022-09-23 18:50:15	2022-09-23 18:50:15	\N	0	f	co_2.apiuser
10	guest10@workbench.incommon.org		official	f	11	\N	\N	\N	\N	2022-09-23 18:50:22	2022-09-23 18:50:22	\N	0	f	co_2.apiuser
\.


--
-- Data for Name: cm_env_sources; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_env_sources (id, org_identity_source_id, env_name_honorific, env_name_given, env_name_middle, env_name_family, env_name_suffix, env_affiliation, env_title, env_o, env_ou, env_mail, env_telephone_number, env_address_street, env_address_locality, env_address_state, env_address_postalcode, env_address_country, env_identifier_eppn, env_identifier_eppn_login, env_identifier_eptid, env_identifier_eptid_login, env_identifier_epuid, env_identifier_epuid_login, env_identifier_oidcsub, env_identifier_oidcsub_login, env_identifier_orcid, env_identifier_orcid_login, env_identifier_samlpairwiseid, env_identifier_samlpairwiseid_login, env_identifier_samlsubjectid, env_identifier_samlsubjectid_login, env_identifier_sorid, env_identifier_sorid_login, env_identifier_network, env_identifier_network_login, created, modified) FROM stdin;
\.


--
-- Data for Name: cm_history_records; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_history_records (id, co_person_id, co_person_role_id, org_identity_id, co_group_id, co_email_list_id, co_service_id, actor_co_person_id, action, comment, created, modified, history_record_id, revision, deleted, actor_identifier) FROM stdin;
1	1	\N	\N	2	\N	\N	\N	ACGM	Added to CO Group CO:members:active (2) (member=Yes, owner=No)	2022-09-23 17:29:25	2022-09-23 17:29:25	\N	0	f	Shell user "root"
2	1	\N	\N	3	\N	\N	\N	ACGM	Added to CO Group CO:members:all (3) (member=Yes, owner=No)	2022-09-23 17:29:26	2022-09-23 17:29:26	\N	0	f	Shell user "root"
3	\N	\N	2	\N	\N	\N	\N	AOIM	Org Identity Created (Manual)	2022-09-23 18:46:09	2022-09-23 18:46:09	\N	0	f	co_2.apiuser
4	\N	\N	2	\N	\N	\N	\N	ANAM	Name "Gusto Guest" Added	2022-09-23 18:46:10	2022-09-23 18:46:10	\N	0	f	co_2.apiuser
5	2	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:46:10	2022-09-23 18:46:10	\N	0	f	co_2.apiuser
6	2	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:46:11	2022-09-23 18:46:11	\N	0	f	co_2.apiuser
7	\N	\N	\N	5	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:46:11	2022-09-23 18:46:11	\N	0	f	co_2.apiuser
8	2	\N	\N	5	\N	\N	\N	ACGM	Added to CO Group CO:members:active (5) (member=Yes, owner=No)	2022-09-23 18:46:11	2022-09-23 18:46:11	\N	0	f	co_2.apiuser
9	2	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:46:11	2022-09-23 18:46:11	\N	0	f	co_2.apiuser
10	\N	\N	\N	6	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:46:11	2022-09-23 18:46:11	\N	0	f	co_2.apiuser
11	2	\N	\N	6	\N	\N	\N	ACGM	Added to CO Group CO:members:all (6) (member=Yes, owner=No)	2022-09-23 18:46:11	2022-09-23 18:46:11	\N	0	f	co_2.apiuser
12	2	\N	\N	\N	\N	\N	\N	ACPM	CO Person Created (Manual)	2022-09-23 18:46:11	2022-09-23 18:46:11	\N	0	f	co_2.apiuser
13	2	\N	2	\N	\N	\N	\N	LOCP	CO Person and Org Identity Linked	2022-09-23 18:46:11	2022-09-23 18:46:11	\N	0	f	co_2.apiuser
14	2	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:46:12	2022-09-23 18:46:12	\N	0	f	co_2.apiuser
15	2	\N	\N	\N	\N	\N	\N	ANAM	Name "Gusto Guest" Added	2022-09-23 18:46:12	2022-09-23 18:46:12	\N	0	f	co_2.apiuser
16	2	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:46:13	2022-09-23 18:46:13	\N	0	f	co_2.apiuser
17	2	\N	\N	\N	\N	\N	\N	ECPM	Email Address Added: Email: Null > guest1@workbench.incommon.org;Type: Null > Official (official)	2022-09-23 18:46:13	2022-09-23 18:46:13	\N	0	f	co_2.apiuser
18	2	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:46:13	2022-09-23 18:46:13	\N	0	f	co_2.apiuser
19	\N	\N	2	\N	\N	\N	\N	EOIM	Identifier Added: Identifier: Null > guest1@workbench.incommon.org;Type: Null > ePPN (eppn);Login: Null > 1;Status: Null > A	2022-09-23 18:46:13	2022-09-23 18:46:13	\N	0	f	co_2.apiuser
20	2	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:46:14	2022-09-23 18:46:14	\N	0	f	co_2.apiuser
21	\N	\N	\N	5	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:46:14	2022-09-23 18:46:14	\N	0	f	co_2.apiuser
22	\N	\N	\N	6	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:46:14	2022-09-23 18:46:14	\N	0	f	co_2.apiuser
23	2	\N	\N	\N	\N	\N	\N	ECPM	Identifier Added: Identifier: Null > guest1@workbench.incommon.org;Type: Null > ePPN (eppn);Login: Null > 1;Status: Null > A	2022-09-23 18:46:14	2022-09-23 18:46:14	\N	0	f	co_2.apiuser
24	2	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:46:15	2022-09-23 18:46:15	\N	0	f	co_2.apiuser
25	2	2	\N	\N	\N	\N	\N	ACRM	CO Person Role Created (Manual)	2022-09-23 18:46:15	2022-09-23 18:46:15	\N	0	f	co_2.apiuser
26	2	\N	\N	\N	\N	\N	\N	AIDA	Identifier Auto Assigned: G00000001 (GuestID)	2022-09-23 18:46:15	2022-09-23 18:46:15	\N	0	f	co_2.apiuser
27	2	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:46:15	2022-09-23 18:46:15	\N	0	f	co_2.apiuser
28	\N	\N	3	\N	\N	\N	\N	AOIM	Org Identity Created (Manual)	2022-09-23 18:46:17	2022-09-23 18:46:17	\N	0	f	co_2.apiuser
29	\N	\N	3	\N	\N	\N	\N	ANAM	Name "Philipe Invitado" Added	2022-09-23 18:46:17	2022-09-23 18:46:17	\N	0	f	co_2.apiuser
30	3	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:46:18	2022-09-23 18:46:18	\N	0	f	co_2.apiuser
31	3	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:46:18	2022-09-23 18:46:18	\N	0	f	co_2.apiuser
32	\N	\N	\N	5	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:46:18	2022-09-23 18:46:18	\N	0	f	co_2.apiuser
33	3	\N	\N	5	\N	\N	\N	ACGM	Added to CO Group CO:members:active (5) (member=Yes, owner=No)	2022-09-23 18:46:18	2022-09-23 18:46:18	\N	0	f	co_2.apiuser
34	3	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:46:18	2022-09-23 18:46:18	\N	0	f	co_2.apiuser
35	\N	\N	\N	6	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:46:18	2022-09-23 18:46:18	\N	0	f	co_2.apiuser
36	3	\N	\N	6	\N	\N	\N	ACGM	Added to CO Group CO:members:all (6) (member=Yes, owner=No)	2022-09-23 18:46:18	2022-09-23 18:46:18	\N	0	f	co_2.apiuser
37	3	\N	\N	\N	\N	\N	\N	ACPM	CO Person Created (Manual)	2022-09-23 18:46:18	2022-09-23 18:46:18	\N	0	f	co_2.apiuser
38	3	\N	3	\N	\N	\N	\N	LOCP	CO Person and Org Identity Linked	2022-09-23 18:46:18	2022-09-23 18:46:18	\N	0	f	co_2.apiuser
39	3	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:46:19	2022-09-23 18:46:19	\N	0	f	co_2.apiuser
40	3	\N	\N	\N	\N	\N	\N	ANAM	Name "Philipe Invitado" Added	2022-09-23 18:46:19	2022-09-23 18:46:19	\N	0	f	co_2.apiuser
41	3	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:46:20	2022-09-23 18:46:20	\N	0	f	co_2.apiuser
42	3	\N	\N	\N	\N	\N	\N	ECPM	Email Address Added: Email: Null > guest2@workbench.incommon.org;Type: Null > Official (official)	2022-09-23 18:46:20	2022-09-23 18:46:20	\N	0	f	co_2.apiuser
43	3	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:46:20	2022-09-23 18:46:20	\N	0	f	co_2.apiuser
44	\N	\N	3	\N	\N	\N	\N	EOIM	Identifier Added: Identifier: Null > guest2@workbench.incommon.org;Type: Null > ePPN (eppn);Login: Null > 1;Status: Null > A	2022-09-23 18:46:20	2022-09-23 18:46:20	\N	0	f	co_2.apiuser
45	3	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:46:21	2022-09-23 18:46:21	\N	0	f	co_2.apiuser
46	\N	\N	\N	5	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:46:21	2022-09-23 18:46:21	\N	0	f	co_2.apiuser
47	\N	\N	\N	6	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:46:21	2022-09-23 18:46:21	\N	0	f	co_2.apiuser
48	3	\N	\N	\N	\N	\N	\N	ECPM	Identifier Added: Identifier: Null > guest2@workbench.incommon.org;Type: Null > ePPN (eppn);Login: Null > 1;Status: Null > A	2022-09-23 18:46:21	2022-09-23 18:46:21	\N	0	f	co_2.apiuser
49	3	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:46:21	2022-09-23 18:46:21	\N	0	f	co_2.apiuser
50	3	3	\N	\N	\N	\N	\N	ACRM	CO Person Role Created (Manual)	2022-09-23 18:46:22	2022-09-23 18:46:22	\N	0	f	co_2.apiuser
51	3	\N	\N	\N	\N	\N	\N	AIDA	Identifier Auto Assigned: G00000002 (GuestID)	2022-09-23 18:46:22	2022-09-23 18:46:22	\N	0	f	co_2.apiuser
52	3	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:46:22	2022-09-23 18:46:22	\N	0	f	co_2.apiuser
53	\N	\N	4	\N	\N	\N	\N	AOIM	Org Identity Created (Manual)	2022-09-23 18:46:23	2022-09-23 18:46:23	\N	0	f	co_2.apiuser
54	\N	\N	4	\N	\N	\N	\N	ANAM	Name "Christie Walken" Added	2022-09-23 18:46:24	2022-09-23 18:46:24	\N	0	f	co_2.apiuser
55	4	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:46:24	2022-09-23 18:46:24	\N	0	f	co_2.apiuser
56	4	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:46:24	2022-09-23 18:46:24	\N	0	f	co_2.apiuser
57	\N	\N	\N	5	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:46:24	2022-09-23 18:46:24	\N	0	f	co_2.apiuser
58	4	\N	\N	5	\N	\N	\N	ACGM	Added to CO Group CO:members:active (5) (member=Yes, owner=No)	2022-09-23 18:46:24	2022-09-23 18:46:24	\N	0	f	co_2.apiuser
59	4	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:46:25	2022-09-23 18:46:25	\N	0	f	co_2.apiuser
60	\N	\N	\N	6	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:46:25	2022-09-23 18:46:25	\N	0	f	co_2.apiuser
61	4	\N	\N	6	\N	\N	\N	ACGM	Added to CO Group CO:members:all (6) (member=Yes, owner=No)	2022-09-23 18:46:25	2022-09-23 18:46:25	\N	0	f	co_2.apiuser
62	4	\N	\N	\N	\N	\N	\N	ACPM	CO Person Created (Manual)	2022-09-23 18:46:25	2022-09-23 18:46:25	\N	0	f	co_2.apiuser
63	4	\N	4	\N	\N	\N	\N	LOCP	CO Person and Org Identity Linked	2022-09-23 18:46:25	2022-09-23 18:46:25	\N	0	f	co_2.apiuser
64	4	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:46:26	2022-09-23 18:46:26	\N	0	f	co_2.apiuser
65	4	\N	\N	\N	\N	\N	\N	ANAM	Name "Christie Walken" Added	2022-09-23 18:46:26	2022-09-23 18:46:26	\N	0	f	co_2.apiuser
66	4	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:46:26	2022-09-23 18:46:26	\N	0	f	co_2.apiuser
67	4	\N	\N	\N	\N	\N	\N	ECPM	Email Address Added: Email: Null > guest3@workbench.incommon.org;Type: Null > Official (official)	2022-09-23 18:46:26	2022-09-23 18:46:26	\N	0	f	co_2.apiuser
68	4	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:46:27	2022-09-23 18:46:27	\N	0	f	co_2.apiuser
69	\N	\N	4	\N	\N	\N	\N	EOIM	Identifier Added: Identifier: Null > guest3@workbench.incommon.org;Type: Null > ePPN (eppn);Login: Null > 1;Status: Null > A	2022-09-23 18:46:27	2022-09-23 18:46:27	\N	0	f	co_2.apiuser
70	4	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:46:27	2022-09-23 18:46:27	\N	0	f	co_2.apiuser
71	\N	\N	\N	5	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:46:27	2022-09-23 18:46:27	\N	0	f	co_2.apiuser
72	\N	\N	\N	6	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:46:28	2022-09-23 18:46:28	\N	0	f	co_2.apiuser
73	4	\N	\N	\N	\N	\N	\N	ECPM	Identifier Added: Identifier: Null > guest3@workbench.incommon.org;Type: Null > ePPN (eppn);Login: Null > 1;Status: Null > A	2022-09-23 18:46:28	2022-09-23 18:46:28	\N	0	f	co_2.apiuser
74	4	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:46:28	2022-09-23 18:46:28	\N	0	f	co_2.apiuser
75	4	4	\N	\N	\N	\N	\N	ACRM	CO Person Role Created (Manual)	2022-09-23 18:46:28	2022-09-23 18:46:28	\N	0	f	co_2.apiuser
76	4	\N	\N	\N	\N	\N	\N	AIDA	Identifier Auto Assigned: G00000003 (GuestID)	2022-09-23 18:46:29	2022-09-23 18:46:29	\N	0	f	co_2.apiuser
77	4	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:46:29	2022-09-23 18:46:29	\N	0	f	co_2.apiuser
78	\N	\N	5	\N	\N	\N	\N	AOIM	Org Identity Created (Manual)	2022-09-23 18:49:39	2022-09-23 18:49:39	\N	0	f	co_2.apiuser
79	\N	\N	5	\N	\N	\N	\N	ANAM	Name "Luke Skywalker" Added	2022-09-23 18:49:40	2022-09-23 18:49:40	\N	0	f	co_2.apiuser
80	5	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:49:40	2022-09-23 18:49:40	\N	0	f	co_2.apiuser
81	5	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:49:41	2022-09-23 18:49:41	\N	0	f	co_2.apiuser
82	\N	\N	\N	5	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:49:41	2022-09-23 18:49:41	\N	0	f	co_2.apiuser
83	5	\N	\N	5	\N	\N	\N	ACGM	Added to CO Group CO:members:active (5) (member=Yes, owner=No)	2022-09-23 18:49:41	2022-09-23 18:49:41	\N	0	f	co_2.apiuser
84	5	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:49:41	2022-09-23 18:49:41	\N	0	f	co_2.apiuser
85	\N	\N	\N	6	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:49:41	2022-09-23 18:49:41	\N	0	f	co_2.apiuser
86	5	\N	\N	6	\N	\N	\N	ACGM	Added to CO Group CO:members:all (6) (member=Yes, owner=No)	2022-09-23 18:49:41	2022-09-23 18:49:41	\N	0	f	co_2.apiuser
87	5	\N	\N	\N	\N	\N	\N	ACPM	CO Person Created (Manual)	2022-09-23 18:49:41	2022-09-23 18:49:41	\N	0	f	co_2.apiuser
88	5	\N	5	\N	\N	\N	\N	LOCP	CO Person and Org Identity Linked	2022-09-23 18:49:41	2022-09-23 18:49:41	\N	0	f	co_2.apiuser
89	5	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:49:42	2022-09-23 18:49:42	\N	0	f	co_2.apiuser
90	5	\N	\N	\N	\N	\N	\N	ANAM	Name "Luke Skywalker" Added	2022-09-23 18:49:42	2022-09-23 18:49:42	\N	0	f	co_2.apiuser
91	5	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:49:42	2022-09-23 18:49:42	\N	0	f	co_2.apiuser
92	5	\N	\N	\N	\N	\N	\N	ECPM	Email Address Added: Email: Null > guest4@workbench.incommon.org;Type: Null > Official (official)	2022-09-23 18:49:42	2022-09-23 18:49:42	\N	0	f	co_2.apiuser
93	5	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:49:43	2022-09-23 18:49:43	\N	0	f	co_2.apiuser
94	\N	\N	5	\N	\N	\N	\N	EOIM	Identifier Added: Identifier: Null > guest4@workbench.incommon.org;Type: Null > ePPN (eppn);Login: Null > 1;Status: Null > A	2022-09-23 18:49:43	2022-09-23 18:49:43	\N	0	f	co_2.apiuser
95	5	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:49:44	2022-09-23 18:49:44	\N	0	f	co_2.apiuser
96	\N	\N	\N	5	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:49:44	2022-09-23 18:49:44	\N	0	f	co_2.apiuser
97	\N	\N	\N	6	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:49:44	2022-09-23 18:49:44	\N	0	f	co_2.apiuser
98	5	\N	\N	\N	\N	\N	\N	ECPM	Identifier Added: Identifier: Null > guest4@workbench.incommon.org;Type: Null > ePPN (eppn);Login: Null > 1;Status: Null > A	2022-09-23 18:49:44	2022-09-23 18:49:44	\N	0	f	co_2.apiuser
99	5	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:49:44	2022-09-23 18:49:44	\N	0	f	co_2.apiuser
100	5	5	\N	\N	\N	\N	\N	ACRM	CO Person Role Created (Manual)	2022-09-23 18:49:44	2022-09-23 18:49:44	\N	0	f	co_2.apiuser
101	5	\N	\N	\N	\N	\N	\N	AIDA	Identifier Auto Assigned: G00000004 (GuestID)	2022-09-23 18:49:45	2022-09-23 18:49:45	\N	0	f	co_2.apiuser
102	5	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:49:45	2022-09-23 18:49:45	\N	0	f	co_2.apiuser
103	\N	\N	6	\N	\N	\N	\N	AOIM	Org Identity Created (Manual)	2022-09-23 18:49:46	2022-09-23 18:49:46	\N	0	f	co_2.apiuser
104	\N	\N	6	\N	\N	\N	\N	ANAM	Name "Chew Baca" Added	2022-09-23 18:49:47	2022-09-23 18:49:47	\N	0	f	co_2.apiuser
105	6	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:49:47	2022-09-23 18:49:47	\N	0	f	co_2.apiuser
106	6	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:49:47	2022-09-23 18:49:47	\N	0	f	co_2.apiuser
107	\N	\N	\N	5	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:49:47	2022-09-23 18:49:47	\N	0	f	co_2.apiuser
108	6	\N	\N	5	\N	\N	\N	ACGM	Added to CO Group CO:members:active (5) (member=Yes, owner=No)	2022-09-23 18:49:47	2022-09-23 18:49:47	\N	0	f	co_2.apiuser
109	6	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:49:47	2022-09-23 18:49:47	\N	0	f	co_2.apiuser
110	\N	\N	\N	6	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:49:47	2022-09-23 18:49:47	\N	0	f	co_2.apiuser
111	6	\N	\N	6	\N	\N	\N	ACGM	Added to CO Group CO:members:all (6) (member=Yes, owner=No)	2022-09-23 18:49:47	2022-09-23 18:49:47	\N	0	f	co_2.apiuser
112	6	\N	\N	\N	\N	\N	\N	ACPM	CO Person Created (Manual)	2022-09-23 18:49:47	2022-09-23 18:49:47	\N	0	f	co_2.apiuser
113	6	\N	6	\N	\N	\N	\N	LOCP	CO Person and Org Identity Linked	2022-09-23 18:49:48	2022-09-23 18:49:48	\N	0	f	co_2.apiuser
114	6	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:49:48	2022-09-23 18:49:48	\N	0	f	co_2.apiuser
115	6	\N	\N	\N	\N	\N	\N	ANAM	Name "Chew Baca" Added	2022-09-23 18:49:48	2022-09-23 18:49:48	\N	0	f	co_2.apiuser
116	6	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:49:49	2022-09-23 18:49:49	\N	0	f	co_2.apiuser
117	6	\N	\N	\N	\N	\N	\N	ECPM	Email Address Added: Email: Null > guest5@workbench.incommon.org;Type: Null > Official (official)	2022-09-23 18:49:49	2022-09-23 18:49:49	\N	0	f	co_2.apiuser
118	6	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:49:50	2022-09-23 18:49:50	\N	0	f	co_2.apiuser
119	\N	\N	6	\N	\N	\N	\N	EOIM	Identifier Added: Identifier: Null > guest5@workbench.incommon.org;Type: Null > ePPN (eppn);Login: Null > 1;Status: Null > A	2022-09-23 18:49:50	2022-09-23 18:49:50	\N	0	f	co_2.apiuser
120	6	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:49:50	2022-09-23 18:49:50	\N	0	f	co_2.apiuser
121	\N	\N	\N	5	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:49:50	2022-09-23 18:49:50	\N	0	f	co_2.apiuser
122	\N	\N	\N	6	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:49:50	2022-09-23 18:49:50	\N	0	f	co_2.apiuser
123	6	\N	\N	\N	\N	\N	\N	ECPM	Identifier Added: Identifier: Null > guest5@workbench.incommon.org;Type: Null > ePPN (eppn);Login: Null > 1;Status: Null > A	2022-09-23 18:49:50	2022-09-23 18:49:50	\N	0	f	co_2.apiuser
124	6	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:49:51	2022-09-23 18:49:51	\N	0	f	co_2.apiuser
125	6	6	\N	\N	\N	\N	\N	ACRM	CO Person Role Created (Manual)	2022-09-23 18:49:51	2022-09-23 18:49:51	\N	0	f	co_2.apiuser
126	6	\N	\N	\N	\N	\N	\N	AIDA	Identifier Auto Assigned: G00000005 (GuestID)	2022-09-23 18:49:51	2022-09-23 18:49:51	\N	0	f	co_2.apiuser
127	6	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:49:51	2022-09-23 18:49:51	\N	0	f	co_2.apiuser
128	\N	\N	7	\N	\N	\N	\N	AOIM	Org Identity Created (Manual)	2022-09-23 18:49:53	2022-09-23 18:49:53	\N	0	f	co_2.apiuser
129	\N	\N	7	\N	\N	\N	\N	ANAM	Name "Han Solo" Added	2022-09-23 18:49:53	2022-09-23 18:49:53	\N	0	f	co_2.apiuser
130	7	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:49:53	2022-09-23 18:49:53	\N	0	f	co_2.apiuser
131	7	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:49:54	2022-09-23 18:49:54	\N	0	f	co_2.apiuser
132	\N	\N	\N	5	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:49:54	2022-09-23 18:49:54	\N	0	f	co_2.apiuser
133	7	\N	\N	5	\N	\N	\N	ACGM	Added to CO Group CO:members:active (5) (member=Yes, owner=No)	2022-09-23 18:49:54	2022-09-23 18:49:54	\N	0	f	co_2.apiuser
134	7	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:49:54	2022-09-23 18:49:54	\N	0	f	co_2.apiuser
135	\N	\N	\N	6	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:49:54	2022-09-23 18:49:54	\N	0	f	co_2.apiuser
136	7	\N	\N	6	\N	\N	\N	ACGM	Added to CO Group CO:members:all (6) (member=Yes, owner=No)	2022-09-23 18:49:54	2022-09-23 18:49:54	\N	0	f	co_2.apiuser
137	7	\N	\N	\N	\N	\N	\N	ACPM	CO Person Created (Manual)	2022-09-23 18:49:54	2022-09-23 18:49:54	\N	0	f	co_2.apiuser
138	7	\N	7	\N	\N	\N	\N	LOCP	CO Person and Org Identity Linked	2022-09-23 18:49:54	2022-09-23 18:49:54	\N	0	f	co_2.apiuser
139	7	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:49:55	2022-09-23 18:49:55	\N	0	f	co_2.apiuser
140	7	\N	\N	\N	\N	\N	\N	ANAM	Name "Han Solo" Added	2022-09-23 18:49:55	2022-09-23 18:49:55	\N	0	f	co_2.apiuser
141	7	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:49:55	2022-09-23 18:49:55	\N	0	f	co_2.apiuser
142	7	\N	\N	\N	\N	\N	\N	ECPM	Email Address Added: Email: Null > guest6@workbench.incommon.org;Type: Null > Official (official)	2022-09-23 18:49:55	2022-09-23 18:49:55	\N	0	f	co_2.apiuser
143	7	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:49:56	2022-09-23 18:49:56	\N	0	f	co_2.apiuser
144	\N	\N	7	\N	\N	\N	\N	EOIM	Identifier Added: Identifier: Null > guest6@workbench.incommon.org;Type: Null > ePPN (eppn);Login: Null > 1;Status: Null > A	2022-09-23 18:49:56	2022-09-23 18:49:56	\N	0	f	co_2.apiuser
145	7	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:49:56	2022-09-23 18:49:56	\N	0	f	co_2.apiuser
146	\N	\N	\N	5	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:49:57	2022-09-23 18:49:57	\N	0	f	co_2.apiuser
147	\N	\N	\N	6	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:49:57	2022-09-23 18:49:57	\N	0	f	co_2.apiuser
148	7	\N	\N	\N	\N	\N	\N	ECPM	Identifier Added: Identifier: Null > guest6@workbench.incommon.org;Type: Null > ePPN (eppn);Login: Null > 1;Status: Null > A	2022-09-23 18:49:57	2022-09-23 18:49:57	\N	0	f	co_2.apiuser
149	7	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:49:57	2022-09-23 18:49:57	\N	0	f	co_2.apiuser
150	7	7	\N	\N	\N	\N	\N	ACRM	CO Person Role Created (Manual)	2022-09-23 18:49:57	2022-09-23 18:49:57	\N	0	f	co_2.apiuser
151	7	\N	\N	\N	\N	\N	\N	AIDA	Identifier Auto Assigned: G00000006 (GuestID)	2022-09-23 18:49:58	2022-09-23 18:49:58	\N	0	f	co_2.apiuser
152	7	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:49:58	2022-09-23 18:49:58	\N	0	f	co_2.apiuser
153	\N	\N	8	\N	\N	\N	\N	AOIM	Org Identity Created (Manual)	2022-09-23 18:49:59	2022-09-23 18:49:59	\N	0	f	co_2.apiuser
154	\N	\N	8	\N	\N	\N	\N	ANAM	Name "Obi-Wan Kenobi" Added	2022-09-23 18:50:00	2022-09-23 18:50:00	\N	0	f	co_2.apiuser
155	8	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:00	2022-09-23 18:50:00	\N	0	f	co_2.apiuser
156	8	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:00	2022-09-23 18:50:00	\N	0	f	co_2.apiuser
157	\N	\N	\N	5	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:50:00	2022-09-23 18:50:00	\N	0	f	co_2.apiuser
158	8	\N	\N	5	\N	\N	\N	ACGM	Added to CO Group CO:members:active (5) (member=Yes, owner=No)	2022-09-23 18:50:00	2022-09-23 18:50:00	\N	0	f	co_2.apiuser
159	8	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:00	2022-09-23 18:50:00	\N	0	f	co_2.apiuser
160	\N	\N	\N	6	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:50:00	2022-09-23 18:50:00	\N	0	f	co_2.apiuser
161	8	\N	\N	6	\N	\N	\N	ACGM	Added to CO Group CO:members:all (6) (member=Yes, owner=No)	2022-09-23 18:50:00	2022-09-23 18:50:00	\N	0	f	co_2.apiuser
162	8	\N	\N	\N	\N	\N	\N	ACPM	CO Person Created (Manual)	2022-09-23 18:50:01	2022-09-23 18:50:01	\N	0	f	co_2.apiuser
163	8	\N	8	\N	\N	\N	\N	LOCP	CO Person and Org Identity Linked	2022-09-23 18:50:01	2022-09-23 18:50:01	\N	0	f	co_2.apiuser
164	8	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:02	2022-09-23 18:50:02	\N	0	f	co_2.apiuser
165	8	\N	\N	\N	\N	\N	\N	ANAM	Name "Obi-Wan Kenobi" Added	2022-09-23 18:50:02	2022-09-23 18:50:02	\N	0	f	co_2.apiuser
166	8	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:02	2022-09-23 18:50:02	\N	0	f	co_2.apiuser
167	8	\N	\N	\N	\N	\N	\N	ECPM	Email Address Added: Email: Null > guest7@workbench.incommon.org;Type: Null > Official (official)	2022-09-23 18:50:02	2022-09-23 18:50:02	\N	0	f	co_2.apiuser
168	8	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:03	2022-09-23 18:50:03	\N	0	f	co_2.apiuser
169	\N	\N	8	\N	\N	\N	\N	EOIM	Identifier Added: Identifier: Null > guest7@workbench.incommon.org;Type: Null > ePPN (eppn);Login: Null > 1;Status: Null > A	2022-09-23 18:50:03	2022-09-23 18:50:03	\N	0	f	co_2.apiuser
170	8	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:03	2022-09-23 18:50:03	\N	0	f	co_2.apiuser
171	\N	\N	\N	5	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:50:03	2022-09-23 18:50:03	\N	0	f	co_2.apiuser
172	\N	\N	\N	6	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:50:03	2022-09-23 18:50:03	\N	0	f	co_2.apiuser
173	8	\N	\N	\N	\N	\N	\N	ECPM	Identifier Added: Identifier: Null > guest7@workbench.incommon.org;Type: Null > ePPN (eppn);Login: Null > 1;Status: Null > A	2022-09-23 18:50:03	2022-09-23 18:50:03	\N	0	f	co_2.apiuser
174	8	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:04	2022-09-23 18:50:04	\N	0	f	co_2.apiuser
175	8	8	\N	\N	\N	\N	\N	ACRM	CO Person Role Created (Manual)	2022-09-23 18:50:04	2022-09-23 18:50:04	\N	0	f	co_2.apiuser
176	8	\N	\N	\N	\N	\N	\N	AIDA	Identifier Auto Assigned: G00000007 (GuestID)	2022-09-23 18:50:05	2022-09-23 18:50:05	\N	0	f	co_2.apiuser
177	8	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:05	2022-09-23 18:50:05	\N	0	f	co_2.apiuser
178	\N	\N	9	\N	\N	\N	\N	AOIM	Org Identity Created (Manual)	2022-09-23 18:50:06	2022-09-23 18:50:06	\N	0	f	co_2.apiuser
179	\N	\N	9	\N	\N	\N	\N	ANAM	Name "Donald Duck" Added	2022-09-23 18:50:06	2022-09-23 18:50:06	\N	0	f	co_2.apiuser
180	9	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:07	2022-09-23 18:50:07	\N	0	f	co_2.apiuser
181	9	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:07	2022-09-23 18:50:07	\N	0	f	co_2.apiuser
182	\N	\N	\N	5	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:50:07	2022-09-23 18:50:07	\N	0	f	co_2.apiuser
183	9	\N	\N	5	\N	\N	\N	ACGM	Added to CO Group CO:members:active (5) (member=Yes, owner=No)	2022-09-23 18:50:07	2022-09-23 18:50:07	\N	0	f	co_2.apiuser
184	9	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:07	2022-09-23 18:50:07	\N	0	f	co_2.apiuser
185	\N	\N	\N	6	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:50:07	2022-09-23 18:50:07	\N	0	f	co_2.apiuser
186	9	\N	\N	6	\N	\N	\N	ACGM	Added to CO Group CO:members:all (6) (member=Yes, owner=No)	2022-09-23 18:50:07	2022-09-23 18:50:07	\N	0	f	co_2.apiuser
187	9	\N	\N	\N	\N	\N	\N	ACPM	CO Person Created (Manual)	2022-09-23 18:50:07	2022-09-23 18:50:07	\N	0	f	co_2.apiuser
188	9	\N	9	\N	\N	\N	\N	LOCP	CO Person and Org Identity Linked	2022-09-23 18:50:08	2022-09-23 18:50:08	\N	0	f	co_2.apiuser
189	9	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:08	2022-09-23 18:50:08	\N	0	f	co_2.apiuser
190	9	\N	\N	\N	\N	\N	\N	ANAM	Name "Donald Duck" Added	2022-09-23 18:50:08	2022-09-23 18:50:08	\N	0	f	co_2.apiuser
191	9	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:09	2022-09-23 18:50:09	\N	0	f	co_2.apiuser
192	9	\N	\N	\N	\N	\N	\N	ECPM	Email Address Added: Email: Null > guest8@workbench.incommon.org;Type: Null > Official (official)	2022-09-23 18:50:09	2022-09-23 18:50:09	\N	0	f	co_2.apiuser
193	9	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:10	2022-09-23 18:50:10	\N	0	f	co_2.apiuser
194	\N	\N	9	\N	\N	\N	\N	EOIM	Identifier Added: Identifier: Null > guest8@workbench.incommon.org;Type: Null > ePPN (eppn);Login: Null > 1;Status: Null > A	2022-09-23 18:50:10	2022-09-23 18:50:10	\N	0	f	co_2.apiuser
195	9	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:10	2022-09-23 18:50:10	\N	0	f	co_2.apiuser
196	\N	\N	\N	5	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:50:10	2022-09-23 18:50:10	\N	0	f	co_2.apiuser
197	\N	\N	\N	6	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:50:10	2022-09-23 18:50:10	\N	0	f	co_2.apiuser
198	9	\N	\N	\N	\N	\N	\N	ECPM	Identifier Added: Identifier: Null > guest8@workbench.incommon.org;Type: Null > ePPN (eppn);Login: Null > 1;Status: Null > A	2022-09-23 18:50:10	2022-09-23 18:50:10	\N	0	f	co_2.apiuser
199	9	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:11	2022-09-23 18:50:11	\N	0	f	co_2.apiuser
200	9	9	\N	\N	\N	\N	\N	ACRM	CO Person Role Created (Manual)	2022-09-23 18:50:11	2022-09-23 18:50:11	\N	0	f	co_2.apiuser
201	9	\N	\N	\N	\N	\N	\N	AIDA	Identifier Auto Assigned: G00000008 (GuestID)	2022-09-23 18:50:11	2022-09-23 18:50:11	\N	0	f	co_2.apiuser
202	9	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:12	2022-09-23 18:50:12	\N	0	f	co_2.apiuser
203	\N	\N	10	\N	\N	\N	\N	AOIM	Org Identity Created (Manual)	2022-09-23 18:50:13	2022-09-23 18:50:13	\N	0	f	co_2.apiuser
204	\N	\N	10	\N	\N	\N	\N	ANAM	Name "Bugs Bunny" Added	2022-09-23 18:50:13	2022-09-23 18:50:13	\N	0	f	co_2.apiuser
205	10	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:14	2022-09-23 18:50:14	\N	0	f	co_2.apiuser
206	10	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:14	2022-09-23 18:50:14	\N	0	f	co_2.apiuser
207	\N	\N	\N	5	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:50:14	2022-09-23 18:50:14	\N	0	f	co_2.apiuser
208	10	\N	\N	5	\N	\N	\N	ACGM	Added to CO Group CO:members:active (5) (member=Yes, owner=No)	2022-09-23 18:50:14	2022-09-23 18:50:14	\N	0	f	co_2.apiuser
209	10	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:14	2022-09-23 18:50:14	\N	0	f	co_2.apiuser
210	\N	\N	\N	6	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:50:14	2022-09-23 18:50:14	\N	0	f	co_2.apiuser
211	10	\N	\N	6	\N	\N	\N	ACGM	Added to CO Group CO:members:all (6) (member=Yes, owner=No)	2022-09-23 18:50:14	2022-09-23 18:50:14	\N	0	f	co_2.apiuser
212	10	\N	\N	\N	\N	\N	\N	ACPM	CO Person Created (Manual)	2022-09-23 18:50:14	2022-09-23 18:50:14	\N	0	f	co_2.apiuser
213	10	\N	10	\N	\N	\N	\N	LOCP	CO Person and Org Identity Linked	2022-09-23 18:50:15	2022-09-23 18:50:15	\N	0	f	co_2.apiuser
214	10	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:15	2022-09-23 18:50:15	\N	0	f	co_2.apiuser
215	10	\N	\N	\N	\N	\N	\N	ANAM	Name "Bugs Bunny" Added	2022-09-23 18:50:15	2022-09-23 18:50:15	\N	0	f	co_2.apiuser
216	10	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:16	2022-09-23 18:50:16	\N	0	f	co_2.apiuser
217	10	\N	\N	\N	\N	\N	\N	ECPM	Email Address Added: Email: Null > guest9@workbench.incommon.org;Type: Null > Official (official)	2022-09-23 18:50:16	2022-09-23 18:50:16	\N	0	f	co_2.apiuser
218	10	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:16	2022-09-23 18:50:16	\N	0	f	co_2.apiuser
219	\N	\N	10	\N	\N	\N	\N	EOIM	Identifier Added: Identifier: Null > guest9@workbench.incommon.org;Type: Null > ePPN (eppn);Login: Null > 1;Status: Null > A	2022-09-23 18:50:16	2022-09-23 18:50:16	\N	0	f	co_2.apiuser
220	10	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:17	2022-09-23 18:50:17	\N	0	f	co_2.apiuser
221	\N	\N	\N	5	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:50:17	2022-09-23 18:50:17	\N	0	f	co_2.apiuser
222	\N	\N	\N	6	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:50:17	2022-09-23 18:50:17	\N	0	f	co_2.apiuser
223	10	\N	\N	\N	\N	\N	\N	ECPM	Identifier Added: Identifier: Null > guest9@workbench.incommon.org;Type: Null > ePPN (eppn);Login: Null > 1;Status: Null > A	2022-09-23 18:50:17	2022-09-23 18:50:17	\N	0	f	co_2.apiuser
224	10	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:17	2022-09-23 18:50:17	\N	0	f	co_2.apiuser
225	10	10	\N	\N	\N	\N	\N	ACRM	CO Person Role Created (Manual)	2022-09-23 18:50:18	2022-09-23 18:50:18	\N	0	f	co_2.apiuser
226	10	\N	\N	\N	\N	\N	\N	AIDA	Identifier Auto Assigned: G00000009 (GuestID)	2022-09-23 18:50:18	2022-09-23 18:50:18	\N	0	f	co_2.apiuser
227	10	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:18	2022-09-23 18:50:18	\N	0	f	co_2.apiuser
228	\N	\N	11	\N	\N	\N	\N	AOIM	Org Identity Created (Manual)	2022-09-23 18:50:20	2022-09-23 18:50:20	\N	0	f	co_2.apiuser
229	\N	\N	11	\N	\N	\N	\N	ANAM	Name "Mickey Mouse" Added	2022-09-23 18:50:20	2022-09-23 18:50:20	\N	0	f	co_2.apiuser
230	11	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:21	2022-09-23 18:50:21	\N	0	f	co_2.apiuser
231	11	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:21	2022-09-23 18:50:21	\N	0	f	co_2.apiuser
232	\N	\N	\N	5	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:50:21	2022-09-23 18:50:21	\N	0	f	co_2.apiuser
233	11	\N	\N	5	\N	\N	\N	ACGM	Added to CO Group CO:members:active (5) (member=Yes, owner=No)	2022-09-23 18:50:21	2022-09-23 18:50:21	\N	0	f	co_2.apiuser
234	11	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:21	2022-09-23 18:50:21	\N	0	f	co_2.apiuser
235	\N	\N	\N	6	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:50:21	2022-09-23 18:50:21	\N	0	f	co_2.apiuser
236	11	\N	\N	6	\N	\N	\N	ACGM	Added to CO Group CO:members:all (6) (member=Yes, owner=No)	2022-09-23 18:50:21	2022-09-23 18:50:21	\N	0	f	co_2.apiuser
237	11	\N	\N	\N	\N	\N	\N	ACPM	CO Person Created (Manual)	2022-09-23 18:50:21	2022-09-23 18:50:21	\N	0	f	co_2.apiuser
238	11	\N	11	\N	\N	\N	\N	LOCP	CO Person and Org Identity Linked	2022-09-23 18:50:21	2022-09-23 18:50:21	\N	0	f	co_2.apiuser
239	11	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:22	2022-09-23 18:50:22	\N	0	f	co_2.apiuser
240	11	\N	\N	\N	\N	\N	\N	ANAM	Name "Mickey Mouse" Added	2022-09-23 18:50:22	2022-09-23 18:50:22	\N	0	f	co_2.apiuser
241	11	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:22	2022-09-23 18:50:22	\N	0	f	co_2.apiuser
242	11	\N	\N	\N	\N	\N	\N	ECPM	Email Address Added: Email: Null > guest10@workbench.incommon.org;Type: Null > Official (official)	2022-09-23 18:50:22	2022-09-23 18:50:22	\N	0	f	co_2.apiuser
243	11	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:23	2022-09-23 18:50:23	\N	0	f	co_2.apiuser
244	\N	\N	11	\N	\N	\N	\N	EOIM	Identifier Added: Identifier: Null > guest10@workbench.incommon.org;Type: Null > ePPN (eppn);Login: Null > 1;Status: Null > A	2022-09-23 18:50:23	2022-09-23 18:50:23	\N	0	f	co_2.apiuser
245	11	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:23	2022-09-23 18:50:23	\N	0	f	co_2.apiuser
246	\N	\N	\N	5	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:50:24	2022-09-23 18:50:24	\N	0	f	co_2.apiuser
247	\N	\N	\N	6	\N	\N	\N	PCGA	Provisioned COmanage data export	2022-09-23 18:50:24	2022-09-23 18:50:24	\N	0	f	co_2.apiuser
248	11	\N	\N	\N	\N	\N	\N	ECPM	Identifier Added: Identifier: Null > guest10@workbench.incommon.org;Type: Null > ePPN (eppn);Login: Null > 1;Status: Null > A	2022-09-23 18:50:24	2022-09-23 18:50:24	\N	0	f	co_2.apiuser
249	11	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:24	2022-09-23 18:50:24	\N	0	f	co_2.apiuser
250	11	11	\N	\N	\N	\N	\N	ACRM	CO Person Role Created (Manual)	2022-09-23 18:50:24	2022-09-23 18:50:24	\N	0	f	co_2.apiuser
251	11	\N	\N	\N	\N	\N	\N	AIDA	Identifier Auto Assigned: G00000010 (GuestID)	2022-09-23 18:50:25	2022-09-23 18:50:25	\N	0	f	co_2.apiuser
252	11	\N	\N	\N	\N	\N	\N	PCPA	Provisioned COmanage data export	2022-09-23 18:50:25	2022-09-23 18:50:25	\N	0	f	co_2.apiuser
\.


--
-- Data for Name: cm_http_servers; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_http_servers (id, server_id, serverurl, username, password, ssl_verify_peer, ssl_verify_host, created, modified) FROM stdin;
\.


--
-- Data for Name: cm_identifiers; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_identifiers (id, identifier, type, login, status, co_person_id, org_identity_id, co_department_id, co_group_id, organization_id, source_identifier_id, co_provisioning_target_id, created, modified, identifier_id, revision, deleted, actor_identifier) FROM stdin;
1	banderson	uid	t	A	\N	1	\N	\N	\N	\N	\N	2022-09-23 17:29:25	2022-09-23 17:29:25	\N	0	f	Shell user "root"
2	guest1@workbench.incommon.org	eppn	t	A	\N	2	\N	\N	\N	\N	\N	2022-09-23 18:46:13	2022-09-23 18:46:13	\N	0	f	co_2.apiuser
3	guest1@workbench.incommon.org	eppn	t	A	2	\N	\N	\N	\N	\N	\N	2022-09-23 18:46:14	2022-09-23 18:46:14	\N	0	f	co_2.apiuser
4	G00000001	GuestID	t	A	2	\N	\N	\N	\N	\N	\N	2022-09-23 18:46:15	2022-09-23 18:46:15	\N	0	f	co_2.apiuser
5	guest2@workbench.incommon.org	eppn	t	A	\N	3	\N	\N	\N	\N	\N	2022-09-23 18:46:20	2022-09-23 18:46:20	\N	0	f	co_2.apiuser
6	guest2@workbench.incommon.org	eppn	t	A	3	\N	\N	\N	\N	\N	\N	2022-09-23 18:46:21	2022-09-23 18:46:21	\N	0	f	co_2.apiuser
7	G00000002	GuestID	t	A	3	\N	\N	\N	\N	\N	\N	2022-09-23 18:46:22	2022-09-23 18:46:22	\N	0	f	co_2.apiuser
8	guest3@workbench.incommon.org	eppn	t	A	\N	4	\N	\N	\N	\N	\N	2022-09-23 18:46:27	2022-09-23 18:46:27	\N	0	f	co_2.apiuser
9	guest3@workbench.incommon.org	eppn	t	A	4	\N	\N	\N	\N	\N	\N	2022-09-23 18:46:27	2022-09-23 18:46:27	\N	0	f	co_2.apiuser
10	G00000003	GuestID	t	A	4	\N	\N	\N	\N	\N	\N	2022-09-23 18:46:29	2022-09-23 18:46:29	\N	0	f	co_2.apiuser
11	guest4@workbench.incommon.org	eppn	t	A	\N	5	\N	\N	\N	\N	\N	2022-09-23 18:49:43	2022-09-23 18:49:43	\N	0	f	co_2.apiuser
12	guest4@workbench.incommon.org	eppn	t	A	5	\N	\N	\N	\N	\N	\N	2022-09-23 18:49:43	2022-09-23 18:49:43	\N	0	f	co_2.apiuser
13	G00000004	GuestID	t	A	5	\N	\N	\N	\N	\N	\N	2022-09-23 18:49:45	2022-09-23 18:49:45	\N	0	f	co_2.apiuser
14	guest5@workbench.incommon.org	eppn	t	A	\N	6	\N	\N	\N	\N	\N	2022-09-23 18:49:49	2022-09-23 18:49:49	\N	0	f	co_2.apiuser
15	guest5@workbench.incommon.org	eppn	t	A	6	\N	\N	\N	\N	\N	\N	2022-09-23 18:49:50	2022-09-23 18:49:50	\N	0	f	co_2.apiuser
16	G00000005	GuestID	t	A	6	\N	\N	\N	\N	\N	\N	2022-09-23 18:49:51	2022-09-23 18:49:51	\N	0	f	co_2.apiuser
17	guest6@workbench.incommon.org	eppn	t	A	\N	7	\N	\N	\N	\N	\N	2022-09-23 18:49:56	2022-09-23 18:49:56	\N	0	f	co_2.apiuser
18	guest6@workbench.incommon.org	eppn	t	A	7	\N	\N	\N	\N	\N	\N	2022-09-23 18:49:56	2022-09-23 18:49:56	\N	0	f	co_2.apiuser
19	G00000006	GuestID	t	A	7	\N	\N	\N	\N	\N	\N	2022-09-23 18:49:58	2022-09-23 18:49:58	\N	0	f	co_2.apiuser
20	guest7@workbench.incommon.org	eppn	t	A	\N	8	\N	\N	\N	\N	\N	2022-09-23 18:50:03	2022-09-23 18:50:03	\N	0	f	co_2.apiuser
21	guest7@workbench.incommon.org	eppn	t	A	8	\N	\N	\N	\N	\N	\N	2022-09-23 18:50:03	2022-09-23 18:50:03	\N	0	f	co_2.apiuser
22	G00000007	GuestID	t	A	8	\N	\N	\N	\N	\N	\N	2022-09-23 18:50:05	2022-09-23 18:50:05	\N	0	f	co_2.apiuser
23	guest8@workbench.incommon.org	eppn	t	A	\N	9	\N	\N	\N	\N	\N	2022-09-23 18:50:09	2022-09-23 18:50:09	\N	0	f	co_2.apiuser
24	guest8@workbench.incommon.org	eppn	t	A	9	\N	\N	\N	\N	\N	\N	2022-09-23 18:50:10	2022-09-23 18:50:10	\N	0	f	co_2.apiuser
25	G00000008	GuestID	t	A	9	\N	\N	\N	\N	\N	\N	2022-09-23 18:50:11	2022-09-23 18:50:11	\N	0	f	co_2.apiuser
26	guest9@workbench.incommon.org	eppn	t	A	\N	10	\N	\N	\N	\N	\N	2022-09-23 18:50:16	2022-09-23 18:50:16	\N	0	f	co_2.apiuser
27	guest9@workbench.incommon.org	eppn	t	A	10	\N	\N	\N	\N	\N	\N	2022-09-23 18:50:17	2022-09-23 18:50:17	\N	0	f	co_2.apiuser
28	G00000009	GuestID	t	A	10	\N	\N	\N	\N	\N	\N	2022-09-23 18:50:18	2022-09-23 18:50:18	\N	0	f	co_2.apiuser
29	guest10@workbench.incommon.org	eppn	t	A	\N	11	\N	\N	\N	\N	\N	2022-09-23 18:50:23	2022-09-23 18:50:23	\N	0	f	co_2.apiuser
30	guest10@workbench.incommon.org	eppn	t	A	11	\N	\N	\N	\N	\N	\N	2022-09-23 18:50:23	2022-09-23 18:50:23	\N	0	f	co_2.apiuser
31	G00000010	GuestID	t	A	11	\N	\N	\N	\N	\N	\N	2022-09-23 18:50:25	2022-09-23 18:50:25	\N	0	f	co_2.apiuser
\.


--
-- Data for Name: cm_identity_documents; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_identity_documents (id, co_person_id, document_type, document_subtype, issuing_authority, subject, document_identifier, valid_from, valid_through, verification_method, verifier_identifier, verifier_comment, created, modified, identity_document_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_kafka_servers; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_kafka_servers (id, server_id, brokers, security_protocol, sasl_mechanism, username, password, created, modified) FROM stdin;
\.


--
-- Data for Name: cm_ldap_servers; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_ldap_servers (id, server_id, serverurl, binddn, password, basedn, created, modified) FROM stdin;
\.


--
-- Data for Name: cm_locks; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_locks (id, co_id, label, pid, created, modified) FROM stdin;
\.


--
-- Data for Name: cm_match_server_attributes; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_match_server_attributes (id, match_server_id, attribute, type, required, created, modified) FROM stdin;
\.


--
-- Data for Name: cm_match_servers; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_match_servers (id, server_id, serverurl, username, password, sor_label, created, modified) FROM stdin;
\.


--
-- Data for Name: cm_meta; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_meta (upgrade_version) FROM stdin;
4.0.2
\.


--
-- Data for Name: cm_names; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_names (id, honorific, given, middle, family, suffix, type, language, co_person_id, org_identity_id, primary_name, source_name_id, created, modified, name_id, revision, deleted, actor_identifier) FROM stdin;
1	\N	Registry	\N	Anderson	\N	official	\N	\N	1	t	\N	2022-09-23 17:29:25	2022-09-23 17:29:25	\N	0	f	Shell user "root"
2	\N	Registry	\N	Anderson	\N	official	\N	1	\N	t	\N	2022-09-23 17:29:26	2022-09-23 17:29:26	\N	0	f	Shell user "root"
3		Gusto		Guest		official	en	\N	2	t	\N	2022-09-23 18:46:10	2022-09-23 18:46:10	\N	0	f	co_2.apiuser
4		Gusto		Guest		official	en	2	\N	t	\N	2022-09-23 18:46:12	2022-09-23 18:46:12	\N	0	f	co_2.apiuser
5		Philipe		Invitado		official	en	\N	3	t	\N	2022-09-23 18:46:17	2022-09-23 18:46:17	\N	0	f	co_2.apiuser
6		Philipe		Invitado		official	en	3	\N	t	\N	2022-09-23 18:46:19	2022-09-23 18:46:19	\N	0	f	co_2.apiuser
7		Christie		Walken		official	en	\N	4	t	\N	2022-09-23 18:46:24	2022-09-23 18:46:24	\N	0	f	co_2.apiuser
8		Christie		Walken		official	en	4	\N	t	\N	2022-09-23 18:46:26	2022-09-23 18:46:26	\N	0	f	co_2.apiuser
9		Luke		Skywalker		official	en	\N	5	t	\N	2022-09-23 18:49:40	2022-09-23 18:49:40	\N	0	f	co_2.apiuser
10		Luke		Skywalker		official	en	5	\N	t	\N	2022-09-23 18:49:42	2022-09-23 18:49:42	\N	0	f	co_2.apiuser
11		Chew		Baca		official	en	\N	6	t	\N	2022-09-23 18:49:47	2022-09-23 18:49:47	\N	0	f	co_2.apiuser
12		Chew		Baca		official	en	6	\N	t	\N	2022-09-23 18:49:48	2022-09-23 18:49:48	\N	0	f	co_2.apiuser
13		Han		Solo		official	en	\N	7	t	\N	2022-09-23 18:49:53	2022-09-23 18:49:53	\N	0	f	co_2.apiuser
14		Han		Solo		official	en	7	\N	t	\N	2022-09-23 18:49:55	2022-09-23 18:49:55	\N	0	f	co_2.apiuser
15		Obi-Wan		Kenobi		official	en	\N	8	t	\N	2022-09-23 18:50:00	2022-09-23 18:50:00	\N	0	f	co_2.apiuser
16		Obi-Wan		Kenobi		official	en	8	\N	t	\N	2022-09-23 18:50:01	2022-09-23 18:50:01	\N	0	f	co_2.apiuser
17		Donald		Duck		official	en	\N	9	t	\N	2022-09-23 18:50:06	2022-09-23 18:50:06	\N	0	f	co_2.apiuser
18		Donald		Duck		official	en	9	\N	t	\N	2022-09-23 18:50:08	2022-09-23 18:50:08	\N	0	f	co_2.apiuser
19		Bugs		Bunny		official	en	\N	10	t	\N	2022-09-23 18:50:13	2022-09-23 18:50:13	\N	0	f	co_2.apiuser
20		Bugs		Bunny		official	en	10	\N	t	\N	2022-09-23 18:50:15	2022-09-23 18:50:15	\N	0	f	co_2.apiuser
21		Mickey		Mouse		official	en	\N	11	t	\N	2022-09-23 18:50:20	2022-09-23 18:50:20	\N	0	f	co_2.apiuser
22		Mickey		Mouse		official	en	11	\N	t	\N	2022-09-23 18:50:22	2022-09-23 18:50:22	\N	0	f	co_2.apiuser
\.


--
-- Data for Name: cm_navigation_links; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_navigation_links (id, description, title, url, ordr, location, created, modified) FROM stdin;
\.


--
-- Data for Name: cm_oauth2_servers; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_oauth2_servers (id, server_id, serverurl, clientid, client_secret, access_grant_type, scope, refresh_token, access_token, token_response, created, modified) FROM stdin;
\.


--
-- Data for Name: cm_orcid_sources; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_orcid_sources (id, org_identity_source_id, server_id, created, modified) FROM stdin;
\.


--
-- Data for Name: cm_org_identities; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_org_identities (id, status, date_of_birth, affiliation, title, o, ou, co_id, valid_from, valid_through, created, modified, org_identity_id, revision, deleted, actor_identifier) FROM stdin;
1	\N	\N	member	\N	\N	\N	1	\N	\N	2022-09-23 17:29:25	2022-09-23 17:29:25	\N	0	f	Shell user "root"
2	\N	\N					2	\N	\N	2022-09-23 18:46:09	2022-09-23 18:46:09	\N	0	f	co_2.apiuser
3	\N	\N					2	\N	\N	2022-09-23 18:46:17	2022-09-23 18:46:17	\N	0	f	co_2.apiuser
4	\N	\N					2	\N	\N	2022-09-23 18:46:23	2022-09-23 18:46:23	\N	0	f	co_2.apiuser
5	\N	\N					2	\N	\N	2022-09-23 18:49:39	2022-09-23 18:49:39	\N	0	f	co_2.apiuser
6	\N	\N					2	\N	\N	2022-09-23 18:49:46	2022-09-23 18:49:46	\N	0	f	co_2.apiuser
7	\N	\N					2	\N	\N	2022-09-23 18:49:52	2022-09-23 18:49:52	\N	0	f	co_2.apiuser
8	\N	\N					2	\N	\N	2022-09-23 18:49:59	2022-09-23 18:49:59	\N	0	f	co_2.apiuser
9	\N	\N					2	\N	\N	2022-09-23 18:50:06	2022-09-23 18:50:06	\N	0	f	co_2.apiuser
10	\N	\N					2	\N	\N	2022-09-23 18:50:13	2022-09-23 18:50:13	\N	0	f	co_2.apiuser
11	\N	\N					2	\N	\N	2022-09-23 18:50:19	2022-09-23 18:50:19	\N	0	f	co_2.apiuser
\.


--
-- Data for Name: cm_org_identity_source_records; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_org_identity_source_records (id, org_identity_source_id, sorid, source_record, last_update, org_identity_id, co_petition_id, reference_identifier, created, modified, org_identity_source_record_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_org_identity_sources; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_org_identity_sources (id, co_id, description, plugin, co_pipeline_id, status, sync_mode, sync_query_mismatch_mode, sync_query_skip_known, sync_on_user_login, eppn_identifier_type, eppn_suffix, hash_source_record, created, modified, org_identity_source_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_organizations; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_organizations (id, co_id, name, description, type, created, modified, organization_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_servers; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_servers (id, co_id, description, server_type, status, created, modified) FROM stdin;
1	2	SQL Export	SQ	A	2022-09-23 17:44:37	2022-09-23 17:44:37
\.


--
-- Data for Name: cm_sql_servers; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_sql_servers (id, server_id, type, hostname, username, password, databas, created, modified) FROM stdin;
1	1	PG	comanage-midpoint-data	comanage_midpoint_loader	123321	comanage_midpoint_loader	2022-09-23 17:44:37	2022-09-23 17:52:08
\.


--
-- Data for Name: cm_ssh_key_authenticators; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_ssh_key_authenticators (id, authenticator_id, created, modified) FROM stdin;
\.


--
-- Data for Name: cm_ssh_keys; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_ssh_keys (id, ssh_key_authenticator_id, co_person_id, comment, type, skey, created, modified, ssh_key_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_telephone_numbers; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_telephone_numbers (id, country_code, area_code, number, extension, description, type, co_person_role_id, org_identity_id, co_department_id, organization_id, source_telephone_number_id, created, modified, telephone_number_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Data for Name: cm_urls; Type: TABLE DATA; Schema: public; Owner: registry_user
--

COPY public.cm_urls (id, url, description, type, co_person_id, org_identity_id, co_department_id, organization_id, source_url_id, created, modified, url_id, revision, deleted, actor_identifier) FROM stdin;
\.


--
-- Name: cm_ad_hoc_attributes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_ad_hoc_attributes_id_seq', 1, false);


--
-- Name: cm_addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_addresses_id_seq', 1, false);


--
-- Name: cm_api_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_api_users_id_seq', 1, true);


--
-- Name: cm_application_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_application_preferences_id_seq', 1, true);


--
-- Name: cm_attribute_enumerations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_attribute_enumerations_id_seq', 1, false);


--
-- Name: cm_authentication_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_authentication_events_id_seq', 134, true);


--
-- Name: cm_authenticator_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_authenticator_statuses_id_seq', 1, false);


--
-- Name: cm_authenticators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_authenticators_id_seq', 1, false);


--
-- Name: cm_clusters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_clusters_id_seq', 1, false);


--
-- Name: cm_cmp_enrollment_attributes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_cmp_enrollment_attributes_id_seq', 1, false);


--
-- Name: cm_cmp_enrollment_configurations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_cmp_enrollment_configurations_id_seq', 1, true);


--
-- Name: cm_co_dashboard_widgets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_dashboard_widgets_id_seq', 1, false);


--
-- Name: cm_co_dashboards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_dashboards_id_seq', 1, false);


--
-- Name: cm_co_departments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_departments_id_seq', 1, false);


--
-- Name: cm_co_email_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_email_lists_id_seq', 1, false);


--
-- Name: cm_co_enrollment_attribute_defaults_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_enrollment_attribute_defaults_id_seq', 1, true);


--
-- Name: cm_co_enrollment_attributes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_enrollment_attributes_id_seq', 31, true);


--
-- Name: cm_co_enrollment_authenticators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_enrollment_authenticators_id_seq', 1, false);


--
-- Name: cm_co_enrollment_clusters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_enrollment_clusters_id_seq', 1, false);


--
-- Name: cm_co_enrollment_flow_wedges_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_enrollment_flow_wedges_id_seq', 1, false);


--
-- Name: cm_co_enrollment_flows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_enrollment_flows_id_seq', 8, true);


--
-- Name: cm_co_enrollment_sources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_enrollment_sources_id_seq', 1, false);


--
-- Name: cm_co_expiration_counts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_expiration_counts_id_seq', 1, false);


--
-- Name: cm_co_expiration_policies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_expiration_policies_id_seq', 1, false);


--
-- Name: cm_co_extended_attributes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_extended_attributes_id_seq', 1, false);


--
-- Name: cm_co_extended_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_extended_types_id_seq', 117, true);


--
-- Name: cm_co_group_members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_group_members_id_seq', 22, true);


--
-- Name: cm_co_group_nestings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_group_nestings_id_seq', 1, false);


--
-- Name: cm_co_group_ois_mappings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_group_ois_mappings_id_seq', 1, false);


--
-- Name: cm_co_grouper_provisioner_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_grouper_provisioner_groups_id_seq', 1, false);


--
-- Name: cm_co_grouper_provisioner_targets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_grouper_provisioner_targets_id_seq', 1, false);


--
-- Name: cm_co_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_groups_id_seq', 6, true);


--
-- Name: cm_co_identifier_assignments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_identifier_assignments_id_seq', 1, true);


--
-- Name: cm_co_identifier_validators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_identifier_validators_id_seq', 1, false);


--
-- Name: cm_co_invites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_invites_id_seq', 1, false);


--
-- Name: cm_co_job_history_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_job_history_records_id_seq', 1, false);


--
-- Name: cm_co_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_jobs_id_seq', 1, true);


--
-- Name: cm_co_ldap_provisioner_attr_groupings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_ldap_provisioner_attr_groupings_id_seq', 1, false);


--
-- Name: cm_co_ldap_provisioner_attributes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_ldap_provisioner_attributes_id_seq', 1, false);


--
-- Name: cm_co_ldap_provisioner_dns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_ldap_provisioner_dns_id_seq', 1, false);


--
-- Name: cm_co_ldap_provisioner_targets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_ldap_provisioner_targets_id_seq', 1, false);


--
-- Name: cm_co_localizations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_localizations_id_seq', 1, false);


--
-- Name: cm_co_message_templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_message_templates_id_seq', 1, false);


--
-- Name: cm_co_navigation_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_navigation_links_id_seq', 1, false);


--
-- Name: cm_co_notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_notifications_id_seq', 1, false);


--
-- Name: cm_co_nsf_demographics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_nsf_demographics_id_seq', 1, false);


--
-- Name: cm_co_org_identity_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_org_identity_links_id_seq', 11, true);


--
-- Name: cm_co_people_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_people_id_seq', 11, true);


--
-- Name: cm_co_person_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_person_roles_id_seq', 11, true);


--
-- Name: cm_co_petition_attributes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_petition_attributes_id_seq', 1, false);


--
-- Name: cm_co_petition_history_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_petition_history_records_id_seq', 1, false);


--
-- Name: cm_co_petitions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_petitions_id_seq', 1, false);


--
-- Name: cm_co_pipelines_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_pipelines_id_seq', 1, false);


--
-- Name: cm_co_provisioning_exports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_provisioning_exports_id_seq', 12, true);


--
-- Name: cm_co_provisioning_target_filters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_provisioning_target_filters_id_seq', 1, false);


--
-- Name: cm_co_provisioning_targets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_provisioning_targets_id_seq', 1, true);


--
-- Name: cm_co_self_service_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_self_service_permissions_id_seq', 1, false);


--
-- Name: cm_co_sequential_identifier_assignments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_sequential_identifier_assignments_id_seq', 1, true);


--
-- Name: cm_co_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_services_id_seq', 1, false);


--
-- Name: cm_co_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_settings_id_seq', 1, false);


--
-- Name: cm_co_sql_provisioner_targets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_sql_provisioner_targets_id_seq', 1, true);


--
-- Name: cm_co_t_and_c_agreements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_t_and_c_agreements_id_seq', 1, false);


--
-- Name: cm_co_terms_and_conditions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_terms_and_conditions_id_seq', 1, false);


--
-- Name: cm_co_themes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_co_themes_id_seq', 1, false);


--
-- Name: cm_core_apis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_core_apis_id_seq', 1, false);


--
-- Name: cm_cos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_cos_id_seq', 2, true);


--
-- Name: cm_cous_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_cous_id_seq', 1, false);


--
-- Name: cm_data_filters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_data_filters_id_seq', 1, false);


--
-- Name: cm_dictionaries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_dictionaries_id_seq', 1, false);


--
-- Name: cm_dictionary_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_dictionary_entries_id_seq', 1, false);


--
-- Name: cm_email_addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_email_addresses_id_seq', 10, true);


--
-- Name: cm_env_sources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_env_sources_id_seq', 1, false);


--
-- Name: cm_history_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_history_records_id_seq', 252, true);


--
-- Name: cm_http_servers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_http_servers_id_seq', 1, false);


--
-- Name: cm_identifiers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_identifiers_id_seq', 31, true);


--
-- Name: cm_identity_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_identity_documents_id_seq', 1, false);


--
-- Name: cm_kafka_servers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_kafka_servers_id_seq', 1, false);


--
-- Name: cm_ldap_servers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_ldap_servers_id_seq', 1, false);


--
-- Name: cm_locks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_locks_id_seq', 1, false);


--
-- Name: cm_match_server_attributes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_match_server_attributes_id_seq', 1, false);


--
-- Name: cm_match_servers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_match_servers_id_seq', 1, false);


--
-- Name: cm_names_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_names_id_seq', 22, true);


--
-- Name: cm_navigation_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_navigation_links_id_seq', 1, false);


--
-- Name: cm_oauth2_servers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_oauth2_servers_id_seq', 1, false);


--
-- Name: cm_orcid_sources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_orcid_sources_id_seq', 1, false);


--
-- Name: cm_org_identities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_org_identities_id_seq', 11, true);


--
-- Name: cm_org_identity_source_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_org_identity_source_records_id_seq', 1, false);


--
-- Name: cm_org_identity_sources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_org_identity_sources_id_seq', 1, false);


--
-- Name: cm_organizations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_organizations_id_seq', 1, false);


--
-- Name: cm_servers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_servers_id_seq', 1, true);


--
-- Name: cm_sql_servers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_sql_servers_id_seq', 1, true);


--
-- Name: cm_ssh_key_authenticators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_ssh_key_authenticators_id_seq', 1, false);


--
-- Name: cm_ssh_keys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_ssh_keys_id_seq', 1, false);


--
-- Name: cm_telephone_numbers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_telephone_numbers_id_seq', 1, false);


--
-- Name: cm_urls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: registry_user
--

SELECT pg_catalog.setval('public.cm_urls_id_seq', 1, false);


--
-- Name: cm_ad_hoc_attributes cm_ad_hoc_attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_ad_hoc_attributes
    ADD CONSTRAINT cm_ad_hoc_attributes_pkey PRIMARY KEY (id);


--
-- Name: cm_addresses cm_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_addresses
    ADD CONSTRAINT cm_addresses_pkey PRIMARY KEY (id);


--
-- Name: cm_api_users cm_api_users_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_api_users
    ADD CONSTRAINT cm_api_users_pkey PRIMARY KEY (id);


--
-- Name: cm_application_preferences cm_application_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_application_preferences
    ADD CONSTRAINT cm_application_preferences_pkey PRIMARY KEY (id);


--
-- Name: cm_attribute_enumerations cm_attribute_enumerations_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_attribute_enumerations
    ADD CONSTRAINT cm_attribute_enumerations_pkey PRIMARY KEY (id);


--
-- Name: cm_authentication_events cm_authentication_events_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_authentication_events
    ADD CONSTRAINT cm_authentication_events_pkey PRIMARY KEY (id);


--
-- Name: cm_authenticator_statuses cm_authenticator_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_authenticator_statuses
    ADD CONSTRAINT cm_authenticator_statuses_pkey PRIMARY KEY (id);


--
-- Name: cm_authenticators cm_authenticators_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_authenticators
    ADD CONSTRAINT cm_authenticators_pkey PRIMARY KEY (id);


--
-- Name: cm_clusters cm_clusters_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_clusters
    ADD CONSTRAINT cm_clusters_pkey PRIMARY KEY (id);


--
-- Name: cm_cmp_enrollment_attributes cm_cmp_enrollment_attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_cmp_enrollment_attributes
    ADD CONSTRAINT cm_cmp_enrollment_attributes_pkey PRIMARY KEY (id);


--
-- Name: cm_cmp_enrollment_configurations cm_cmp_enrollment_configurations_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_cmp_enrollment_configurations
    ADD CONSTRAINT cm_cmp_enrollment_configurations_pkey PRIMARY KEY (id);


--
-- Name: cm_co_dashboard_widgets cm_co_dashboard_widgets_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_dashboard_widgets
    ADD CONSTRAINT cm_co_dashboard_widgets_pkey PRIMARY KEY (id);


--
-- Name: cm_co_dashboards cm_co_dashboards_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_dashboards
    ADD CONSTRAINT cm_co_dashboards_pkey PRIMARY KEY (id);


--
-- Name: cm_co_departments cm_co_departments_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_departments
    ADD CONSTRAINT cm_co_departments_pkey PRIMARY KEY (id);


--
-- Name: cm_co_email_lists cm_co_email_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_email_lists
    ADD CONSTRAINT cm_co_email_lists_pkey PRIMARY KEY (id);


--
-- Name: cm_co_enrollment_attribute_defaults cm_co_enrollment_attribute_defaults_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_attribute_defaults
    ADD CONSTRAINT cm_co_enrollment_attribute_defaults_pkey PRIMARY KEY (id);


--
-- Name: cm_co_enrollment_attributes cm_co_enrollment_attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_attributes
    ADD CONSTRAINT cm_co_enrollment_attributes_pkey PRIMARY KEY (id);


--
-- Name: cm_co_enrollment_authenticators cm_co_enrollment_authenticators_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_authenticators
    ADD CONSTRAINT cm_co_enrollment_authenticators_pkey PRIMARY KEY (id);


--
-- Name: cm_co_enrollment_clusters cm_co_enrollment_clusters_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_clusters
    ADD CONSTRAINT cm_co_enrollment_clusters_pkey PRIMARY KEY (id);


--
-- Name: cm_co_enrollment_flow_wedges cm_co_enrollment_flow_wedges_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_flow_wedges
    ADD CONSTRAINT cm_co_enrollment_flow_wedges_pkey PRIMARY KEY (id);


--
-- Name: cm_co_enrollment_flows cm_co_enrollment_flows_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_flows
    ADD CONSTRAINT cm_co_enrollment_flows_pkey PRIMARY KEY (id);


--
-- Name: cm_co_enrollment_sources cm_co_enrollment_sources_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_sources
    ADD CONSTRAINT cm_co_enrollment_sources_pkey PRIMARY KEY (id);


--
-- Name: cm_co_expiration_counts cm_co_expiration_counts_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_expiration_counts
    ADD CONSTRAINT cm_co_expiration_counts_pkey PRIMARY KEY (id);


--
-- Name: cm_co_expiration_policies cm_co_expiration_policies_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_expiration_policies
    ADD CONSTRAINT cm_co_expiration_policies_pkey PRIMARY KEY (id);


--
-- Name: cm_co_extended_attributes cm_co_extended_attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_extended_attributes
    ADD CONSTRAINT cm_co_extended_attributes_pkey PRIMARY KEY (id);


--
-- Name: cm_co_extended_types cm_co_extended_types_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_extended_types
    ADD CONSTRAINT cm_co_extended_types_pkey PRIMARY KEY (id);


--
-- Name: cm_co_group_members cm_co_group_members_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_group_members
    ADD CONSTRAINT cm_co_group_members_pkey PRIMARY KEY (id);


--
-- Name: cm_co_group_nestings cm_co_group_nestings_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_group_nestings
    ADD CONSTRAINT cm_co_group_nestings_pkey PRIMARY KEY (id);


--
-- Name: cm_co_group_ois_mappings cm_co_group_ois_mappings_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_group_ois_mappings
    ADD CONSTRAINT cm_co_group_ois_mappings_pkey PRIMARY KEY (id);


--
-- Name: cm_co_grouper_provisioner_groups cm_co_grouper_provisioner_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_grouper_provisioner_groups
    ADD CONSTRAINT cm_co_grouper_provisioner_groups_pkey PRIMARY KEY (id);


--
-- Name: cm_co_grouper_provisioner_targets cm_co_grouper_provisioner_targets_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_grouper_provisioner_targets
    ADD CONSTRAINT cm_co_grouper_provisioner_targets_pkey PRIMARY KEY (id);


--
-- Name: cm_co_groups cm_co_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_groups
    ADD CONSTRAINT cm_co_groups_pkey PRIMARY KEY (id);


--
-- Name: cm_co_identifier_assignments cm_co_identifier_assignments_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_identifier_assignments
    ADD CONSTRAINT cm_co_identifier_assignments_pkey PRIMARY KEY (id);


--
-- Name: cm_co_identifier_validators cm_co_identifier_validators_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_identifier_validators
    ADD CONSTRAINT cm_co_identifier_validators_pkey PRIMARY KEY (id);


--
-- Name: cm_co_invites cm_co_invites_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_invites
    ADD CONSTRAINT cm_co_invites_pkey PRIMARY KEY (id);


--
-- Name: cm_co_job_history_records cm_co_job_history_records_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_job_history_records
    ADD CONSTRAINT cm_co_job_history_records_pkey PRIMARY KEY (id);


--
-- Name: cm_co_jobs cm_co_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_jobs
    ADD CONSTRAINT cm_co_jobs_pkey PRIMARY KEY (id);


--
-- Name: cm_co_ldap_provisioner_attr_groupings cm_co_ldap_provisioner_attr_groupings_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_ldap_provisioner_attr_groupings
    ADD CONSTRAINT cm_co_ldap_provisioner_attr_groupings_pkey PRIMARY KEY (id);


--
-- Name: cm_co_ldap_provisioner_attributes cm_co_ldap_provisioner_attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_ldap_provisioner_attributes
    ADD CONSTRAINT cm_co_ldap_provisioner_attributes_pkey PRIMARY KEY (id);


--
-- Name: cm_co_ldap_provisioner_dns cm_co_ldap_provisioner_dns_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_ldap_provisioner_dns
    ADD CONSTRAINT cm_co_ldap_provisioner_dns_pkey PRIMARY KEY (id);


--
-- Name: cm_co_ldap_provisioner_targets cm_co_ldap_provisioner_targets_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_ldap_provisioner_targets
    ADD CONSTRAINT cm_co_ldap_provisioner_targets_pkey PRIMARY KEY (id);


--
-- Name: cm_co_localizations cm_co_localizations_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_localizations
    ADD CONSTRAINT cm_co_localizations_pkey PRIMARY KEY (id);


--
-- Name: cm_co_message_templates cm_co_message_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_message_templates
    ADD CONSTRAINT cm_co_message_templates_pkey PRIMARY KEY (id);


--
-- Name: cm_co_navigation_links cm_co_navigation_links_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_navigation_links
    ADD CONSTRAINT cm_co_navigation_links_pkey PRIMARY KEY (id);


--
-- Name: cm_co_notifications cm_co_notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_notifications
    ADD CONSTRAINT cm_co_notifications_pkey PRIMARY KEY (id);


--
-- Name: cm_co_nsf_demographics cm_co_nsf_demographics_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_nsf_demographics
    ADD CONSTRAINT cm_co_nsf_demographics_pkey PRIMARY KEY (id);


--
-- Name: cm_co_org_identity_links cm_co_org_identity_links_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_org_identity_links
    ADD CONSTRAINT cm_co_org_identity_links_pkey PRIMARY KEY (id);


--
-- Name: cm_co_people cm_co_people_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_people
    ADD CONSTRAINT cm_co_people_pkey PRIMARY KEY (id);


--
-- Name: cm_co_person_roles cm_co_person_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_person_roles
    ADD CONSTRAINT cm_co_person_roles_pkey PRIMARY KEY (id);


--
-- Name: cm_co_petition_attributes cm_co_petition_attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_petition_attributes
    ADD CONSTRAINT cm_co_petition_attributes_pkey PRIMARY KEY (id);


--
-- Name: cm_co_petition_history_records cm_co_petition_history_records_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_petition_history_records
    ADD CONSTRAINT cm_co_petition_history_records_pkey PRIMARY KEY (id);


--
-- Name: cm_co_petitions cm_co_petitions_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_petitions
    ADD CONSTRAINT cm_co_petitions_pkey PRIMARY KEY (id);


--
-- Name: cm_co_pipelines cm_co_pipelines_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_pipelines
    ADD CONSTRAINT cm_co_pipelines_pkey PRIMARY KEY (id);


--
-- Name: cm_co_provisioning_exports cm_co_provisioning_exports_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_provisioning_exports
    ADD CONSTRAINT cm_co_provisioning_exports_pkey PRIMARY KEY (id);


--
-- Name: cm_co_provisioning_target_filters cm_co_provisioning_target_filters_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_provisioning_target_filters
    ADD CONSTRAINT cm_co_provisioning_target_filters_pkey PRIMARY KEY (id);


--
-- Name: cm_co_provisioning_targets cm_co_provisioning_targets_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_provisioning_targets
    ADD CONSTRAINT cm_co_provisioning_targets_pkey PRIMARY KEY (id);


--
-- Name: cm_co_self_service_permissions cm_co_self_service_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_self_service_permissions
    ADD CONSTRAINT cm_co_self_service_permissions_pkey PRIMARY KEY (id);


--
-- Name: cm_co_sequential_identifier_assignments cm_co_sequential_identifier_assignments_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_sequential_identifier_assignments
    ADD CONSTRAINT cm_co_sequential_identifier_assignments_pkey PRIMARY KEY (id);


--
-- Name: cm_co_services cm_co_services_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_services
    ADD CONSTRAINT cm_co_services_pkey PRIMARY KEY (id);


--
-- Name: cm_co_settings cm_co_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_settings
    ADD CONSTRAINT cm_co_settings_pkey PRIMARY KEY (id);


--
-- Name: cm_co_sql_provisioner_targets cm_co_sql_provisioner_targets_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_sql_provisioner_targets
    ADD CONSTRAINT cm_co_sql_provisioner_targets_pkey PRIMARY KEY (id);


--
-- Name: cm_co_t_and_c_agreements cm_co_t_and_c_agreements_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_t_and_c_agreements
    ADD CONSTRAINT cm_co_t_and_c_agreements_pkey PRIMARY KEY (id);


--
-- Name: cm_co_terms_and_conditions cm_co_terms_and_conditions_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_terms_and_conditions
    ADD CONSTRAINT cm_co_terms_and_conditions_pkey PRIMARY KEY (id);


--
-- Name: cm_co_themes cm_co_themes_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_themes
    ADD CONSTRAINT cm_co_themes_pkey PRIMARY KEY (id);


--
-- Name: cm_core_apis cm_core_apis_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_core_apis
    ADD CONSTRAINT cm_core_apis_pkey PRIMARY KEY (id);


--
-- Name: cm_cos cm_cos_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_cos
    ADD CONSTRAINT cm_cos_pkey PRIMARY KEY (id);


--
-- Name: cm_cous cm_cous_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_cous
    ADD CONSTRAINT cm_cous_pkey PRIMARY KEY (id);


--
-- Name: cm_data_filters cm_data_filters_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_data_filters
    ADD CONSTRAINT cm_data_filters_pkey PRIMARY KEY (id);


--
-- Name: cm_dictionaries cm_dictionaries_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_dictionaries
    ADD CONSTRAINT cm_dictionaries_pkey PRIMARY KEY (id);


--
-- Name: cm_dictionary_entries cm_dictionary_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_dictionary_entries
    ADD CONSTRAINT cm_dictionary_entries_pkey PRIMARY KEY (id);


--
-- Name: cm_email_addresses cm_email_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_email_addresses
    ADD CONSTRAINT cm_email_addresses_pkey PRIMARY KEY (id);


--
-- Name: cm_env_sources cm_env_sources_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_env_sources
    ADD CONSTRAINT cm_env_sources_pkey PRIMARY KEY (id);


--
-- Name: cm_history_records cm_history_records_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_history_records
    ADD CONSTRAINT cm_history_records_pkey PRIMARY KEY (id);


--
-- Name: cm_http_servers cm_http_servers_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_http_servers
    ADD CONSTRAINT cm_http_servers_pkey PRIMARY KEY (id);


--
-- Name: cm_identifiers cm_identifiers_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_identifiers
    ADD CONSTRAINT cm_identifiers_pkey PRIMARY KEY (id);


--
-- Name: cm_identity_documents cm_identity_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_identity_documents
    ADD CONSTRAINT cm_identity_documents_pkey PRIMARY KEY (id);


--
-- Name: cm_kafka_servers cm_kafka_servers_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_kafka_servers
    ADD CONSTRAINT cm_kafka_servers_pkey PRIMARY KEY (id);


--
-- Name: cm_ldap_servers cm_ldap_servers_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_ldap_servers
    ADD CONSTRAINT cm_ldap_servers_pkey PRIMARY KEY (id);


--
-- Name: cm_locks cm_locks_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_locks
    ADD CONSTRAINT cm_locks_pkey PRIMARY KEY (id);


--
-- Name: cm_match_server_attributes cm_match_server_attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_match_server_attributes
    ADD CONSTRAINT cm_match_server_attributes_pkey PRIMARY KEY (id);


--
-- Name: cm_match_servers cm_match_servers_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_match_servers
    ADD CONSTRAINT cm_match_servers_pkey PRIMARY KEY (id);


--
-- Name: cm_names cm_names_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_names
    ADD CONSTRAINT cm_names_pkey PRIMARY KEY (id);


--
-- Name: cm_navigation_links cm_navigation_links_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_navigation_links
    ADD CONSTRAINT cm_navigation_links_pkey PRIMARY KEY (id);


--
-- Name: cm_oauth2_servers cm_oauth2_servers_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_oauth2_servers
    ADD CONSTRAINT cm_oauth2_servers_pkey PRIMARY KEY (id);


--
-- Name: cm_orcid_sources cm_orcid_sources_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_orcid_sources
    ADD CONSTRAINT cm_orcid_sources_pkey PRIMARY KEY (id);


--
-- Name: cm_org_identities cm_org_identities_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_org_identities
    ADD CONSTRAINT cm_org_identities_pkey PRIMARY KEY (id);


--
-- Name: cm_org_identity_source_records cm_org_identity_source_records_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_org_identity_source_records
    ADD CONSTRAINT cm_org_identity_source_records_pkey PRIMARY KEY (id);


--
-- Name: cm_org_identity_sources cm_org_identity_sources_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_org_identity_sources
    ADD CONSTRAINT cm_org_identity_sources_pkey PRIMARY KEY (id);


--
-- Name: cm_organizations cm_organizations_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_organizations
    ADD CONSTRAINT cm_organizations_pkey PRIMARY KEY (id);


--
-- Name: cm_servers cm_servers_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_servers
    ADD CONSTRAINT cm_servers_pkey PRIMARY KEY (id);


--
-- Name: cm_sql_servers cm_sql_servers_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_sql_servers
    ADD CONSTRAINT cm_sql_servers_pkey PRIMARY KEY (id);


--
-- Name: cm_ssh_key_authenticators cm_ssh_key_authenticators_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_ssh_key_authenticators
    ADD CONSTRAINT cm_ssh_key_authenticators_pkey PRIMARY KEY (id);


--
-- Name: cm_ssh_keys cm_ssh_keys_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_ssh_keys
    ADD CONSTRAINT cm_ssh_keys_pkey PRIMARY KEY (id);


--
-- Name: cm_telephone_numbers cm_telephone_numbers_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_telephone_numbers
    ADD CONSTRAINT cm_telephone_numbers_pkey PRIMARY KEY (id);


--
-- Name: cm_urls cm_urls_pkey; Type: CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_urls
    ADD CONSTRAINT cm_urls_pkey PRIMARY KEY (id);


--
-- Name: cm_ad_hoc_attributes_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_ad_hoc_attributes_i1 ON public.cm_ad_hoc_attributes USING btree (co_person_role_id);


--
-- Name: cm_ad_hoc_attributes_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_ad_hoc_attributes_i2 ON public.cm_ad_hoc_attributes USING btree (org_identity_id);


--
-- Name: cm_ad_hoc_attributes_i3; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_ad_hoc_attributes_i3 ON public.cm_ad_hoc_attributes USING btree (tag);


--
-- Name: cm_ad_hoc_attributes_i4; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_ad_hoc_attributes_i4 ON public.cm_ad_hoc_attributes USING btree (ad_hoc_attribute_id);


--
-- Name: cm_ad_hoc_attributes_i5; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_ad_hoc_attributes_i5 ON public.cm_ad_hoc_attributes USING btree (organization_id);


--
-- Name: cm_addresses_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_addresses_i1 ON public.cm_addresses USING btree (co_person_role_id);


--
-- Name: cm_addresses_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_addresses_i2 ON public.cm_addresses USING btree (org_identity_id);


--
-- Name: cm_addresses_i3; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_addresses_i3 ON public.cm_addresses USING btree (address_id);


--
-- Name: cm_addresses_i4; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_addresses_i4 ON public.cm_addresses USING btree (source_address_id);


--
-- Name: cm_addresses_i5; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_addresses_i5 ON public.cm_addresses USING btree (co_department_id);


--
-- Name: cm_addresses_i6; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_addresses_i6 ON public.cm_addresses USING btree (organization_id);


--
-- Name: cm_api_users_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE UNIQUE INDEX cm_api_users_i1 ON public.cm_api_users USING btree (username);


--
-- Name: cm_application_preferences_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_application_preferences_i1 ON public.cm_application_preferences USING btree (co_person_id);


--
-- Name: cm_attribute_enumerations_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_attribute_enumerations_i1 ON public.cm_attribute_enumerations USING btree (co_id, attribute, status);


--
-- Name: cm_attribute_enumerations_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_attribute_enumerations_i2 ON public.cm_attribute_enumerations USING btree (attribute_enumeration_id);


--
-- Name: cm_authentication_events_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_authentication_events_i1 ON public.cm_authentication_events USING btree (authenticated_identifier);


--
-- Name: cm_authenticator_statuses_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE UNIQUE INDEX cm_authenticator_statuses_i1 ON public.cm_authenticator_statuses USING btree (authenticator_id, co_person_id);


--
-- Name: cm_authenticators_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_authenticators_i1 ON public.cm_authenticators USING btree (co_id);


--
-- Name: cm_authenticators_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_authenticators_i2 ON public.cm_authenticators USING btree (co_id, plugin);


--
-- Name: cm_clusters_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_clusters_i1 ON public.cm_clusters USING btree (co_id);


--
-- Name: cm_clusters_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_clusters_i2 ON public.cm_clusters USING btree (cluster_id);


--
-- Name: cm_cmp_enrollment_attributes_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_cmp_enrollment_attributes_i1 ON public.cm_cmp_enrollment_attributes USING btree (cmp_enrollment_configuration_id);


--
-- Name: cm_cmp_enrollment_attributes_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE UNIQUE INDEX cm_cmp_enrollment_attributes_i2 ON public.cm_cmp_enrollment_attributes USING btree (cmp_enrollment_configuration_id, attribute, type);


--
-- Name: cm_co_dashboard_widgets_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_dashboard_widgets_i2 ON public.cm_co_dashboard_widgets USING btree (co_dashboard_widget_id);


--
-- Name: cm_co_dashboards_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_dashboards_i1 ON public.cm_co_dashboards USING btree (co_id);


--
-- Name: cm_co_dashboards_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_dashboards_i2 ON public.cm_co_dashboards USING btree (co_dashboard_id);


--
-- Name: cm_co_departments_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_departments_i1 ON public.cm_co_departments USING btree (co_id);


--
-- Name: cm_co_departments_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_departments_i2 ON public.cm_co_departments USING btree (cou_id);


--
-- Name: cm_co_email_lists_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_email_lists_i1 ON public.cm_co_email_lists USING btree (co_id);


--
-- Name: cm_co_email_lists_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_email_lists_i2 ON public.cm_co_email_lists USING btree (co_email_list_id);


--
-- Name: cm_co_enrollment_attribute_defaults_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_enrollment_attribute_defaults_i1 ON public.cm_co_enrollment_attribute_defaults USING btree (co_enrollment_attribute_id);


--
-- Name: cm_co_enrollment_attribute_defaults_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_enrollment_attribute_defaults_i2 ON public.cm_co_enrollment_attribute_defaults USING btree (co_enrollment_attribute_default_id);


--
-- Name: cm_co_enrollment_attributes_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_enrollment_attributes_i1 ON public.cm_co_enrollment_attributes USING btree (co_enrollment_flow_id);


--
-- Name: cm_co_enrollment_attributes_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_enrollment_attributes_i2 ON public.cm_co_enrollment_attributes USING btree (co_enrollment_attribute_id);


--
-- Name: cm_co_enrollment_authenticators_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_enrollment_authenticators_i1 ON public.cm_co_enrollment_authenticators USING btree (co_enrollment_flow_id);


--
-- Name: cm_co_enrollment_authenticators_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_enrollment_authenticators_i2 ON public.cm_co_enrollment_authenticators USING btree (co_enrollment_authenticator_id);


--
-- Name: cm_co_enrollment_clusters_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_enrollment_clusters_i1 ON public.cm_co_enrollment_clusters USING btree (co_enrollment_flow_id);


--
-- Name: cm_co_enrollment_clusters_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_enrollment_clusters_i2 ON public.cm_co_enrollment_clusters USING btree (cluster_id);


--
-- Name: cm_co_enrollment_flow_wedges_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_enrollment_flow_wedges_i1 ON public.cm_co_enrollment_flow_wedges USING btree (co_enrollment_flow_id);


--
-- Name: cm_co_enrollment_flow_wedges_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_enrollment_flow_wedges_i2 ON public.cm_co_enrollment_flow_wedges USING btree (co_enrollment_flow_wedge_id);


--
-- Name: cm_co_enrollment_flows_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_enrollment_flows_i1 ON public.cm_co_enrollment_flows USING btree (co_id);


--
-- Name: cm_co_enrollment_flows_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_enrollment_flows_i2 ON public.cm_co_enrollment_flows USING btree (co_id, name);


--
-- Name: cm_co_enrollment_flows_i3; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_enrollment_flows_i3 ON public.cm_co_enrollment_flows USING btree (status);


--
-- Name: cm_co_enrollment_flows_i4; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_enrollment_flows_i4 ON public.cm_co_enrollment_flows USING btree (co_enrollment_flow_id);


--
-- Name: cm_co_enrollment_sources_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_enrollment_sources_i1 ON public.cm_co_enrollment_sources USING btree (co_enrollment_flow_id);


--
-- Name: cm_co_enrollment_sources_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_enrollment_sources_i2 ON public.cm_co_enrollment_sources USING btree (co_enrollment_source_id);


--
-- Name: cm_co_expiration_counts_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_expiration_counts_i1 ON public.cm_co_expiration_counts USING btree (co_expiration_policy_id, co_person_role_id);


--
-- Name: cm_co_expiration_counts_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_expiration_counts_i2 ON public.cm_co_expiration_counts USING btree (co_expiration_count_id);


--
-- Name: cm_co_expiration_policies_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_expiration_policies_i1 ON public.cm_co_expiration_policies USING btree (co_id);


--
-- Name: cm_co_expiration_policies_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_expiration_policies_i2 ON public.cm_co_expiration_policies USING btree (co_expiration_policy_id);


--
-- Name: cm_co_extended_attributes_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE UNIQUE INDEX cm_co_extended_attributes_i1 ON public.cm_co_extended_attributes USING btree (co_id, name);


--
-- Name: cm_co_extended_attributes_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_extended_attributes_i2 ON public.cm_co_extended_attributes USING btree (co_id, type);


--
-- Name: cm_co_extended_types_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_extended_types_i1 ON public.cm_co_extended_types USING btree (co_id, attribute);


--
-- Name: cm_co_extended_types_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_extended_types_i2 ON public.cm_co_extended_types USING btree (co_id, attribute, name);


--
-- Name: cm_co_group_members_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_group_members_i1 ON public.cm_co_group_members USING btree (co_group_id);


--
-- Name: cm_co_group_members_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_group_members_i2 ON public.cm_co_group_members USING btree (co_person_id);


--
-- Name: cm_co_group_members_i3; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_group_members_i3 ON public.cm_co_group_members USING btree (co_group_id, co_person_id);


--
-- Name: cm_co_group_members_i4; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_group_members_i4 ON public.cm_co_group_members USING btree (co_group_member_id);


--
-- Name: cm_co_group_members_i5; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_group_members_i5 ON public.cm_co_group_members USING btree (source_org_identity_id);


--
-- Name: cm_co_group_nestings_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_group_nestings_i1 ON public.cm_co_group_nestings USING btree (co_group_id);


--
-- Name: cm_co_group_nestings_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_group_nestings_i2 ON public.cm_co_group_nestings USING btree (target_co_group_id);


--
-- Name: cm_co_group_ois_mappings_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_group_ois_mappings_i1 ON public.cm_co_group_ois_mappings USING btree (co_group_ois_mapping_id);


--
-- Name: cm_co_group_ois_mappings_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_group_ois_mappings_i2 ON public.cm_co_group_ois_mappings USING btree (org_identity_source_id);


--
-- Name: cm_co_grouper_provisioner_groups_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE UNIQUE INDEX cm_co_grouper_provisioner_groups_i1 ON public.cm_co_grouper_provisioner_groups USING btree (co_grouper_provisioner_target_id, co_group_id);


--
-- Name: cm_co_grouper_provisioner_targets_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE UNIQUE INDEX cm_co_grouper_provisioner_targets_i1 ON public.cm_co_grouper_provisioner_targets USING btree (co_provisioning_target_id);


--
-- Name: cm_co_groups_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_groups_i1 ON public.cm_co_groups USING btree (co_id);


--
-- Name: cm_co_groups_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_groups_i2 ON public.cm_co_groups USING btree (name);


--
-- Name: cm_co_groups_i3; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_groups_i3 ON public.cm_co_groups USING btree (co_id, name);


--
-- Name: cm_co_groups_i4; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_groups_i4 ON public.cm_co_groups USING btree (co_group_id);


--
-- Name: cm_co_groups_i5; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_groups_i5 ON public.cm_co_groups USING btree (co_id, group_type);


--
-- Name: cm_co_groups_i6; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_groups_i6 ON public.cm_co_groups USING btree (cou_id, group_type);


--
-- Name: cm_co_identifier_assignments_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_identifier_assignments_i1 ON public.cm_co_identifier_assignments USING btree (co_id);


--
-- Name: cm_co_identifier_validators_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_identifier_validators_i1 ON public.cm_co_identifier_validators USING btree (co_id);


--
-- Name: cm_co_identifier_validators_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_identifier_validators_i2 ON public.cm_co_identifier_validators USING btree (co_identifier_validator_id);


--
-- Name: cm_co_invites_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_invites_i1 ON public.cm_co_invites USING btree (co_person_id);


--
-- Name: cm_co_invites_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_invites_i2 ON public.cm_co_invites USING btree (invitation);


--
-- Name: cm_co_invites_i3; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_invites_i3 ON public.cm_co_invites USING btree (co_person_id, mail);


--
-- Name: cm_co_invites_i4; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_invites_i4 ON public.cm_co_invites USING btree (co_invite_id);


--
-- Name: cm_co_job_history_records_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_job_history_records_i1 ON public.cm_co_job_history_records USING btree (co_job_id);


--
-- Name: cm_co_job_history_records_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_job_history_records_i2 ON public.cm_co_job_history_records USING btree (co_person_id);


--
-- Name: cm_co_job_history_records_i3; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_job_history_records_i3 ON public.cm_co_job_history_records USING btree (org_identity_id);


--
-- Name: cm_co_job_history_records_i4; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_job_history_records_i4 ON public.cm_co_job_history_records USING btree (co_job_id, record_key);


--
-- Name: cm_co_jobs_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_jobs_i1 ON public.cm_co_jobs USING btree (co_id);


--
-- Name: cm_co_jobs_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_jobs_i2 ON public.cm_co_jobs USING btree (job_type, job_type_fk);


--
-- Name: cm_co_jobs_i3; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_jobs_i3 ON public.cm_co_jobs USING btree (co_id, job_type, job_type_fk, status);


--
-- Name: cm_co_ldap_provisioner_attr_groupings_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_ldap_provisioner_attr_groupings_i1 ON public.cm_co_ldap_provisioner_attr_groupings USING btree (co_ldap_provisioner_target_id);


--
-- Name: cm_co_ldap_provisioner_attr_groupings_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE UNIQUE INDEX cm_co_ldap_provisioner_attr_groupings_i2 ON public.cm_co_ldap_provisioner_attr_groupings USING btree (co_ldap_provisioner_target_id, "grouping");


--
-- Name: cm_co_ldap_provisioner_attributes_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_ldap_provisioner_attributes_i1 ON public.cm_co_ldap_provisioner_attributes USING btree (co_ldap_provisioner_target_id);


--
-- Name: cm_co_ldap_provisioner_attributes_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE UNIQUE INDEX cm_co_ldap_provisioner_attributes_i2 ON public.cm_co_ldap_provisioner_attributes USING btree (co_ldap_provisioner_target_id, attribute, objectclass);


--
-- Name: cm_co_ldap_provisioner_dns_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE UNIQUE INDEX cm_co_ldap_provisioner_dns_i1 ON public.cm_co_ldap_provisioner_dns USING btree (co_ldap_provisioner_target_id, co_person_id);


--
-- Name: cm_co_ldap_provisioner_dns_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE UNIQUE INDEX cm_co_ldap_provisioner_dns_i2 ON public.cm_co_ldap_provisioner_dns USING btree (co_ldap_provisioner_target_id, co_group_id);


--
-- Name: cm_co_ldap_provisioner_targets_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE UNIQUE INDEX cm_co_ldap_provisioner_targets_i1 ON public.cm_co_ldap_provisioner_targets USING btree (co_provisioning_target_id);


--
-- Name: cm_co_localizations_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_localizations_i1 ON public.cm_co_localizations USING btree (co_id);


--
-- Name: cm_co_localizations_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_localizations_i2 ON public.cm_co_localizations USING btree (co_id, language);


--
-- Name: cm_co_localizations_i3; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE UNIQUE INDEX cm_co_localizations_i3 ON public.cm_co_localizations USING btree (co_id, lkey, language);


--
-- Name: cm_co_message_templates_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_message_templates_i1 ON public.cm_co_message_templates USING btree (co_id);


--
-- Name: cm_co_message_templates_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_message_templates_i2 ON public.cm_co_message_templates USING btree (co_message_template_id);


--
-- Name: cm_co_navigation_links_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_navigation_links_i1 ON public.cm_co_navigation_links USING btree (co_id);


--
-- Name: cm_co_notifications_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_notifications_i1 ON public.cm_co_notifications USING btree (subject_co_person_id);


--
-- Name: cm_co_notifications_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_notifications_i2 ON public.cm_co_notifications USING btree (recipient_co_person_id);


--
-- Name: cm_co_notifications_i3; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_notifications_i3 ON public.cm_co_notifications USING btree (recipient_co_group_id);


--
-- Name: cm_co_notifications_i4; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_notifications_i4 ON public.cm_co_notifications USING btree (source_url);


--
-- Name: cm_co_notifications_i5; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_notifications_i5 ON public.cm_co_notifications USING btree (source_controller, source_action, source_id, source_arg0, source_val0);


--
-- Name: cm_co_notifications_i6; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_notifications_i6 ON public.cm_co_notifications USING btree (subject_co_group_id);


--
-- Name: cm_co_nsf_demographics_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_nsf_demographics_i1 ON public.cm_co_nsf_demographics USING btree (co_person_id);


--
-- Name: cm_co_nsf_demographics_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_nsf_demographics_i2 ON public.cm_co_nsf_demographics USING btree (co_nsf_demographic_id);


--
-- Name: cm_co_org_identity_links_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_org_identity_links_i1 ON public.cm_co_org_identity_links USING btree (co_person_id);


--
-- Name: cm_co_org_identity_links_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_org_identity_links_i2 ON public.cm_co_org_identity_links USING btree (org_identity_id);


--
-- Name: cm_co_org_identity_links_i3; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_org_identity_links_i3 ON public.cm_co_org_identity_links USING btree (co_person_id, org_identity_id);


--
-- Name: cm_co_org_identity_links_i4; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_org_identity_links_i4 ON public.cm_co_org_identity_links USING btree (co_org_identity_link_id);


--
-- Name: cm_co_people_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_people_i1 ON public.cm_co_people USING btree (co_id);


--
-- Name: cm_co_people_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_people_i2 ON public.cm_co_people USING btree (co_person_id);


--
-- Name: cm_co_person_roles_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_person_roles_i1 ON public.cm_co_person_roles USING btree (co_person_id);


--
-- Name: cm_co_person_roles_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_person_roles_i2 ON public.cm_co_person_roles USING btree (sponsor_co_person_id);


--
-- Name: cm_co_person_roles_i3; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_person_roles_i3 ON public.cm_co_person_roles USING btree (cou_id);


--
-- Name: cm_co_person_roles_i4; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_person_roles_i4 ON public.cm_co_person_roles USING btree (co_person_role_id);


--
-- Name: cm_co_person_roles_i5; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_person_roles_i5 ON public.cm_co_person_roles USING btree (source_org_identity_id);


--
-- Name: cm_co_petition_attributes_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_petition_attributes_i1 ON public.cm_co_petition_attributes USING btree (co_petition_id);


--
-- Name: cm_co_petition_attributes_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_petition_attributes_i2 ON public.cm_co_petition_attributes USING btree (co_enrollment_attribute_id);


--
-- Name: cm_co_petition_attributes_i3; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_petition_attributes_i3 ON public.cm_co_petition_attributes USING btree (co_petition_attribute_id);


--
-- Name: cm_co_petition_history_records_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_petition_history_records_i1 ON public.cm_co_petition_history_records USING btree (co_petition_id);


--
-- Name: cm_co_petition_history_records_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_petition_history_records_i2 ON public.cm_co_petition_history_records USING btree (co_petition_history_record_id);


--
-- Name: cm_co_petitions_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_petitions_i1 ON public.cm_co_petitions USING btree (co_id);


--
-- Name: cm_co_petitions_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_petitions_i2 ON public.cm_co_petitions USING btree (cou_id);


--
-- Name: cm_co_petitions_i3; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_petitions_i3 ON public.cm_co_petitions USING btree (enrollee_org_identity_id);


--
-- Name: cm_co_petitions_i4; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_petitions_i4 ON public.cm_co_petitions USING btree (petitioner_co_person_id);


--
-- Name: cm_co_petitions_i5; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_petitions_i5 ON public.cm_co_petitions USING btree (co_invite_id);


--
-- Name: cm_co_petitions_i6; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_petitions_i6 ON public.cm_co_petitions USING btree (co_petition_id);


--
-- Name: cm_co_petitions_i7; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_petitions_i7 ON public.cm_co_petitions USING btree (enrollee_co_person_id);


--
-- Name: cm_co_pipelines_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_pipelines_i1 ON public.cm_co_pipelines USING btree (co_id);


--
-- Name: cm_co_pipelines_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_pipelines_i2 ON public.cm_co_pipelines USING btree (co_pipeline_id);


--
-- Name: cm_co_provisioning_exports_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE UNIQUE INDEX cm_co_provisioning_exports_i1 ON public.cm_co_provisioning_exports USING btree (co_provisioning_target_id, co_person_id);


--
-- Name: cm_co_provisioning_exports_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE UNIQUE INDEX cm_co_provisioning_exports_i2 ON public.cm_co_provisioning_exports USING btree (co_provisioning_target_id, co_group_id);


--
-- Name: cm_co_provisioning_exports_i3; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE UNIQUE INDEX cm_co_provisioning_exports_i3 ON public.cm_co_provisioning_exports USING btree (co_provisioning_target_id, co_email_list_id);


--
-- Name: cm_co_provisioning_exports_i4; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE UNIQUE INDEX cm_co_provisioning_exports_i4 ON public.cm_co_provisioning_exports USING btree (co_provisioning_target_id, co_service_id);


--
-- Name: cm_co_provisioning_target_filters_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_provisioning_target_filters_i1 ON public.cm_co_provisioning_target_filters USING btree (co_provisioning_target_id);


--
-- Name: cm_co_provisioning_target_filters_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_provisioning_target_filters_i2 ON public.cm_co_provisioning_target_filters USING btree (data_filter_id);


--
-- Name: cm_co_provisioning_targets_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_provisioning_targets_i1 ON public.cm_co_provisioning_targets USING btree (co_id);


--
-- Name: cm_co_self_service_permissions_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_self_service_permissions_i1 ON public.cm_co_self_service_permissions USING btree (co_id);


--
-- Name: cm_co_sequential_identifier_assignments_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE UNIQUE INDEX cm_co_sequential_identifier_assignments_i1 ON public.cm_co_sequential_identifier_assignments USING btree (co_identifier_assignment_id, affix);


--
-- Name: cm_co_services_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_services_i1 ON public.cm_co_services USING btree (co_id);


--
-- Name: cm_co_services_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_services_i2 ON public.cm_co_services USING btree (co_service_id);


--
-- Name: cm_co_services_i3; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_services_i3 ON public.cm_co_services USING btree (co_group_id);


--
-- Name: cm_co_services_i4; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_services_i4 ON public.cm_co_services USING btree (co_id, identifier_type);


--
-- Name: cm_co_services_i5; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_services_i5 ON public.cm_co_services USING btree (co_id, short_label);


--
-- Name: cm_co_settings_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE UNIQUE INDEX cm_co_settings_i1 ON public.cm_co_settings USING btree (co_id);


--
-- Name: cm_co_sql_provisioner_targets_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE UNIQUE INDEX cm_co_sql_provisioner_targets_i1 ON public.cm_co_sql_provisioner_targets USING btree (co_provisioning_target_id);


--
-- Name: cm_co_t_and_c_agreements_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_t_and_c_agreements_i1 ON public.cm_co_t_and_c_agreements USING btree (co_terms_and_conditions_id);


--
-- Name: cm_co_t_and_c_agreements_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_t_and_c_agreements_i2 ON public.cm_co_t_and_c_agreements USING btree (co_person_id);


--
-- Name: cm_co_terms_and_conditions_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_terms_and_conditions_i1 ON public.cm_co_terms_and_conditions USING btree (co_id);


--
-- Name: cm_co_terms_and_conditions_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_terms_and_conditions_i2 ON public.cm_co_terms_and_conditions USING btree (co_terms_and_conditions_id);


--
-- Name: cm_co_themes_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_themes_i1 ON public.cm_co_themes USING btree (co_id);


--
-- Name: cm_co_themes_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_co_themes_i2 ON public.cm_co_themes USING btree (co_theme_id);


--
-- Name: cm_core_apis_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_core_apis_i1 ON public.cm_core_apis USING btree (co_id);


--
-- Name: cm_core_apis_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_core_apis_i2 ON public.cm_core_apis USING btree (api_user_id);


--
-- Name: cm_core_apis_i3; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_core_apis_i3 ON public.cm_core_apis USING btree (core_api_id);


--
-- Name: cm_cos_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE UNIQUE INDEX cm_cos_i1 ON public.cm_cos USING btree (name);


--
-- Name: cm_cous_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_cous_i1 ON public.cm_cous USING btree (co_id);


--
-- Name: cm_cous_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_cous_i2 ON public.cm_cous USING btree (name);


--
-- Name: cm_cous_i3; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_cous_i3 ON public.cm_cous USING btree (co_id, name);


--
-- Name: cm_cous_i4; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_cous_i4 ON public.cm_cous USING btree (cou_id);


--
-- Name: cm_data_filters_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_data_filters_i1 ON public.cm_data_filters USING btree (co_id);


--
-- Name: cm_dictionaries_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_dictionaries_i1 ON public.cm_dictionaries USING btree (co_id);


--
-- Name: cm_dictionaries_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_dictionaries_i2 ON public.cm_dictionaries USING btree (dictionary_id);


--
-- Name: cm_dictionary_entries_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_dictionary_entries_i1 ON public.cm_dictionary_entries USING btree (dictionary_id);


--
-- Name: cm_dictionary_entries_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_dictionary_entries_i2 ON public.cm_dictionary_entries USING btree (dictionary_entry_id);


--
-- Name: cm_email_addresses_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_email_addresses_i1 ON public.cm_email_addresses USING btree (co_person_id);


--
-- Name: cm_email_addresses_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_email_addresses_i2 ON public.cm_email_addresses USING btree (org_identity_id);


--
-- Name: cm_email_addresses_i3; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_email_addresses_i3 ON public.cm_email_addresses USING btree (mail);


--
-- Name: cm_email_addresses_i4; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_email_addresses_i4 ON public.cm_email_addresses USING btree (email_address_id);


--
-- Name: cm_email_addresses_i5; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_email_addresses_i5 ON public.cm_email_addresses USING btree (source_email_address_id);


--
-- Name: cm_email_addresses_i6; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_email_addresses_i6 ON public.cm_email_addresses USING btree (co_department_id);


--
-- Name: cm_env_sources_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE UNIQUE INDEX cm_env_sources_i1 ON public.cm_env_sources USING btree (org_identity_source_id);


--
-- Name: cm_history_records_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_history_records_i1 ON public.cm_history_records USING btree (co_person_id);


--
-- Name: cm_history_records_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_history_records_i2 ON public.cm_history_records USING btree (co_person_role_id);


--
-- Name: cm_history_records_i3; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_history_records_i3 ON public.cm_history_records USING btree (org_identity_id);


--
-- Name: cm_history_records_i4; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_history_records_i4 ON public.cm_history_records USING btree (co_group_id);


--
-- Name: cm_history_records_i5; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_history_records_i5 ON public.cm_history_records USING btree (history_record_id);


--
-- Name: cm_history_records_i6; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_history_records_i6 ON public.cm_history_records USING btree (co_email_list_id);


--
-- Name: cm_http_servers_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_http_servers_i1 ON public.cm_http_servers USING btree (server_id);


--
-- Name: cm_identifiers_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_identifiers_i1 ON public.cm_identifiers USING btree (identifier, type, co_person_id);


--
-- Name: cm_identifiers_i10; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_identifiers_i10 ON public.cm_identifiers USING btree (organization_id);


--
-- Name: cm_identifiers_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_identifiers_i2 ON public.cm_identifiers USING btree (identifier, type, org_identity_id);


--
-- Name: cm_identifiers_i3; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_identifiers_i3 ON public.cm_identifiers USING btree (identifier_id);


--
-- Name: cm_identifiers_i4; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_identifiers_i4 ON public.cm_identifiers USING btree (source_identifier_id);


--
-- Name: cm_identifiers_i5; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_identifiers_i5 ON public.cm_identifiers USING btree (co_person_id, co_provisioning_target_id);


--
-- Name: cm_identifiers_i6; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_identifiers_i6 ON public.cm_identifiers USING btree (co_department_id);


--
-- Name: cm_identifiers_i7; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_identifiers_i7 ON public.cm_identifiers USING btree (co_person_id);


--
-- Name: cm_identifiers_i8; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_identifiers_i8 ON public.cm_identifiers USING btree (org_identity_id);


--
-- Name: cm_identity_documents_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_identity_documents_i1 ON public.cm_identity_documents USING btree (co_person_id);


--
-- Name: cm_identity_documents_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_identity_documents_i2 ON public.cm_identity_documents USING btree (identity_document_id);


--
-- Name: cm_kafka_servers_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_kafka_servers_i1 ON public.cm_kafka_servers USING btree (server_id);


--
-- Name: cm_ldap_servers_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_ldap_servers_i1 ON public.cm_ldap_servers USING btree (server_id);


--
-- Name: cm_locks_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE UNIQUE INDEX cm_locks_i1 ON public.cm_locks USING btree (co_id, label);


--
-- Name: cm_match_server_attributes_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_match_server_attributes_i1 ON public.cm_match_server_attributes USING btree (match_server_id);


--
-- Name: cm_match_servers_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_match_servers_i1 ON public.cm_match_servers USING btree (server_id);


--
-- Name: cm_names_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_names_i1 ON public.cm_names USING btree (name_id);


--
-- Name: cm_names_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_names_i2 ON public.cm_names USING btree (co_person_id);


--
-- Name: cm_names_i3; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_names_i3 ON public.cm_names USING btree (org_identity_id);


--
-- Name: cm_oauth2_servers_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_oauth2_servers_i1 ON public.cm_oauth2_servers USING btree (server_id);


--
-- Name: cm_orcid_sources_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE UNIQUE INDEX cm_orcid_sources_i1 ON public.cm_orcid_sources USING btree (org_identity_source_id);


--
-- Name: cm_org_identities_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_org_identities_i1 ON public.cm_org_identities USING btree (co_id);


--
-- Name: cm_org_identities_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_org_identities_i2 ON public.cm_org_identities USING btree (org_identity_id);


--
-- Name: cm_org_identity_source_records_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_org_identity_source_records_i1 ON public.cm_org_identity_source_records USING btree (org_identity_source_id, sorid);


--
-- Name: cm_org_identity_source_records_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_org_identity_source_records_i2 ON public.cm_org_identity_source_records USING btree (org_identity_id);


--
-- Name: cm_org_identity_source_records_i3; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_org_identity_source_records_i3 ON public.cm_org_identity_source_records USING btree (org_identity_source_id);


--
-- Name: cm_org_identity_source_records_i4; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_org_identity_source_records_i4 ON public.cm_org_identity_source_records USING btree (org_identity_source_record_id);


--
-- Name: cm_org_identity_source_records_i5; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_org_identity_source_records_i5 ON public.cm_org_identity_source_records USING btree (co_petition_id);


--
-- Name: cm_org_identity_sources_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_org_identity_sources_i1 ON public.cm_org_identity_sources USING btree (co_id);


--
-- Name: cm_org_identity_sources_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_org_identity_sources_i2 ON public.cm_org_identity_sources USING btree (org_identity_source_id);


--
-- Name: cm_organizations_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_organizations_i1 ON public.cm_organizations USING btree (co_id);


--
-- Name: cm_servers_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_servers_i1 ON public.cm_servers USING btree (co_id);


--
-- Name: cm_servers_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_servers_i2 ON public.cm_servers USING btree (co_id, server_type);


--
-- Name: cm_sql_servers_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_sql_servers_i1 ON public.cm_sql_servers USING btree (server_id);


--
-- Name: cm_ssh_key_authenticators_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE UNIQUE INDEX cm_ssh_key_authenticators_i1 ON public.cm_ssh_key_authenticators USING btree (authenticator_id);


--
-- Name: cm_ssh_keys_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_ssh_keys_i1 ON public.cm_ssh_keys USING btree (co_person_id);


--
-- Name: cm_ssh_keys_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_ssh_keys_i2 ON public.cm_ssh_keys USING btree (ssh_key_id);


--
-- Name: cm_telephone_numbers_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_telephone_numbers_i1 ON public.cm_telephone_numbers USING btree (co_person_role_id);


--
-- Name: cm_telephone_numbers_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_telephone_numbers_i2 ON public.cm_telephone_numbers USING btree (org_identity_id);


--
-- Name: cm_telephone_numbers_i3; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_telephone_numbers_i3 ON public.cm_telephone_numbers USING btree (telephone_number_id);


--
-- Name: cm_telephone_numbers_i4; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_telephone_numbers_i4 ON public.cm_telephone_numbers USING btree (source_telephone_number_id);


--
-- Name: cm_telephone_numbers_i5; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_telephone_numbers_i5 ON public.cm_telephone_numbers USING btree (co_department_id);


--
-- Name: cm_telephone_numbers_i6; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_telephone_numbers_i6 ON public.cm_telephone_numbers USING btree (organization_id);


--
-- Name: cm_urls_i1; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_urls_i1 ON public.cm_urls USING btree (co_person_id);


--
-- Name: cm_urls_i2; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_urls_i2 ON public.cm_urls USING btree (org_identity_id);


--
-- Name: cm_urls_i3; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_urls_i3 ON public.cm_urls USING btree (co_department_id);


--
-- Name: cm_urls_i4; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_urls_i4 ON public.cm_urls USING btree (url_id);


--
-- Name: cm_urls_i5; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_urls_i5 ON public.cm_urls USING btree (source_url_id);


--
-- Name: cm_urls_i6; Type: INDEX; Schema: public; Owner: registry_user
--

CREATE INDEX cm_urls_i6 ON public.cm_urls USING btree (organization_id);


--
-- Name: cm_ad_hoc_attributes cm_ad_hoc_attributes_ad_hoc_attribute_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_ad_hoc_attributes
    ADD CONSTRAINT cm_ad_hoc_attributes_ad_hoc_attribute_id_fkey FOREIGN KEY (ad_hoc_attribute_id) REFERENCES public.cm_ad_hoc_attributes(id);


--
-- Name: cm_ad_hoc_attributes cm_ad_hoc_attributes_co_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_ad_hoc_attributes
    ADD CONSTRAINT cm_ad_hoc_attributes_co_department_id_fkey FOREIGN KEY (co_department_id) REFERENCES public.cm_co_departments(id);


--
-- Name: cm_ad_hoc_attributes cm_ad_hoc_attributes_co_person_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_ad_hoc_attributes
    ADD CONSTRAINT cm_ad_hoc_attributes_co_person_role_id_fkey FOREIGN KEY (co_person_role_id) REFERENCES public.cm_co_person_roles(id);


--
-- Name: cm_ad_hoc_attributes cm_ad_hoc_attributes_org_identity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_ad_hoc_attributes
    ADD CONSTRAINT cm_ad_hoc_attributes_org_identity_id_fkey FOREIGN KEY (org_identity_id) REFERENCES public.cm_org_identities(id);


--
-- Name: cm_ad_hoc_attributes cm_ad_hoc_attributes_organization_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_ad_hoc_attributes
    ADD CONSTRAINT cm_ad_hoc_attributes_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.cm_organizations(id);


--
-- Name: cm_ad_hoc_attributes cm_ad_hoc_attributes_source_ad_hoc_attribute_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_ad_hoc_attributes
    ADD CONSTRAINT cm_ad_hoc_attributes_source_ad_hoc_attribute_id_fkey FOREIGN KEY (source_ad_hoc_attribute_id) REFERENCES public.cm_ad_hoc_attributes(id);


--
-- Name: cm_addresses cm_addresses_address_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_addresses
    ADD CONSTRAINT cm_addresses_address_id_fkey FOREIGN KEY (address_id) REFERENCES public.cm_addresses(id);


--
-- Name: cm_addresses cm_addresses_co_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_addresses
    ADD CONSTRAINT cm_addresses_co_department_id_fkey FOREIGN KEY (co_department_id) REFERENCES public.cm_co_departments(id);


--
-- Name: cm_addresses cm_addresses_co_person_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_addresses
    ADD CONSTRAINT cm_addresses_co_person_role_id_fkey FOREIGN KEY (co_person_role_id) REFERENCES public.cm_co_person_roles(id);


--
-- Name: cm_addresses cm_addresses_org_identity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_addresses
    ADD CONSTRAINT cm_addresses_org_identity_id_fkey FOREIGN KEY (org_identity_id) REFERENCES public.cm_org_identities(id);


--
-- Name: cm_addresses cm_addresses_organization_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_addresses
    ADD CONSTRAINT cm_addresses_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.cm_organizations(id);


--
-- Name: cm_addresses cm_addresses_source_address_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_addresses
    ADD CONSTRAINT cm_addresses_source_address_id_fkey FOREIGN KEY (source_address_id) REFERENCES public.cm_addresses(id);


--
-- Name: cm_api_users cm_api_users_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_api_users
    ADD CONSTRAINT cm_api_users_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_application_preferences cm_application_preferences_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_application_preferences
    ADD CONSTRAINT cm_application_preferences_co_person_id_fkey FOREIGN KEY (co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_attribute_enumerations cm_attribute_enumerations_attribute_enumeration_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_attribute_enumerations
    ADD CONSTRAINT cm_attribute_enumerations_attribute_enumeration_id_fkey FOREIGN KEY (attribute_enumeration_id) REFERENCES public.cm_attribute_enumerations(id);


--
-- Name: cm_attribute_enumerations cm_attribute_enumerations_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_attribute_enumerations
    ADD CONSTRAINT cm_attribute_enumerations_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_attribute_enumerations cm_attribute_enumerations_dictionary_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_attribute_enumerations
    ADD CONSTRAINT cm_attribute_enumerations_dictionary_id_fkey FOREIGN KEY (dictionary_id) REFERENCES public.cm_dictionaries(id);


--
-- Name: cm_authenticator_statuses cm_authenticator_statuses_authenticator_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_authenticator_statuses
    ADD CONSTRAINT cm_authenticator_statuses_authenticator_id_fkey FOREIGN KEY (authenticator_id) REFERENCES public.cm_authenticators(id);


--
-- Name: cm_authenticator_statuses cm_authenticator_statuses_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_authenticator_statuses
    ADD CONSTRAINT cm_authenticator_statuses_co_person_id_fkey FOREIGN KEY (co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_authenticators cm_authenticators_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_authenticators
    ADD CONSTRAINT cm_authenticators_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_authenticators cm_authenticators_co_message_template_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_authenticators
    ADD CONSTRAINT cm_authenticators_co_message_template_id_fkey FOREIGN KEY (co_message_template_id) REFERENCES public.cm_co_message_templates(id);


--
-- Name: cm_clusters cm_clusters_cluster_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_clusters
    ADD CONSTRAINT cm_clusters_cluster_id_fkey FOREIGN KEY (cluster_id) REFERENCES public.cm_clusters(id);


--
-- Name: cm_clusters cm_clusters_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_clusters
    ADD CONSTRAINT cm_clusters_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_cmp_enrollment_attributes cm_cmp_enrollment_attributes_cmp_enrollment_configuration__fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_cmp_enrollment_attributes
    ADD CONSTRAINT cm_cmp_enrollment_attributes_cmp_enrollment_configuration__fkey FOREIGN KEY (cmp_enrollment_configuration_id) REFERENCES public.cm_cmp_enrollment_configurations(id);


--
-- Name: cm_co_dashboard_widgets cm_co_dashboard_widgets_co_dashboard_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_dashboard_widgets
    ADD CONSTRAINT cm_co_dashboard_widgets_co_dashboard_id_fkey FOREIGN KEY (co_dashboard_id) REFERENCES public.cm_co_dashboards(id);


--
-- Name: cm_co_dashboard_widgets cm_co_dashboard_widgets_co_dashboard_widget_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_dashboard_widgets
    ADD CONSTRAINT cm_co_dashboard_widgets_co_dashboard_widget_id_fkey FOREIGN KEY (co_dashboard_widget_id) REFERENCES public.cm_co_dashboard_widgets(id);


--
-- Name: cm_co_dashboards cm_co_dashboards_co_dashboard_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_dashboards
    ADD CONSTRAINT cm_co_dashboards_co_dashboard_id_fkey FOREIGN KEY (co_dashboard_id) REFERENCES public.cm_co_dashboards(id);


--
-- Name: cm_co_dashboards cm_co_dashboards_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_dashboards
    ADD CONSTRAINT cm_co_dashboards_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_co_dashboards cm_co_dashboards_visibility_co_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_dashboards
    ADD CONSTRAINT cm_co_dashboards_visibility_co_group_id_fkey FOREIGN KEY (visibility_co_group_id) REFERENCES public.cm_co_groups(id);


--
-- Name: cm_co_departments cm_co_departments_administrative_co_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_departments
    ADD CONSTRAINT cm_co_departments_administrative_co_group_id_fkey FOREIGN KEY (administrative_co_group_id) REFERENCES public.cm_co_groups(id);


--
-- Name: cm_co_departments cm_co_departments_co_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_departments
    ADD CONSTRAINT cm_co_departments_co_department_id_fkey FOREIGN KEY (co_department_id) REFERENCES public.cm_co_departments(id);


--
-- Name: cm_co_departments cm_co_departments_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_departments
    ADD CONSTRAINT cm_co_departments_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_co_departments cm_co_departments_cou_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_departments
    ADD CONSTRAINT cm_co_departments_cou_id_fkey FOREIGN KEY (cou_id) REFERENCES public.cm_cous(id);


--
-- Name: cm_co_departments cm_co_departments_leadership_co_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_departments
    ADD CONSTRAINT cm_co_departments_leadership_co_group_id_fkey FOREIGN KEY (leadership_co_group_id) REFERENCES public.cm_co_groups(id);


--
-- Name: cm_co_departments cm_co_departments_support_co_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_departments
    ADD CONSTRAINT cm_co_departments_support_co_group_id_fkey FOREIGN KEY (support_co_group_id) REFERENCES public.cm_co_groups(id);


--
-- Name: cm_co_email_lists cm_co_email_lists_admins_co_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_email_lists
    ADD CONSTRAINT cm_co_email_lists_admins_co_group_id_fkey FOREIGN KEY (admins_co_group_id) REFERENCES public.cm_co_groups(id);


--
-- Name: cm_co_email_lists cm_co_email_lists_co_email_list_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_email_lists
    ADD CONSTRAINT cm_co_email_lists_co_email_list_id_fkey FOREIGN KEY (co_email_list_id) REFERENCES public.cm_co_email_lists(id);


--
-- Name: cm_co_email_lists cm_co_email_lists_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_email_lists
    ADD CONSTRAINT cm_co_email_lists_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_co_email_lists cm_co_email_lists_members_co_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_email_lists
    ADD CONSTRAINT cm_co_email_lists_members_co_group_id_fkey FOREIGN KEY (members_co_group_id) REFERENCES public.cm_co_groups(id);


--
-- Name: cm_co_email_lists cm_co_email_lists_moderators_co_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_email_lists
    ADD CONSTRAINT cm_co_email_lists_moderators_co_group_id_fkey FOREIGN KEY (moderators_co_group_id) REFERENCES public.cm_co_groups(id);


--
-- Name: cm_co_enrollment_attribute_defaults cm_co_enrollment_attribute_de_co_enrollment_attribute_defa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_attribute_defaults
    ADD CONSTRAINT cm_co_enrollment_attribute_de_co_enrollment_attribute_defa_fkey FOREIGN KEY (co_enrollment_attribute_default_id) REFERENCES public.cm_co_enrollment_attribute_defaults(id);


--
-- Name: cm_co_enrollment_attribute_defaults cm_co_enrollment_attribute_defa_co_enrollment_attribute_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_attribute_defaults
    ADD CONSTRAINT cm_co_enrollment_attribute_defa_co_enrollment_attribute_id_fkey FOREIGN KEY (co_enrollment_attribute_id) REFERENCES public.cm_co_enrollment_attributes(id);


--
-- Name: cm_co_enrollment_attributes cm_co_enrollment_attributes_co_enrollment_attribute_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_attributes
    ADD CONSTRAINT cm_co_enrollment_attributes_co_enrollment_attribute_id_fkey FOREIGN KEY (co_enrollment_attribute_id) REFERENCES public.cm_co_enrollment_attributes(id);


--
-- Name: cm_co_enrollment_attributes cm_co_enrollment_attributes_co_enrollment_flow_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_attributes
    ADD CONSTRAINT cm_co_enrollment_attributes_co_enrollment_flow_id_fkey FOREIGN KEY (co_enrollment_flow_id) REFERENCES public.cm_co_enrollment_flows(id);


--
-- Name: cm_co_enrollment_authenticators cm_co_enrollment_authenticato_co_enrollment_authenticator__fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_authenticators
    ADD CONSTRAINT cm_co_enrollment_authenticato_co_enrollment_authenticator__fkey FOREIGN KEY (co_enrollment_authenticator_id) REFERENCES public.cm_co_enrollment_authenticators(id);


--
-- Name: cm_co_enrollment_authenticators cm_co_enrollment_authenticators_authenticator_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_authenticators
    ADD CONSTRAINT cm_co_enrollment_authenticators_authenticator_id_fkey FOREIGN KEY (authenticator_id) REFERENCES public.cm_authenticators(id);


--
-- Name: cm_co_enrollment_authenticators cm_co_enrollment_authenticators_co_enrollment_flow_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_authenticators
    ADD CONSTRAINT cm_co_enrollment_authenticators_co_enrollment_flow_id_fkey FOREIGN KEY (co_enrollment_flow_id) REFERENCES public.cm_co_enrollment_flows(id);


--
-- Name: cm_co_enrollment_clusters cm_co_enrollment_clusters_cluster_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_clusters
    ADD CONSTRAINT cm_co_enrollment_clusters_cluster_id_fkey FOREIGN KEY (cluster_id) REFERENCES public.cm_clusters(id);


--
-- Name: cm_co_enrollment_clusters cm_co_enrollment_clusters_co_enrollment_cluster_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_clusters
    ADD CONSTRAINT cm_co_enrollment_clusters_co_enrollment_cluster_id_fkey FOREIGN KEY (co_enrollment_cluster_id) REFERENCES public.cm_co_enrollment_clusters(id);


--
-- Name: cm_co_enrollment_clusters cm_co_enrollment_clusters_co_enrollment_flow_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_clusters
    ADD CONSTRAINT cm_co_enrollment_clusters_co_enrollment_flow_id_fkey FOREIGN KEY (co_enrollment_flow_id) REFERENCES public.cm_co_enrollment_flows(id);


--
-- Name: cm_co_enrollment_flow_wedges cm_co_enrollment_flow_wedges_co_enrollment_flow_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_flow_wedges
    ADD CONSTRAINT cm_co_enrollment_flow_wedges_co_enrollment_flow_id_fkey FOREIGN KEY (co_enrollment_flow_id) REFERENCES public.cm_co_enrollment_flows(id);


--
-- Name: cm_co_enrollment_flow_wedges cm_co_enrollment_flow_wedges_co_enrollment_flow_wedge_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_flow_wedges
    ADD CONSTRAINT cm_co_enrollment_flow_wedges_co_enrollment_flow_wedge_id_fkey FOREIGN KEY (co_enrollment_flow_wedge_id) REFERENCES public.cm_co_enrollment_flow_wedges(id);


--
-- Name: cm_co_enrollment_flows cm_co_enrollment_flows_approval_template_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_flows
    ADD CONSTRAINT cm_co_enrollment_flows_approval_template_id_fkey FOREIGN KEY (approval_template_id) REFERENCES public.cm_co_message_templates(id);


--
-- Name: cm_co_enrollment_flows cm_co_enrollment_flows_approver_co_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_flows
    ADD CONSTRAINT cm_co_enrollment_flows_approver_co_group_id_fkey FOREIGN KEY (approver_co_group_id) REFERENCES public.cm_co_groups(id);


--
-- Name: cm_co_enrollment_flows cm_co_enrollment_flows_authz_co_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_flows
    ADD CONSTRAINT cm_co_enrollment_flows_authz_co_group_id_fkey FOREIGN KEY (authz_co_group_id) REFERENCES public.cm_co_groups(id);


--
-- Name: cm_co_enrollment_flows cm_co_enrollment_flows_authz_cou_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_flows
    ADD CONSTRAINT cm_co_enrollment_flows_authz_cou_id_fkey FOREIGN KEY (authz_cou_id) REFERENCES public.cm_cous(id);


--
-- Name: cm_co_enrollment_flows cm_co_enrollment_flows_co_enrollment_flow_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_flows
    ADD CONSTRAINT cm_co_enrollment_flows_co_enrollment_flow_id_fkey FOREIGN KEY (co_enrollment_flow_id) REFERENCES public.cm_co_enrollment_flows(id);


--
-- Name: cm_co_enrollment_flows cm_co_enrollment_flows_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_flows
    ADD CONSTRAINT cm_co_enrollment_flows_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_co_enrollment_flows cm_co_enrollment_flows_co_theme_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_flows
    ADD CONSTRAINT cm_co_enrollment_flows_co_theme_id_fkey FOREIGN KEY (co_theme_id) REFERENCES public.cm_co_themes(id);


--
-- Name: cm_co_enrollment_flows cm_co_enrollment_flows_denial_template_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_flows
    ADD CONSTRAINT cm_co_enrollment_flows_denial_template_id_fkey FOREIGN KEY (denial_template_id) REFERENCES public.cm_co_message_templates(id);


--
-- Name: cm_co_enrollment_flows cm_co_enrollment_flows_finalization_template_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_flows
    ADD CONSTRAINT cm_co_enrollment_flows_finalization_template_id_fkey FOREIGN KEY (finalization_template_id) REFERENCES public.cm_co_message_templates(id);


--
-- Name: cm_co_enrollment_flows cm_co_enrollment_flows_notification_co_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_flows
    ADD CONSTRAINT cm_co_enrollment_flows_notification_co_group_id_fkey FOREIGN KEY (notification_co_group_id) REFERENCES public.cm_co_groups(id);


--
-- Name: cm_co_enrollment_flows cm_co_enrollment_flows_verification_template_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_flows
    ADD CONSTRAINT cm_co_enrollment_flows_verification_template_id_fkey FOREIGN KEY (verification_template_id) REFERENCES public.cm_co_message_templates(id);


--
-- Name: cm_co_enrollment_sources cm_co_enrollment_sources_co_enrollment_flow_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_sources
    ADD CONSTRAINT cm_co_enrollment_sources_co_enrollment_flow_id_fkey FOREIGN KEY (co_enrollment_flow_id) REFERENCES public.cm_co_enrollment_flows(id);


--
-- Name: cm_co_enrollment_sources cm_co_enrollment_sources_co_enrollment_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_sources
    ADD CONSTRAINT cm_co_enrollment_sources_co_enrollment_source_id_fkey FOREIGN KEY (co_enrollment_source_id) REFERENCES public.cm_co_enrollment_sources(id);


--
-- Name: cm_co_enrollment_sources cm_co_enrollment_sources_org_identity_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_enrollment_sources
    ADD CONSTRAINT cm_co_enrollment_sources_org_identity_source_id_fkey FOREIGN KEY (org_identity_source_id) REFERENCES public.cm_org_identity_sources(id);


--
-- Name: cm_co_expiration_counts cm_co_expiration_counts_co_expiration_count_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_expiration_counts
    ADD CONSTRAINT cm_co_expiration_counts_co_expiration_count_id_fkey FOREIGN KEY (co_expiration_count_id) REFERENCES public.cm_co_expiration_counts(id);


--
-- Name: cm_co_expiration_counts cm_co_expiration_counts_co_expiration_policy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_expiration_counts
    ADD CONSTRAINT cm_co_expiration_counts_co_expiration_policy_id_fkey FOREIGN KEY (co_expiration_policy_id) REFERENCES public.cm_co_expiration_policies(id);


--
-- Name: cm_co_expiration_counts cm_co_expiration_counts_co_person_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_expiration_counts
    ADD CONSTRAINT cm_co_expiration_counts_co_person_role_id_fkey FOREIGN KEY (co_person_role_id) REFERENCES public.cm_co_person_roles(id);


--
-- Name: cm_co_expiration_policies cm_co_expiration_policies_act_cou_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_expiration_policies
    ADD CONSTRAINT cm_co_expiration_policies_act_cou_id_fkey FOREIGN KEY (act_cou_id) REFERENCES public.cm_cous(id);


--
-- Name: cm_co_expiration_policies cm_co_expiration_policies_act_notification_template_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_expiration_policies
    ADD CONSTRAINT cm_co_expiration_policies_act_notification_template_id_fkey FOREIGN KEY (act_notification_template_id) REFERENCES public.cm_co_message_templates(id);


--
-- Name: cm_co_expiration_policies cm_co_expiration_policies_act_notify_co_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_expiration_policies
    ADD CONSTRAINT cm_co_expiration_policies_act_notify_co_group_id_fkey FOREIGN KEY (act_notify_co_group_id) REFERENCES public.cm_co_groups(id);


--
-- Name: cm_co_expiration_policies cm_co_expiration_policies_co_expiration_policy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_expiration_policies
    ADD CONSTRAINT cm_co_expiration_policies_co_expiration_policy_id_fkey FOREIGN KEY (co_expiration_policy_id) REFERENCES public.cm_co_expiration_policies(id);


--
-- Name: cm_co_expiration_policies cm_co_expiration_policies_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_expiration_policies
    ADD CONSTRAINT cm_co_expiration_policies_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_co_expiration_policies cm_co_expiration_policies_cond_cou_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_expiration_policies
    ADD CONSTRAINT cm_co_expiration_policies_cond_cou_id_fkey FOREIGN KEY (cond_cou_id) REFERENCES public.cm_cous(id);


--
-- Name: cm_co_extended_attributes cm_co_extended_attributes_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_extended_attributes
    ADD CONSTRAINT cm_co_extended_attributes_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_co_extended_types cm_co_extended_types_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_extended_types
    ADD CONSTRAINT cm_co_extended_types_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_co_group_members cm_co_group_members_co_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_group_members
    ADD CONSTRAINT cm_co_group_members_co_group_id_fkey FOREIGN KEY (co_group_id) REFERENCES public.cm_co_groups(id);


--
-- Name: cm_co_group_members cm_co_group_members_co_group_member_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_group_members
    ADD CONSTRAINT cm_co_group_members_co_group_member_id_fkey FOREIGN KEY (co_group_member_id) REFERENCES public.cm_co_group_members(id);


--
-- Name: cm_co_group_members cm_co_group_members_co_group_nesting_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_group_members
    ADD CONSTRAINT cm_co_group_members_co_group_nesting_id_fkey FOREIGN KEY (co_group_nesting_id) REFERENCES public.cm_co_group_nestings(id);


--
-- Name: cm_co_group_members cm_co_group_members_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_group_members
    ADD CONSTRAINT cm_co_group_members_co_person_id_fkey FOREIGN KEY (co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_co_group_members cm_co_group_members_source_org_identity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_group_members
    ADD CONSTRAINT cm_co_group_members_source_org_identity_id_fkey FOREIGN KEY (source_org_identity_id) REFERENCES public.cm_org_identities(id);


--
-- Name: cm_co_group_nestings cm_co_group_nestings_co_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_group_nestings
    ADD CONSTRAINT cm_co_group_nestings_co_group_id_fkey FOREIGN KEY (co_group_id) REFERENCES public.cm_co_groups(id);


--
-- Name: cm_co_group_nestings cm_co_group_nestings_co_group_nesting_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_group_nestings
    ADD CONSTRAINT cm_co_group_nestings_co_group_nesting_id_fkey FOREIGN KEY (co_group_nesting_id) REFERENCES public.cm_co_group_nestings(id);


--
-- Name: cm_co_group_nestings cm_co_group_nestings_target_co_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_group_nestings
    ADD CONSTRAINT cm_co_group_nestings_target_co_group_id_fkey FOREIGN KEY (target_co_group_id) REFERENCES public.cm_co_groups(id);


--
-- Name: cm_co_group_ois_mappings cm_co_group_ois_mappings_co_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_group_ois_mappings
    ADD CONSTRAINT cm_co_group_ois_mappings_co_group_id_fkey FOREIGN KEY (co_group_id) REFERENCES public.cm_co_groups(id);


--
-- Name: cm_co_group_ois_mappings cm_co_group_ois_mappings_co_group_ois_mapping_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_group_ois_mappings
    ADD CONSTRAINT cm_co_group_ois_mappings_co_group_ois_mapping_id_fkey FOREIGN KEY (co_group_ois_mapping_id) REFERENCES public.cm_co_group_ois_mappings(id);


--
-- Name: cm_co_group_ois_mappings cm_co_group_ois_mappings_org_identity_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_group_ois_mappings
    ADD CONSTRAINT cm_co_group_ois_mappings_org_identity_source_id_fkey FOREIGN KEY (org_identity_source_id) REFERENCES public.cm_org_identity_sources(id);


--
-- Name: cm_co_grouper_provisioner_groups cm_co_grouper_provisioner_gro_co_grouper_provisioner_targe_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_grouper_provisioner_groups
    ADD CONSTRAINT cm_co_grouper_provisioner_gro_co_grouper_provisioner_targe_fkey FOREIGN KEY (co_grouper_provisioner_target_id) REFERENCES public.cm_co_grouper_provisioner_targets(id);


--
-- Name: cm_co_grouper_provisioner_groups cm_co_grouper_provisioner_groups_co_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_grouper_provisioner_groups
    ADD CONSTRAINT cm_co_grouper_provisioner_groups_co_group_id_fkey FOREIGN KEY (co_group_id) REFERENCES public.cm_co_groups(id);


--
-- Name: cm_co_grouper_provisioner_targets cm_co_grouper_provisioner_target_co_provisioning_target_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_grouper_provisioner_targets
    ADD CONSTRAINT cm_co_grouper_provisioner_target_co_provisioning_target_id_fkey FOREIGN KEY (co_provisioning_target_id) REFERENCES public.cm_co_provisioning_targets(id);


--
-- Name: cm_co_groups cm_co_groups_co_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_groups
    ADD CONSTRAINT cm_co_groups_co_group_id_fkey FOREIGN KEY (co_group_id) REFERENCES public.cm_co_groups(id);


--
-- Name: cm_co_groups cm_co_groups_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_groups
    ADD CONSTRAINT cm_co_groups_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_co_groups cm_co_groups_cou_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_groups
    ADD CONSTRAINT cm_co_groups_cou_id_fkey FOREIGN KEY (cou_id) REFERENCES public.cm_cous(id);


--
-- Name: cm_co_identifier_assignments cm_co_identifier_assignments_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_identifier_assignments
    ADD CONSTRAINT cm_co_identifier_assignments_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_co_identifier_validators cm_co_identifier_validators_co_extended_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_identifier_validators
    ADD CONSTRAINT cm_co_identifier_validators_co_extended_type_id_fkey FOREIGN KEY (co_extended_type_id) REFERENCES public.cm_co_extended_types(id);


--
-- Name: cm_co_identifier_validators cm_co_identifier_validators_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_identifier_validators
    ADD CONSTRAINT cm_co_identifier_validators_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_co_identifier_validators cm_co_identifier_validators_co_identifier_validator_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_identifier_validators
    ADD CONSTRAINT cm_co_identifier_validators_co_identifier_validator_id_fkey FOREIGN KEY (co_identifier_validator_id) REFERENCES public.cm_co_identifier_validators(id);


--
-- Name: cm_co_invites cm_co_invites_co_invite_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_invites
    ADD CONSTRAINT cm_co_invites_co_invite_id_fkey FOREIGN KEY (co_invite_id) REFERENCES public.cm_co_invites(id);


--
-- Name: cm_co_invites cm_co_invites_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_invites
    ADD CONSTRAINT cm_co_invites_co_person_id_fkey FOREIGN KEY (co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_co_invites cm_co_invites_email_address_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_invites
    ADD CONSTRAINT cm_co_invites_email_address_id_fkey FOREIGN KEY (email_address_id) REFERENCES public.cm_email_addresses(id);


--
-- Name: cm_co_job_history_records cm_co_job_history_records_co_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_job_history_records
    ADD CONSTRAINT cm_co_job_history_records_co_job_id_fkey FOREIGN KEY (co_job_id) REFERENCES public.cm_co_jobs(id);


--
-- Name: cm_co_job_history_records cm_co_job_history_records_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_job_history_records
    ADD CONSTRAINT cm_co_job_history_records_co_person_id_fkey FOREIGN KEY (co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_co_job_history_records cm_co_job_history_records_org_identity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_job_history_records
    ADD CONSTRAINT cm_co_job_history_records_org_identity_id_fkey FOREIGN KEY (org_identity_id) REFERENCES public.cm_org_identities(id);


--
-- Name: cm_co_jobs cm_co_jobs_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_jobs
    ADD CONSTRAINT cm_co_jobs_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_co_jobs cm_co_jobs_requeued_from_co_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_jobs
    ADD CONSTRAINT cm_co_jobs_requeued_from_co_job_id_fkey FOREIGN KEY (requeued_from_co_job_id) REFERENCES public.cm_co_jobs(id);


--
-- Name: cm_co_ldap_provisioner_attr_groupings cm_co_ldap_provisioner_attr_g_co_ldap_provisioner_target_i_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_ldap_provisioner_attr_groupings
    ADD CONSTRAINT cm_co_ldap_provisioner_attr_g_co_ldap_provisioner_target_i_fkey FOREIGN KEY (co_ldap_provisioner_target_id) REFERENCES public.cm_co_ldap_provisioner_targets(id);


--
-- Name: cm_co_ldap_provisioner_attributes cm_co_ldap_provisioner_attrib_co_ldap_provisioner_target_i_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_ldap_provisioner_attributes
    ADD CONSTRAINT cm_co_ldap_provisioner_attrib_co_ldap_provisioner_target_i_fkey FOREIGN KEY (co_ldap_provisioner_target_id) REFERENCES public.cm_co_ldap_provisioner_targets(id);


--
-- Name: cm_co_ldap_provisioner_dns cm_co_ldap_provisioner_dns_co_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_ldap_provisioner_dns
    ADD CONSTRAINT cm_co_ldap_provisioner_dns_co_group_id_fkey FOREIGN KEY (co_group_id) REFERENCES public.cm_co_groups(id);


--
-- Name: cm_co_ldap_provisioner_dns cm_co_ldap_provisioner_dns_co_ldap_provisioner_target_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_ldap_provisioner_dns
    ADD CONSTRAINT cm_co_ldap_provisioner_dns_co_ldap_provisioner_target_id_fkey FOREIGN KEY (co_ldap_provisioner_target_id) REFERENCES public.cm_co_ldap_provisioner_targets(id);


--
-- Name: cm_co_ldap_provisioner_dns cm_co_ldap_provisioner_dns_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_ldap_provisioner_dns
    ADD CONSTRAINT cm_co_ldap_provisioner_dns_co_person_id_fkey FOREIGN KEY (co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_co_ldap_provisioner_targets cm_co_ldap_provisioner_targets_cluster_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_ldap_provisioner_targets
    ADD CONSTRAINT cm_co_ldap_provisioner_targets_cluster_id_fkey FOREIGN KEY (cluster_id) REFERENCES public.cm_clusters(id);


--
-- Name: cm_co_ldap_provisioner_targets cm_co_ldap_provisioner_targets_co_provisioning_target_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_ldap_provisioner_targets
    ADD CONSTRAINT cm_co_ldap_provisioner_targets_co_provisioning_target_id_fkey FOREIGN KEY (co_provisioning_target_id) REFERENCES public.cm_co_provisioning_targets(id);


--
-- Name: cm_co_localizations cm_co_localizations_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_localizations
    ADD CONSTRAINT cm_co_localizations_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_co_message_templates cm_co_message_templates_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_message_templates
    ADD CONSTRAINT cm_co_message_templates_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_co_message_templates cm_co_message_templates_co_message_template_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_message_templates
    ADD CONSTRAINT cm_co_message_templates_co_message_template_id_fkey FOREIGN KEY (co_message_template_id) REFERENCES public.cm_co_message_templates(id);


--
-- Name: cm_co_navigation_links cm_co_navigation_links_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_navigation_links
    ADD CONSTRAINT cm_co_navigation_links_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_co_notifications cm_co_notifications_actor_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_notifications
    ADD CONSTRAINT cm_co_notifications_actor_co_person_id_fkey FOREIGN KEY (actor_co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_co_notifications cm_co_notifications_recipient_co_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_notifications
    ADD CONSTRAINT cm_co_notifications_recipient_co_group_id_fkey FOREIGN KEY (recipient_co_group_id) REFERENCES public.cm_co_groups(id);


--
-- Name: cm_co_notifications cm_co_notifications_recipient_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_notifications
    ADD CONSTRAINT cm_co_notifications_recipient_co_person_id_fkey FOREIGN KEY (recipient_co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_co_notifications cm_co_notifications_resolver_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_notifications
    ADD CONSTRAINT cm_co_notifications_resolver_co_person_id_fkey FOREIGN KEY (resolver_co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_co_notifications cm_co_notifications_subject_co_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_notifications
    ADD CONSTRAINT cm_co_notifications_subject_co_group_id_fkey FOREIGN KEY (subject_co_group_id) REFERENCES public.cm_co_groups(id);


--
-- Name: cm_co_notifications cm_co_notifications_subject_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_notifications
    ADD CONSTRAINT cm_co_notifications_subject_co_person_id_fkey FOREIGN KEY (subject_co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_co_nsf_demographics cm_co_nsf_demographics_co_nsf_demographic_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_nsf_demographics
    ADD CONSTRAINT cm_co_nsf_demographics_co_nsf_demographic_id_fkey FOREIGN KEY (co_nsf_demographic_id) REFERENCES public.cm_co_nsf_demographics(id);


--
-- Name: cm_co_nsf_demographics cm_co_nsf_demographics_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_nsf_demographics
    ADD CONSTRAINT cm_co_nsf_demographics_co_person_id_fkey FOREIGN KEY (co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_co_org_identity_links cm_co_org_identity_links_co_org_identity_link_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_org_identity_links
    ADD CONSTRAINT cm_co_org_identity_links_co_org_identity_link_id_fkey FOREIGN KEY (co_org_identity_link_id) REFERENCES public.cm_co_org_identity_links(id);


--
-- Name: cm_co_org_identity_links cm_co_org_identity_links_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_org_identity_links
    ADD CONSTRAINT cm_co_org_identity_links_co_person_id_fkey FOREIGN KEY (co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_co_org_identity_links cm_co_org_identity_links_org_identity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_org_identity_links
    ADD CONSTRAINT cm_co_org_identity_links_org_identity_id_fkey FOREIGN KEY (org_identity_id) REFERENCES public.cm_org_identities(id);


--
-- Name: cm_co_people cm_co_people_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_people
    ADD CONSTRAINT cm_co_people_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_co_people cm_co_people_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_people
    ADD CONSTRAINT cm_co_people_co_person_id_fkey FOREIGN KEY (co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_co_person_roles cm_co_person_roles_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_person_roles
    ADD CONSTRAINT cm_co_person_roles_co_person_id_fkey FOREIGN KEY (co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_co_person_roles cm_co_person_roles_co_person_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_person_roles
    ADD CONSTRAINT cm_co_person_roles_co_person_role_id_fkey FOREIGN KEY (co_person_role_id) REFERENCES public.cm_co_person_roles(id);


--
-- Name: cm_co_person_roles cm_co_person_roles_cou_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_person_roles
    ADD CONSTRAINT cm_co_person_roles_cou_id_fkey FOREIGN KEY (cou_id) REFERENCES public.cm_cous(id);


--
-- Name: cm_co_person_roles cm_co_person_roles_source_org_identity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_person_roles
    ADD CONSTRAINT cm_co_person_roles_source_org_identity_id_fkey FOREIGN KEY (source_org_identity_id) REFERENCES public.cm_org_identities(id);


--
-- Name: cm_co_person_roles cm_co_person_roles_sponsor_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_person_roles
    ADD CONSTRAINT cm_co_person_roles_sponsor_co_person_id_fkey FOREIGN KEY (sponsor_co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_co_petition_attributes cm_co_petition_attributes_co_enrollment_attribute_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_petition_attributes
    ADD CONSTRAINT cm_co_petition_attributes_co_enrollment_attribute_id_fkey FOREIGN KEY (co_enrollment_attribute_id) REFERENCES public.cm_co_enrollment_attributes(id);


--
-- Name: cm_co_petition_attributes cm_co_petition_attributes_co_petition_attribute_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_petition_attributes
    ADD CONSTRAINT cm_co_petition_attributes_co_petition_attribute_id_fkey FOREIGN KEY (co_petition_attribute_id) REFERENCES public.cm_co_petition_attributes(id);


--
-- Name: cm_co_petition_attributes cm_co_petition_attributes_co_petition_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_petition_attributes
    ADD CONSTRAINT cm_co_petition_attributes_co_petition_id_fkey FOREIGN KEY (co_petition_id) REFERENCES public.cm_co_petitions(id);


--
-- Name: cm_co_petition_history_records cm_co_petition_history_record_co_petition_history_record_i_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_petition_history_records
    ADD CONSTRAINT cm_co_petition_history_record_co_petition_history_record_i_fkey FOREIGN KEY (co_petition_history_record_id) REFERENCES public.cm_co_petition_history_records(id);


--
-- Name: cm_co_petition_history_records cm_co_petition_history_records_actor_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_petition_history_records
    ADD CONSTRAINT cm_co_petition_history_records_actor_co_person_id_fkey FOREIGN KEY (actor_co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_co_petition_history_records cm_co_petition_history_records_co_petition_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_petition_history_records
    ADD CONSTRAINT cm_co_petition_history_records_co_petition_id_fkey FOREIGN KEY (co_petition_id) REFERENCES public.cm_co_petitions(id);


--
-- Name: cm_co_petitions cm_co_petitions_approver_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_petitions
    ADD CONSTRAINT cm_co_petitions_approver_co_person_id_fkey FOREIGN KEY (approver_co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_co_petitions cm_co_petitions_archived_org_identity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_petitions
    ADD CONSTRAINT cm_co_petitions_archived_org_identity_id_fkey FOREIGN KEY (archived_org_identity_id) REFERENCES public.cm_org_identities(id);


--
-- Name: cm_co_petitions cm_co_petitions_co_enrollment_flow_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_petitions
    ADD CONSTRAINT cm_co_petitions_co_enrollment_flow_id_fkey FOREIGN KEY (co_enrollment_flow_id) REFERENCES public.cm_co_enrollment_flows(id);


--
-- Name: cm_co_petitions cm_co_petitions_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_petitions
    ADD CONSTRAINT cm_co_petitions_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_co_petitions cm_co_petitions_co_invite_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_petitions
    ADD CONSTRAINT cm_co_petitions_co_invite_id_fkey FOREIGN KEY (co_invite_id) REFERENCES public.cm_co_invites(id);


--
-- Name: cm_co_petitions cm_co_petitions_co_petition_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_petitions
    ADD CONSTRAINT cm_co_petitions_co_petition_id_fkey FOREIGN KEY (co_petition_id) REFERENCES public.cm_co_petitions(id);


--
-- Name: cm_co_petitions cm_co_petitions_cou_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_petitions
    ADD CONSTRAINT cm_co_petitions_cou_id_fkey FOREIGN KEY (cou_id) REFERENCES public.cm_cous(id);


--
-- Name: cm_co_petitions cm_co_petitions_enrollee_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_petitions
    ADD CONSTRAINT cm_co_petitions_enrollee_co_person_id_fkey FOREIGN KEY (enrollee_co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_co_petitions cm_co_petitions_enrollee_co_person_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_petitions
    ADD CONSTRAINT cm_co_petitions_enrollee_co_person_role_id_fkey FOREIGN KEY (enrollee_co_person_role_id) REFERENCES public.cm_co_person_roles(id);


--
-- Name: cm_co_petitions cm_co_petitions_enrollee_org_identity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_petitions
    ADD CONSTRAINT cm_co_petitions_enrollee_org_identity_id_fkey FOREIGN KEY (enrollee_org_identity_id) REFERENCES public.cm_org_identities(id);


--
-- Name: cm_co_petitions cm_co_petitions_petitioner_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_petitions
    ADD CONSTRAINT cm_co_petitions_petitioner_co_person_id_fkey FOREIGN KEY (petitioner_co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_co_petitions cm_co_petitions_sponsor_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_petitions
    ADD CONSTRAINT cm_co_petitions_sponsor_co_person_id_fkey FOREIGN KEY (sponsor_co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_co_pipelines cm_co_pipelines_co_enrollment_flow_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_pipelines
    ADD CONSTRAINT cm_co_pipelines_co_enrollment_flow_id_fkey FOREIGN KEY (co_enrollment_flow_id) REFERENCES public.cm_co_enrollment_flows(id);


--
-- Name: cm_co_pipelines cm_co_pipelines_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_pipelines
    ADD CONSTRAINT cm_co_pipelines_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_co_pipelines cm_co_pipelines_co_pipeline_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_pipelines
    ADD CONSTRAINT cm_co_pipelines_co_pipeline_id_fkey FOREIGN KEY (co_pipeline_id) REFERENCES public.cm_co_pipelines(id);


--
-- Name: cm_co_pipelines cm_co_pipelines_match_server_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_pipelines
    ADD CONSTRAINT cm_co_pipelines_match_server_id_fkey FOREIGN KEY (match_server_id) REFERENCES public.cm_servers(id);


--
-- Name: cm_co_pipelines cm_co_pipelines_sync_cou_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_pipelines
    ADD CONSTRAINT cm_co_pipelines_sync_cou_id_fkey FOREIGN KEY (sync_cou_id) REFERENCES public.cm_cous(id);


--
-- Name: cm_co_pipelines cm_co_pipelines_sync_replace_cou_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_pipelines
    ADD CONSTRAINT cm_co_pipelines_sync_replace_cou_id_fkey FOREIGN KEY (sync_replace_cou_id) REFERENCES public.cm_cous(id);


--
-- Name: cm_co_provisioning_exports cm_co_provisioning_exports_co_email_list_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_provisioning_exports
    ADD CONSTRAINT cm_co_provisioning_exports_co_email_list_id_fkey FOREIGN KEY (co_email_list_id) REFERENCES public.cm_co_email_lists(id);


--
-- Name: cm_co_provisioning_exports cm_co_provisioning_exports_co_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_provisioning_exports
    ADD CONSTRAINT cm_co_provisioning_exports_co_group_id_fkey FOREIGN KEY (co_group_id) REFERENCES public.cm_co_groups(id);


--
-- Name: cm_co_provisioning_exports cm_co_provisioning_exports_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_provisioning_exports
    ADD CONSTRAINT cm_co_provisioning_exports_co_person_id_fkey FOREIGN KEY (co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_co_provisioning_exports cm_co_provisioning_exports_co_provisioning_target_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_provisioning_exports
    ADD CONSTRAINT cm_co_provisioning_exports_co_provisioning_target_id_fkey FOREIGN KEY (co_provisioning_target_id) REFERENCES public.cm_co_provisioning_targets(id);


--
-- Name: cm_co_provisioning_exports cm_co_provisioning_exports_co_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_provisioning_exports
    ADD CONSTRAINT cm_co_provisioning_exports_co_service_id_fkey FOREIGN KEY (co_service_id) REFERENCES public.cm_co_services(id);


--
-- Name: cm_co_provisioning_target_filters cm_co_provisioning_target_fil_co_provisioning_target_filte_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_provisioning_target_filters
    ADD CONSTRAINT cm_co_provisioning_target_fil_co_provisioning_target_filte_fkey FOREIGN KEY (co_provisioning_target_filter_id) REFERENCES public.cm_co_provisioning_target_filters(id);


--
-- Name: cm_co_provisioning_target_filters cm_co_provisioning_target_filter_co_provisioning_target_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_provisioning_target_filters
    ADD CONSTRAINT cm_co_provisioning_target_filter_co_provisioning_target_id_fkey FOREIGN KEY (co_provisioning_target_id) REFERENCES public.cm_co_provisioning_targets(id);


--
-- Name: cm_co_provisioning_target_filters cm_co_provisioning_target_filters_data_filter_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_provisioning_target_filters
    ADD CONSTRAINT cm_co_provisioning_target_filters_data_filter_id_fkey FOREIGN KEY (data_filter_id) REFERENCES public.cm_data_filters(id);


--
-- Name: cm_co_provisioning_targets cm_co_provisioning_targets_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_provisioning_targets
    ADD CONSTRAINT cm_co_provisioning_targets_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_co_provisioning_targets cm_co_provisioning_targets_provision_co_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_provisioning_targets
    ADD CONSTRAINT cm_co_provisioning_targets_provision_co_group_id_fkey FOREIGN KEY (provision_co_group_id) REFERENCES public.cm_co_groups(id);


--
-- Name: cm_co_provisioning_targets cm_co_provisioning_targets_skip_org_identity_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_provisioning_targets
    ADD CONSTRAINT cm_co_provisioning_targets_skip_org_identity_source_id_fkey FOREIGN KEY (skip_org_identity_source_id) REFERENCES public.cm_org_identity_sources(id);


--
-- Name: cm_co_self_service_permissions cm_co_self_service_permissions_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_self_service_permissions
    ADD CONSTRAINT cm_co_self_service_permissions_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_co_sequential_identifier_assignments cm_co_sequential_identifier_as_co_identifier_assignment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_sequential_identifier_assignments
    ADD CONSTRAINT cm_co_sequential_identifier_as_co_identifier_assignment_id_fkey FOREIGN KEY (co_identifier_assignment_id) REFERENCES public.cm_co_identifier_assignments(id);


--
-- Name: cm_co_services cm_co_services_authenticator_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_services
    ADD CONSTRAINT cm_co_services_authenticator_id_fkey FOREIGN KEY (authenticator_id) REFERENCES public.cm_authenticators(id);


--
-- Name: cm_co_services cm_co_services_cluster_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_services
    ADD CONSTRAINT cm_co_services_cluster_id_fkey FOREIGN KEY (cluster_id) REFERENCES public.cm_clusters(id);


--
-- Name: cm_co_services cm_co_services_co_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_services
    ADD CONSTRAINT cm_co_services_co_group_id_fkey FOREIGN KEY (co_group_id) REFERENCES public.cm_co_groups(id);


--
-- Name: cm_co_services cm_co_services_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_services
    ADD CONSTRAINT cm_co_services_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_co_services cm_co_services_co_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_services
    ADD CONSTRAINT cm_co_services_co_service_id_fkey FOREIGN KEY (co_service_id) REFERENCES public.cm_co_services(id);


--
-- Name: cm_co_services cm_co_services_cou_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_services
    ADD CONSTRAINT cm_co_services_cou_id_fkey FOREIGN KEY (cou_id) REFERENCES public.cm_cous(id);


--
-- Name: cm_co_settings cm_co_settings_co_dashboard_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_settings
    ADD CONSTRAINT cm_co_settings_co_dashboard_id_fkey FOREIGN KEY (co_dashboard_id) REFERENCES public.cm_co_dashboards(id);


--
-- Name: cm_co_settings cm_co_settings_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_settings
    ADD CONSTRAINT cm_co_settings_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_co_settings cm_co_settings_co_theme_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_settings
    ADD CONSTRAINT cm_co_settings_co_theme_id_fkey FOREIGN KEY (co_theme_id) REFERENCES public.cm_co_themes(id);


--
-- Name: cm_co_settings cm_co_settings_default_co_pipeline_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_settings
    ADD CONSTRAINT cm_co_settings_default_co_pipeline_id_fkey FOREIGN KEY (default_co_pipeline_id) REFERENCES public.cm_co_pipelines(id);


--
-- Name: cm_co_sql_provisioner_targets cm_co_sql_provisioner_targets_co_provisioning_target_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_sql_provisioner_targets
    ADD CONSTRAINT cm_co_sql_provisioner_targets_co_provisioning_target_id_fkey FOREIGN KEY (co_provisioning_target_id) REFERENCES public.cm_co_provisioning_targets(id);


--
-- Name: cm_co_sql_provisioner_targets cm_co_sql_provisioner_targets_server_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_sql_provisioner_targets
    ADD CONSTRAINT cm_co_sql_provisioner_targets_server_id_fkey FOREIGN KEY (server_id) REFERENCES public.cm_servers(id);


--
-- Name: cm_co_t_and_c_agreements cm_co_t_and_c_agreements_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_t_and_c_agreements
    ADD CONSTRAINT cm_co_t_and_c_agreements_co_person_id_fkey FOREIGN KEY (co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_co_t_and_c_agreements cm_co_t_and_c_agreements_co_terms_and_conditions_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_t_and_c_agreements
    ADD CONSTRAINT cm_co_t_and_c_agreements_co_terms_and_conditions_id_fkey FOREIGN KEY (co_terms_and_conditions_id) REFERENCES public.cm_co_terms_and_conditions(id);


--
-- Name: cm_co_terms_and_conditions cm_co_terms_and_conditions_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_terms_and_conditions
    ADD CONSTRAINT cm_co_terms_and_conditions_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_co_terms_and_conditions cm_co_terms_and_conditions_co_terms_and_conditions_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_terms_and_conditions
    ADD CONSTRAINT cm_co_terms_and_conditions_co_terms_and_conditions_id_fkey FOREIGN KEY (co_terms_and_conditions_id) REFERENCES public.cm_co_terms_and_conditions(id);


--
-- Name: cm_co_terms_and_conditions cm_co_terms_and_conditions_cou_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_terms_and_conditions
    ADD CONSTRAINT cm_co_terms_and_conditions_cou_id_fkey FOREIGN KEY (cou_id) REFERENCES public.cm_cous(id);


--
-- Name: cm_co_themes cm_co_themes_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_themes
    ADD CONSTRAINT cm_co_themes_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_co_themes cm_co_themes_co_theme_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_co_themes
    ADD CONSTRAINT cm_co_themes_co_theme_id_fkey FOREIGN KEY (co_theme_id) REFERENCES public.cm_co_themes(id);


--
-- Name: cm_core_apis cm_core_apis_api_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_core_apis
    ADD CONSTRAINT cm_core_apis_api_user_id_fkey FOREIGN KEY (api_user_id) REFERENCES public.cm_api_users(id);


--
-- Name: cm_core_apis cm_core_apis_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_core_apis
    ADD CONSTRAINT cm_core_apis_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_core_apis cm_core_apis_core_api_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_core_apis
    ADD CONSTRAINT cm_core_apis_core_api_id_fkey FOREIGN KEY (core_api_id) REFERENCES public.cm_core_apis(id);


--
-- Name: cm_cous cm_cous_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_cous
    ADD CONSTRAINT cm_cous_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_cous cm_cous_cou_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_cous
    ADD CONSTRAINT cm_cous_cou_id_fkey FOREIGN KEY (cou_id) REFERENCES public.cm_cous(id);


--
-- Name: cm_cous cm_cous_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_cous
    ADD CONSTRAINT cm_cous_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.cm_cous(id);


--
-- Name: cm_data_filters cm_data_filters_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_data_filters
    ADD CONSTRAINT cm_data_filters_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_data_filters cm_data_filters_data_filter_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_data_filters
    ADD CONSTRAINT cm_data_filters_data_filter_id_fkey FOREIGN KEY (data_filter_id) REFERENCES public.cm_data_filters(id);


--
-- Name: cm_dictionaries cm_dictionaries_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_dictionaries
    ADD CONSTRAINT cm_dictionaries_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_dictionaries cm_dictionaries_dictionary_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_dictionaries
    ADD CONSTRAINT cm_dictionaries_dictionary_id_fkey FOREIGN KEY (dictionary_id) REFERENCES public.cm_dictionaries(id);


--
-- Name: cm_dictionary_entries cm_dictionary_entries_dictionary_entry_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_dictionary_entries
    ADD CONSTRAINT cm_dictionary_entries_dictionary_entry_id_fkey FOREIGN KEY (dictionary_entry_id) REFERENCES public.cm_dictionary_entries(id);


--
-- Name: cm_dictionary_entries cm_dictionary_entries_dictionary_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_dictionary_entries
    ADD CONSTRAINT cm_dictionary_entries_dictionary_id_fkey FOREIGN KEY (dictionary_id) REFERENCES public.cm_dictionaries(id);


--
-- Name: cm_email_addresses cm_email_addresses_co_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_email_addresses
    ADD CONSTRAINT cm_email_addresses_co_department_id_fkey FOREIGN KEY (co_department_id) REFERENCES public.cm_co_departments(id);


--
-- Name: cm_email_addresses cm_email_addresses_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_email_addresses
    ADD CONSTRAINT cm_email_addresses_co_person_id_fkey FOREIGN KEY (co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_email_addresses cm_email_addresses_email_address_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_email_addresses
    ADD CONSTRAINT cm_email_addresses_email_address_id_fkey FOREIGN KEY (email_address_id) REFERENCES public.cm_email_addresses(id);


--
-- Name: cm_email_addresses cm_email_addresses_org_identity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_email_addresses
    ADD CONSTRAINT cm_email_addresses_org_identity_id_fkey FOREIGN KEY (org_identity_id) REFERENCES public.cm_org_identities(id);


--
-- Name: cm_email_addresses cm_email_addresses_organization_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_email_addresses
    ADD CONSTRAINT cm_email_addresses_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.cm_organizations(id);


--
-- Name: cm_email_addresses cm_email_addresses_source_email_address_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_email_addresses
    ADD CONSTRAINT cm_email_addresses_source_email_address_id_fkey FOREIGN KEY (source_email_address_id) REFERENCES public.cm_email_addresses(id);


--
-- Name: cm_env_sources cm_env_sources_org_identity_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_env_sources
    ADD CONSTRAINT cm_env_sources_org_identity_source_id_fkey FOREIGN KEY (org_identity_source_id) REFERENCES public.cm_org_identity_sources(id);


--
-- Name: cm_history_records cm_history_records_actor_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_history_records
    ADD CONSTRAINT cm_history_records_actor_co_person_id_fkey FOREIGN KEY (actor_co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_history_records cm_history_records_co_email_list_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_history_records
    ADD CONSTRAINT cm_history_records_co_email_list_id_fkey FOREIGN KEY (co_email_list_id) REFERENCES public.cm_co_email_lists(id);


--
-- Name: cm_history_records cm_history_records_co_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_history_records
    ADD CONSTRAINT cm_history_records_co_group_id_fkey FOREIGN KEY (co_group_id) REFERENCES public.cm_co_groups(id);


--
-- Name: cm_history_records cm_history_records_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_history_records
    ADD CONSTRAINT cm_history_records_co_person_id_fkey FOREIGN KEY (co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_history_records cm_history_records_co_person_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_history_records
    ADD CONSTRAINT cm_history_records_co_person_role_id_fkey FOREIGN KEY (co_person_role_id) REFERENCES public.cm_co_person_roles(id);


--
-- Name: cm_history_records cm_history_records_co_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_history_records
    ADD CONSTRAINT cm_history_records_co_service_id_fkey FOREIGN KEY (co_service_id) REFERENCES public.cm_co_services(id);


--
-- Name: cm_history_records cm_history_records_history_record_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_history_records
    ADD CONSTRAINT cm_history_records_history_record_id_fkey FOREIGN KEY (history_record_id) REFERENCES public.cm_history_records(id);


--
-- Name: cm_history_records cm_history_records_org_identity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_history_records
    ADD CONSTRAINT cm_history_records_org_identity_id_fkey FOREIGN KEY (org_identity_id) REFERENCES public.cm_org_identities(id);


--
-- Name: cm_http_servers cm_http_servers_server_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_http_servers
    ADD CONSTRAINT cm_http_servers_server_id_fkey FOREIGN KEY (server_id) REFERENCES public.cm_servers(id);


--
-- Name: cm_identifiers cm_identifiers_co_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_identifiers
    ADD CONSTRAINT cm_identifiers_co_department_id_fkey FOREIGN KEY (co_department_id) REFERENCES public.cm_co_departments(id);


--
-- Name: cm_identifiers cm_identifiers_co_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_identifiers
    ADD CONSTRAINT cm_identifiers_co_group_id_fkey FOREIGN KEY (co_group_id) REFERENCES public.cm_co_groups(id);


--
-- Name: cm_identifiers cm_identifiers_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_identifiers
    ADD CONSTRAINT cm_identifiers_co_person_id_fkey FOREIGN KEY (co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_identifiers cm_identifiers_co_provisioning_target_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_identifiers
    ADD CONSTRAINT cm_identifiers_co_provisioning_target_id_fkey FOREIGN KEY (co_provisioning_target_id) REFERENCES public.cm_co_provisioning_targets(id);


--
-- Name: cm_identifiers cm_identifiers_identifier_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_identifiers
    ADD CONSTRAINT cm_identifiers_identifier_id_fkey FOREIGN KEY (identifier_id) REFERENCES public.cm_identifiers(id);


--
-- Name: cm_identifiers cm_identifiers_org_identity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_identifiers
    ADD CONSTRAINT cm_identifiers_org_identity_id_fkey FOREIGN KEY (org_identity_id) REFERENCES public.cm_org_identities(id);


--
-- Name: cm_identifiers cm_identifiers_organization_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_identifiers
    ADD CONSTRAINT cm_identifiers_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.cm_organizations(id);


--
-- Name: cm_identifiers cm_identifiers_source_identifier_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_identifiers
    ADD CONSTRAINT cm_identifiers_source_identifier_id_fkey FOREIGN KEY (source_identifier_id) REFERENCES public.cm_identifiers(id);


--
-- Name: cm_identity_documents cm_identity_documents_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_identity_documents
    ADD CONSTRAINT cm_identity_documents_co_person_id_fkey FOREIGN KEY (co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_identity_documents cm_identity_documents_identity_document_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_identity_documents
    ADD CONSTRAINT cm_identity_documents_identity_document_id_fkey FOREIGN KEY (identity_document_id) REFERENCES public.cm_identity_documents(id);


--
-- Name: cm_kafka_servers cm_kafka_servers_server_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_kafka_servers
    ADD CONSTRAINT cm_kafka_servers_server_id_fkey FOREIGN KEY (server_id) REFERENCES public.cm_servers(id);


--
-- Name: cm_ldap_servers cm_ldap_servers_server_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_ldap_servers
    ADD CONSTRAINT cm_ldap_servers_server_id_fkey FOREIGN KEY (server_id) REFERENCES public.cm_servers(id);


--
-- Name: cm_locks cm_locks_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_locks
    ADD CONSTRAINT cm_locks_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_match_server_attributes cm_match_server_attributes_match_server_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_match_server_attributes
    ADD CONSTRAINT cm_match_server_attributes_match_server_id_fkey FOREIGN KEY (match_server_id) REFERENCES public.cm_match_servers(id);


--
-- Name: cm_match_servers cm_match_servers_server_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_match_servers
    ADD CONSTRAINT cm_match_servers_server_id_fkey FOREIGN KEY (server_id) REFERENCES public.cm_servers(id);


--
-- Name: cm_names cm_names_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_names
    ADD CONSTRAINT cm_names_co_person_id_fkey FOREIGN KEY (co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_names cm_names_name_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_names
    ADD CONSTRAINT cm_names_name_id_fkey FOREIGN KEY (name_id) REFERENCES public.cm_names(id);


--
-- Name: cm_names cm_names_org_identity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_names
    ADD CONSTRAINT cm_names_org_identity_id_fkey FOREIGN KEY (org_identity_id) REFERENCES public.cm_org_identities(id);


--
-- Name: cm_names cm_names_source_name_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_names
    ADD CONSTRAINT cm_names_source_name_id_fkey FOREIGN KEY (source_name_id) REFERENCES public.cm_names(id);


--
-- Name: cm_oauth2_servers cm_oauth2_servers_server_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_oauth2_servers
    ADD CONSTRAINT cm_oauth2_servers_server_id_fkey FOREIGN KEY (server_id) REFERENCES public.cm_servers(id);


--
-- Name: cm_orcid_sources cm_orcid_sources_org_identity_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_orcid_sources
    ADD CONSTRAINT cm_orcid_sources_org_identity_source_id_fkey FOREIGN KEY (org_identity_source_id) REFERENCES public.cm_org_identity_sources(id);


--
-- Name: cm_orcid_sources cm_orcid_sources_server_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_orcid_sources
    ADD CONSTRAINT cm_orcid_sources_server_id_fkey FOREIGN KEY (server_id) REFERENCES public.cm_servers(id);


--
-- Name: cm_org_identities cm_org_identities_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_org_identities
    ADD CONSTRAINT cm_org_identities_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_org_identities cm_org_identities_org_identity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_org_identities
    ADD CONSTRAINT cm_org_identities_org_identity_id_fkey FOREIGN KEY (org_identity_id) REFERENCES public.cm_org_identities(id);


--
-- Name: cm_org_identity_source_records cm_org_identity_source_record_org_identity_source_record_i_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_org_identity_source_records
    ADD CONSTRAINT cm_org_identity_source_record_org_identity_source_record_i_fkey FOREIGN KEY (org_identity_source_record_id) REFERENCES public.cm_org_identity_source_records(id);


--
-- Name: cm_org_identity_source_records cm_org_identity_source_records_co_petition_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_org_identity_source_records
    ADD CONSTRAINT cm_org_identity_source_records_co_petition_id_fkey FOREIGN KEY (co_petition_id) REFERENCES public.cm_co_petitions(id);


--
-- Name: cm_org_identity_source_records cm_org_identity_source_records_org_identity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_org_identity_source_records
    ADD CONSTRAINT cm_org_identity_source_records_org_identity_id_fkey FOREIGN KEY (org_identity_id) REFERENCES public.cm_org_identities(id);


--
-- Name: cm_org_identity_source_records cm_org_identity_source_records_org_identity_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_org_identity_source_records
    ADD CONSTRAINT cm_org_identity_source_records_org_identity_source_id_fkey FOREIGN KEY (org_identity_source_id) REFERENCES public.cm_org_identity_sources(id);


--
-- Name: cm_org_identity_sources cm_org_identity_sources_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_org_identity_sources
    ADD CONSTRAINT cm_org_identity_sources_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_org_identity_sources cm_org_identity_sources_co_pipeline_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_org_identity_sources
    ADD CONSTRAINT cm_org_identity_sources_co_pipeline_id_fkey FOREIGN KEY (co_pipeline_id) REFERENCES public.cm_co_pipelines(id);


--
-- Name: cm_org_identity_sources cm_org_identity_sources_org_identity_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_org_identity_sources
    ADD CONSTRAINT cm_org_identity_sources_org_identity_source_id_fkey FOREIGN KEY (org_identity_source_id) REFERENCES public.cm_org_identity_sources(id);


--
-- Name: cm_organizations cm_organizations_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_organizations
    ADD CONSTRAINT cm_organizations_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_organizations cm_organizations_organization_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_organizations
    ADD CONSTRAINT cm_organizations_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.cm_organizations(id);


--
-- Name: cm_servers cm_servers_co_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_servers
    ADD CONSTRAINT cm_servers_co_id_fkey FOREIGN KEY (co_id) REFERENCES public.cm_cos(id);


--
-- Name: cm_sql_servers cm_sql_servers_server_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_sql_servers
    ADD CONSTRAINT cm_sql_servers_server_id_fkey FOREIGN KEY (server_id) REFERENCES public.cm_servers(id);


--
-- Name: cm_ssh_key_authenticators cm_ssh_key_authenticators_authenticator_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_ssh_key_authenticators
    ADD CONSTRAINT cm_ssh_key_authenticators_authenticator_id_fkey FOREIGN KEY (authenticator_id) REFERENCES public.cm_authenticators(id);


--
-- Name: cm_ssh_keys cm_ssh_keys_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_ssh_keys
    ADD CONSTRAINT cm_ssh_keys_co_person_id_fkey FOREIGN KEY (co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_ssh_keys cm_ssh_keys_ssh_key_authenticator_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_ssh_keys
    ADD CONSTRAINT cm_ssh_keys_ssh_key_authenticator_id_fkey FOREIGN KEY (ssh_key_authenticator_id) REFERENCES public.cm_ssh_key_authenticators(id);


--
-- Name: cm_ssh_keys cm_ssh_keys_ssh_key_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_ssh_keys
    ADD CONSTRAINT cm_ssh_keys_ssh_key_id_fkey FOREIGN KEY (ssh_key_id) REFERENCES public.cm_ssh_keys(id);


--
-- Name: cm_telephone_numbers cm_telephone_numbers_co_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_telephone_numbers
    ADD CONSTRAINT cm_telephone_numbers_co_department_id_fkey FOREIGN KEY (co_department_id) REFERENCES public.cm_co_departments(id);


--
-- Name: cm_telephone_numbers cm_telephone_numbers_co_person_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_telephone_numbers
    ADD CONSTRAINT cm_telephone_numbers_co_person_role_id_fkey FOREIGN KEY (co_person_role_id) REFERENCES public.cm_co_person_roles(id);


--
-- Name: cm_telephone_numbers cm_telephone_numbers_org_identity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_telephone_numbers
    ADD CONSTRAINT cm_telephone_numbers_org_identity_id_fkey FOREIGN KEY (org_identity_id) REFERENCES public.cm_org_identities(id);


--
-- Name: cm_telephone_numbers cm_telephone_numbers_organization_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_telephone_numbers
    ADD CONSTRAINT cm_telephone_numbers_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.cm_organizations(id);


--
-- Name: cm_telephone_numbers cm_telephone_numbers_source_telephone_number_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_telephone_numbers
    ADD CONSTRAINT cm_telephone_numbers_source_telephone_number_id_fkey FOREIGN KEY (source_telephone_number_id) REFERENCES public.cm_telephone_numbers(id);


--
-- Name: cm_telephone_numbers cm_telephone_numbers_telephone_number_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_telephone_numbers
    ADD CONSTRAINT cm_telephone_numbers_telephone_number_id_fkey FOREIGN KEY (telephone_number_id) REFERENCES public.cm_telephone_numbers(id);


--
-- Name: cm_urls cm_urls_co_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_urls
    ADD CONSTRAINT cm_urls_co_department_id_fkey FOREIGN KEY (co_department_id) REFERENCES public.cm_co_departments(id);


--
-- Name: cm_urls cm_urls_co_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_urls
    ADD CONSTRAINT cm_urls_co_person_id_fkey FOREIGN KEY (co_person_id) REFERENCES public.cm_co_people(id);


--
-- Name: cm_urls cm_urls_org_identity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_urls
    ADD CONSTRAINT cm_urls_org_identity_id_fkey FOREIGN KEY (org_identity_id) REFERENCES public.cm_org_identities(id);


--
-- Name: cm_urls cm_urls_organization_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_urls
    ADD CONSTRAINT cm_urls_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.cm_organizations(id);


--
-- Name: cm_urls cm_urls_source_url_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_urls
    ADD CONSTRAINT cm_urls_source_url_id_fkey FOREIGN KEY (source_url_id) REFERENCES public.cm_urls(id);


--
-- Name: cm_urls cm_urls_url_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: registry_user
--

ALTER TABLE ONLY public.cm_urls
    ADD CONSTRAINT cm_urls_url_id_fkey FOREIGN KEY (url_id) REFERENCES public.cm_urls(id);


--
-- PostgreSQL database dump complete
--

