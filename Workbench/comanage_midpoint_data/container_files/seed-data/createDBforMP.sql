CREATE DATABASE grouper_to_midpoint WITH ENCODING=utf8;
CREATE USER grouper WITH PASSWORD 'password';
GRANT ALL PRIVILEGES ON DATABASE grouper_to_midpoint TO grouper;

\connect grouper_to_midpoint;
set role grouper;

CREATE TABLE gr_mp_groups (
    group_name varchar(1024) NULL, -- Name of group mapped in some way
    id_index int8 NOT NULL, -- This is the integer identifier for a group and foreign key to group attributes and memberships
    display_name varchar(1024) NULL, -- Display name of group mapped in some way
    description varchar(1024) NULL, -- Description of group mapped in some way
    last_modified int8 NOT NULL, -- Millis since 1970, will be sequential and unique
    deleted varchar(1) NOT NULL, -- T or F.  Deleted rows will be removed after they have had time to be processed
    CONSTRAINT gr_mp_groups_pkey PRIMARY KEY (id_index)
);
CREATE INDEX gr_mp_groups_ddx ON gr_mp_groups(display_name);
CREATE INDEX gr_mp_groups_gdx ON gr_mp_groups(group_name);
CREATE UNIQUE INDEX gr_mp_groups_idx ON gr_mp_groups(id_index);
CREATE UNIQUE INDEX gr_mp_groups_ldx ON gr_mp_groups(last_modified);
COMMENT ON TABLE gr_mp_groups IS 'This table holds groups';
 
COMMENT ON COLUMN gr_mp_groups.group_name IS 'Name of group mapped in some way';
COMMENT ON COLUMN gr_mp_groups.id_index IS 'This is the integer identifier for a group and foreign key to group attributes and memberships';
COMMENT ON COLUMN gr_mp_groups.display_name IS 'Display name of group mapped in some way';
COMMENT ON COLUMN gr_mp_groups.description IS 'Description of group mapped in some way';
COMMENT ON COLUMN gr_mp_groups.last_modified IS 'Millis since 1970, will be sequential and unique';
COMMENT ON COLUMN gr_mp_groups.deleted IS 'T or F.  Deleted rows will be removed after they have had time to be processed';
 
CREATE TABLE gr_mp_subjects (
    subject_id_index int8 NOT NULL, -- This is the integer identifier for a subject and foreign key to subject attributes and memberships
    subject_id varchar(1024) NULL, -- Subject ID mapped in some way
    last_modified int8 NOT NULL, -- Millis since 1970, will be sequential and unique
    deleted varchar(1) NOT NULL, -- T or F.  Deleted rows will be removed after they have had time to be processed
    CONSTRAINT gr_mp_subjects_pkey PRIMARY KEY (subject_id_index)
);
CREATE UNIQUE INDEX gr_mp_subjects_idx ON gr_mp_subjects(subject_id_index);
CREATE UNIQUE INDEX gr_mp_subjects_ldx ON gr_mp_subjects(last_modified);
CREATE INDEX gr_mp_subjects_sdx ON gr_mp_subjects(subject_id);
COMMENT ON TABLE gr_mp_subjects IS 'This table holds subjects';
 
COMMENT ON COLUMN gr_mp_subjects.subject_id_index IS 'This is the integer identifier for a subject and foreign key to subject attributes and memberships';
COMMENT ON COLUMN gr_mp_subjects.subject_id IS 'Subject ID mapped in some way';
COMMENT ON COLUMN gr_mp_subjects.last_modified IS 'Millis since 1970, will be sequential and unique';
COMMENT ON COLUMN gr_mp_subjects.deleted IS 'T or F.  Deleted rows will be removed after they have had time to be processed';
 
CREATE TABLE gr_mp_group_attributes (
    group_id_index int8 NOT NULL, -- This is the integer identifier for a group and foreign key to groups and memberships
    attribute_name varchar(1000) NOT NULL, -- Attribute name for attributes not in the main group table
    attribute_value varchar(4000) NULL, -- Attribute value could be null
    last_modified int8 NOT NULL, -- Millis since 1970, will be sequential and unique
    deleted varchar(1) NOT NULL, -- T or F.  Deleted rows will be removed after they have had time to be processed
    CONSTRAINT gr_mp_group_attributes_fk FOREIGN KEY (group_id_index) REFERENCES gr_mp_groups(id_index)
);
CREATE UNIQUE INDEX gr_mp_group_attributes_idx ON gr_mp_group_attributes(group_id_index, attribute_name, attribute_value);
CREATE UNIQUE INDEX gr_mp_group_attributes_ldx ON gr_mp_group_attributes(last_modified);
COMMENT ON TABLE gr_mp_group_attributes IS 'This table holds group attributes which are one to one or one to many to the groups table';
 
COMMENT ON COLUMN gr_mp_group_attributes.group_id_index IS 'This is the integer identifier for a group and foreign key to groups and memberships';
COMMENT ON COLUMN gr_mp_group_attributes.attribute_name IS 'Attribute name for attributes not in the main group table';
COMMENT ON COLUMN gr_mp_group_attributes.attribute_value IS 'Attribute value could be null';
COMMENT ON COLUMN gr_mp_group_attributes.last_modified IS 'Millis since 1970, will be sequential and unique';
COMMENT ON COLUMN gr_mp_group_attributes.deleted IS 'T or F.  Deleted rows will be removed after they have had time to be processed';
 
CREATE TABLE gr_mp_memberships (
    group_id_index int8 NOT NULL, -- This is the foreign key to groups
    subject_id_index int8 NOT NULL, -- This is the foreign key to subjects
    last_modified int8 NOT NULL, -- Millis since 1970, will be sequential and unique
    deleted varchar(1) NOT NULL, -- T or F.  Deleted rows will be removed after they have had time to be processed
    CONSTRAINT gr_mp_memberships_gfk FOREIGN KEY (group_id_index) REFERENCES gr_mp_groups(id_index),
    CONSTRAINT gr_mp_memberships_sfk FOREIGN KEY (subject_id_index) REFERENCES gr_mp_subjects(subject_id_index)
);
CREATE UNIQUE INDEX gr_mp_memberships_idx ON gr_mp_memberships(group_id_index, subject_id_index);
CREATE UNIQUE INDEX gr_mp_memberships_ldx ON gr_mp_memberships(last_modified);
COMMENT ON TABLE gr_mp_memberships IS 'This table holds memberships.  The primary key is group_id_index and subject_id_index';
 
COMMENT ON COLUMN gr_mp_memberships.group_id_index IS 'This is the foreign key to groups';
COMMENT ON COLUMN gr_mp_memberships.subject_id_index IS 'This is the foreign key to subjects';
COMMENT ON COLUMN gr_mp_memberships.last_modified IS 'Millis since 1970, will be sequential and unique';
COMMENT ON COLUMN gr_mp_memberships.deleted IS 'T or F.  Deleted rows will be removed after they have had time to be processed';
 
CREATE TABLE gr_mp_subject_attributes (
    subject_id_index int8 NOT NULL, -- This is the integer identifier and foreign key to subjects
    attribute_name varchar(1000) NOT NULL, -- Attribute name for attributes not in the main subject table
    attribute_value varchar(4000) NULL, -- Attribute value could be null
    last_modified int8 NOT NULL, -- Millis since 1970, will be sequential and unique
    deleted varchar(1) NOT NULL, -- T or F.  Deleted rows will be removed after they have had time to be processed
    CONSTRAINT gr_mp_subject_attributes_fk FOREIGN KEY (subject_id_index) REFERENCES gr_mp_subjects(subject_id_index)
);
CREATE UNIQUE INDEX gr_mp_subject_attributes_idx ON gr_mp_subject_attributes(subject_id_index, attribute_name, attribute_value);
CREATE UNIQUE INDEX gr_mp_subject_attributes_ldx ON gr_mp_subject_attributes(last_modified);
COMMENT ON TABLE gr_mp_subject_attributes IS 'This table holds subject attributes which are one to one or one to many to the subjects table';
 
COMMENT ON COLUMN gr_mp_subject_attributes.subject_id_index IS 'This is the integer identifier and foreign key to subjects';
COMMENT ON COLUMN gr_mp_subject_attributes.attribute_name IS 'Attribute name for attributes not in the main subject table';
COMMENT ON COLUMN gr_mp_subject_attributes.attribute_value IS 'Attribute value could be null';
COMMENT ON COLUMN gr_mp_subject_attributes.last_modified IS 'Millis since 1970, will be sequential and unique';
COMMENT ON COLUMN gr_mp_subject_attributes.deleted IS 'T or F.  Deleted rows will be removed after they have had time to be processed';

