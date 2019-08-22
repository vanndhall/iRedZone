CREATE TABLE case (
                      case_id                   INTEGER NOT NULL,
                      case_number               VARCHAR2(50),
                      case_description          VARCHAR2(50),
                      case_category             INTEGER,
                      case_status               INTEGER,
                      case_type                 INTEGER,
                      case_crated_on            VARCHAR2(50),
                      case_handled_on           VARCHAR2(50),
                      case_handled_by_user_id   INTEGER NOT NULL,
                      location_location_id      INTEGER NOT NULL,
                      product_produkt_id        INTEGER NOT NULL
)
    LOGGING;

ALTER TABLE case ADD CONSTRAINT case_pk PRIMARY KEY ( case_id );

CREATE TABLE company (
                         company_id         INTEGER NOT NULL,
                         company_name       VARCHAR2(50),
                         company_street     VARCHAR2(50),
                         company_country    VARCHAR2(50),
                         company_postcode   VARCHAR2(50)
)

    logging;

ALTER TABLE company ADD CONSTRAINT address_pk PRIMARY KEY ( company_id );

CREATE TABLE document (
                          document_id           INTEGER NOT NULL,
                          document_number       INTEGER,
                          document_type         INTEGER,
                          document_created_by   INTEGER,
                          document_created_on   TIMESTAMP
)

    logging;

ALTER TABLE document ADD CONSTRAINT document_pk PRIMARY KEY ( document_id );

CREATE TABLE location (
                          location_id              INTEGER NOT NULL,
                          location_bin             VARCHAR2(50),
                          location_type            VARCHAR2(50),
                          location_status          NUMBER,
                          case_case_id             INTEGER NOT NULL,
                          warehouse_warehouse_id   INTEGER NOT NULL
)

    logging;

ALTER TABLE location ADD CONSTRAINT locations_pk PRIMARY KEY ( location_id );

CREATE TABLE product (
                         produkt_id            INTEGER NOT NULL,
                         product_name          VARCHAR2(50),
                         product_description   VARCHAR2(50),
                         product_status        NUMBER,
                         product_type          VARCHAR2(50),
                         case_case_id          INTEGER NOT NULL
)

    logging;

ALTER TABLE product ADD CONSTRAINT product_pk PRIMARY KEY ( produkt_id );

CREATE TABLE transaction (
                             transaction_id            INTEGER NOT NULL,
                             transaction_number        INTEGER,
                             transaction_created_on    TIMESTAMP,
                             transaction_createed_by   INTEGER,
                             transaction_document      INTEGER NOT NULL,
                             transaction_status        NUMBER,
                             user_user_id              INTEGER NOT NULL
)

    logging;

ALTER TABLE transaction ADD CONSTRAINT transaction_pk PRIMARY KEY ( transaction_id );

CREATE TABLE "USER" (
                        user_id              INTEGER NOT NULL,
                        user_name            VARCHAR2(50),
                        user_surname         VARCHAR2(50),
                        user_login           VARCHAR2(50),
                        user_password        VARCHAR2(100),
                        user_status          INTEGER,
                        user_email           VARCHAR2(50),
                        user_phone           INTEGER,
                        company_company_id   INTEGER NOT NULL,
                        case_case_id         INTEGER NOT NULL
)

    logging;

ALTER TABLE "USER" ADD CONSTRAINT user_pk PRIMARY KEY ( user_id );

CREATE TABLE warehouse (
                           warehouse_id         INTEGER NOT NULL,
                           warehouse_name       unknown
--  ERROR: Datatype UNKNOWN is not allowed
    ,
                           warehouse_category   INTEGER,
                           company_company_id   INTEGER NOT NULL
)

    logging;

ALTER TABLE warehouse ADD CONSTRAINT warehouse_pk PRIMARY KEY ( warehouse_id );

ALTER TABLE case
    ADD CONSTRAINT case_location_fk FOREIGN KEY ( location_location_id )
        REFERENCES location ( location_id )
    NOT DEFERRABLE;

ALTER TABLE case
    ADD CONSTRAINT case_product_fk FOREIGN KEY ( product_produkt_id )
        REFERENCES product ( produkt_id )
    NOT DEFERRABLE;

ALTER TABLE case
    ADD CONSTRAINT case_user_fk FOREIGN KEY ( case_handled_by_user_id )
        REFERENCES "USER" ( user_id )
    NOT DEFERRABLE;

ALTER TABLE location
    ADD CONSTRAINT location_case_fk FOREIGN KEY ( case_case_id )
        REFERENCES case ( case_id )
    NOT DEFERRABLE;

ALTER TABLE location
    ADD CONSTRAINT location_warehouse_fk FOREIGN KEY ( warehouse_warehouse_id )
        REFERENCES warehouse ( warehouse_id )
    NOT DEFERRABLE;

ALTER TABLE product
    ADD CONSTRAINT product_case_fk FOREIGN KEY ( case_case_id )
        REFERENCES case ( case_id )
    NOT DEFERRABLE;

ALTER TABLE transaction
    ADD CONSTRAINT transaction_document FOREIGN KEY ( transaction_document )
        REFERENCES document ( document_id )
    NOT DEFERRABLE;

ALTER TABLE transaction
    ADD CONSTRAINT transaction_user_fk FOREIGN KEY ( user_user_id )
        REFERENCES "USER" ( user_id )
    NOT DEFERRABLE;

ALTER TABLE "USER"
    ADD CONSTRAINT user_case_fk FOREIGN KEY ( case_case_id )
        REFERENCES case ( case_id )
    NOT DEFERRABLE;

ALTER TABLE "USER"
    ADD CONSTRAINT user_company_fk FOREIGN KEY ( company_company_id )
        REFERENCES company ( company_id )
    NOT DEFERRABLE;

ALTER TABLE warehouse
    ADD CONSTRAINT warehouse_company_fk FOREIGN KEY ( company_company_id )
        REFERENCES company ( company_id )
    NOT DEFERRABLE;