USE grouper_to_midpoint;
CREATE TABLE gr_mp_groups (
          group_name varchar(1024) DEFAULT NULL,
          id_index bigint NOT NULL,
          display_name varchar(1024) DEFAULT NULL,
          description varchar(1024) DEFAULT NULL,
          last_modified bigint NOT NULL,
          deleted varchar(1) NOT NULL,
          PRIMARY KEY (id_index),
          UNIQUE KEY gr_mp_groups_ldx (last_modified),
          UNIQUE KEY gr_mp_groups_idx (id_index),
          KEY gr_mp_groups_ddx (display_name(255)),
          KEY gr_mp_groups_gdx (group_name(255))
);
 
CREATE TABLE gr_mp_group_attributes (
          group_id_index bigint NOT NULL,
          attribute_name varchar(1000) NOT NULL,
          attribute_value varchar(4000) DEFAULT NULL,
          last_modified bigint NOT NULL,
          deleted varchar(1) NOT NULL,
          UNIQUE KEY gr_mp_group_attributes_ldx (last_modified),
          UNIQUE KEY gr_mp_group_attributes_idx (group_id_index,attribute_name(100),attribute_value(155)),
          CONSTRAINT gr_mp_group_attributes_fk FOREIGN KEY (group_id_index) REFERENCES gr_mp_groups (id_index)
);
 
CREATE TABLE gr_mp_subjects (
          subject_id_index bigint NOT NULL,
          subject_id varchar(1024) DEFAULT NULL,
          last_modified bigint NOT NULL,
          deleted varchar(1) NOT NULL,
          PRIMARY KEY (subject_id_index),
          UNIQUE KEY gr_mp_subjects_ldx (last_modified),
          UNIQUE KEY gr_mp_subjects_idx (subject_id_index),
          KEY gr_mp_subjects_sdx (subject_id(255))
);
 
CREATE TABLE gr_mp_subject_attributes (
          subject_id_index bigint NOT NULL,
          attribute_name varchar(1000) NOT NULL,
          attribute_value varchar(4000) DEFAULT NULL,
          last_modified bigint NOT NULL,
          deleted varchar(1) NOT NULL,
          UNIQUE KEY gr_mp_subject_attributes_ldx (last_modified),
          UNIQUE KEY gr_mp_subject_attributes_idx (subject_id_index,attribute_name(100),attribute_value(155)),
          CONSTRAINT gr_mp_subject_attributes_fk FOREIGN KEY (subject_id_index) REFERENCES gr_mp_subjects (subject_id_index)
);
 
CREATE TABLE gr_mp_memberships (
          group_id_index bigint NOT NULL,
          subject_id_index bigint NOT NULL,
          last_modified bigint NOT NULL,
          deleted varchar(1) NOT NULL,
          UNIQUE KEY gr_mp_memberships_ldx (last_modified),
          UNIQUE KEY gr_mp_memberships_idx (group_id_index,subject_id_index),
          KEY gr_mp_memberships_sfk (subject_id_index),
          CONSTRAINT gr_mp_memberships_gfk FOREIGN KEY (group_id_index) REFERENCES gr_mp_groups (id_index),
          CONSTRAINT gr_mp_memberships_sfk FOREIGN KEY (subject_id_index) REFERENCES gr_mp_subjects (subject_id_index)
);

