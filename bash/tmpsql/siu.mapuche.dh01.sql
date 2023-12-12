--
-- PostgreSQL database dump
--

-- Dumped from database version 11.10 (Debian 11.10-1.pgdg100+1)
-- Dumped by pg_dump version 15.4 (Ubuntu 15.4-1ubuntu1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

--
-- Name: dh01; Type: TABLE; Schema: mapuche; Owner: postgres
--

CREATE TABLE mapuche.dh01 (
    nro_legaj integer NOT NULL,
    desc_appat character(20),
    desc_apmat character(20),
    desc_apcas character(20),
    desc_nombr character(20),
    nro_tabla integer,
    tipo_docum character(4),
    nro_docum integer,
    nro_cuil1 integer,
    nro_cuil integer,
    nro_cuil2 integer,
    tipo_sexo character(1),
    fec_nacim date,
    tipo_facto character(2),
    tipo_rh character(1),
    nro_ficha integer,
    tipo_estad character(1),
    nombrelugarnac character varying(60),
    periodoalta integer,
    anioalta integer,
    periodoactualizacion integer,
    anioactualizacion integer,
    pcia_nacim character(1),
    pais_nacim character(2)
);


ALTER TABLE mapuche.dh01 OWNER TO postgres;

--
-- Name: TABLE dh01; Type: COMMENT; Schema: mapuche; Owner: postgres
--

COMMENT ON TABLE mapuche.dh01 IS '(D) Datos Personales de Empleados';


--
-- Name: COLUMN dh01.nro_legaj; Type: COMMENT; Schema: mapuche; Owner: postgres
--

COMMENT ON COLUMN mapuche.dh01.nro_legaj IS 'Número de legajo';


--
-- Name: COLUMN dh01.desc_appat; Type: COMMENT; Schema: mapuche; Owner: postgres
--

COMMENT ON COLUMN mapuche.dh01.desc_appat IS 'Apellido del empleado';


--
-- Name: COLUMN dh01.desc_apmat; Type: COMMENT; Schema: mapuche; Owner: postgres
--

COMMENT ON COLUMN mapuche.dh01.desc_apmat IS 'Apellido materno del empleado';


--
-- Name: COLUMN dh01.desc_apcas; Type: COMMENT; Schema: mapuche; Owner: postgres
--

COMMENT ON COLUMN mapuche.dh01.desc_apcas IS 'Apellido de casada/o del empleado';


--
-- Name: COLUMN dh01.desc_nombr; Type: COMMENT; Schema: mapuche; Owner: postgres
--

COMMENT ON COLUMN mapuche.dh01.desc_nombr IS 'Nombres del empleado';


--
-- Name: COLUMN dh01.nro_tabla; Type: COMMENT; Schema: mapuche; Owner: postgres
--

COMMENT ON COLUMN mapuche.dh01.nro_tabla IS 'Referencia a dh30';


--
-- Name: COLUMN dh01.tipo_docum; Type: COMMENT; Schema: mapuche; Owner: postgres
--

COMMENT ON COLUMN mapuche.dh01.tipo_docum IS 'Tipo de documento';


--
-- Name: COLUMN dh01.nro_docum; Type: COMMENT; Schema: mapuche; Owner: postgres
--

COMMENT ON COLUMN mapuche.dh01.nro_docum IS 'Número de documento';


--
-- Name: COLUMN dh01.nro_cuil1; Type: COMMENT; Schema: mapuche; Owner: postgres
--

COMMENT ON COLUMN mapuche.dh01.nro_cuil1 IS 'Número del CUIL';


--
-- Name: COLUMN dh01.nro_cuil; Type: COMMENT; Schema: mapuche; Owner: postgres
--

COMMENT ON COLUMN mapuche.dh01.nro_cuil IS 'Número del CUIL';


--
-- Name: COLUMN dh01.nro_cuil2; Type: COMMENT; Schema: mapuche; Owner: postgres
--

COMMENT ON COLUMN mapuche.dh01.nro_cuil2 IS 'Número del CUIL';


--
-- Name: COLUMN dh01.tipo_sexo; Type: COMMENT; Schema: mapuche; Owner: postgres
--

COMMENT ON COLUMN mapuche.dh01.tipo_sexo IS 'Sexo Masculino (M), Femenino (F)';


--
-- Name: COLUMN dh01.fec_nacim; Type: COMMENT; Schema: mapuche; Owner: postgres
--

COMMENT ON COLUMN mapuche.dh01.fec_nacim IS 'Fecha de nacimiento';


--
-- Name: COLUMN dh01.tipo_facto; Type: COMMENT; Schema: mapuche; Owner: postgres
--

COMMENT ON COLUMN mapuche.dh01.tipo_facto IS 'Factor sanguíneo';


--
-- Name: COLUMN dh01.tipo_rh; Type: COMMENT; Schema: mapuche; Owner: postgres
--

COMMENT ON COLUMN mapuche.dh01.tipo_rh IS 'RH';


--
-- Name: COLUMN dh01.nro_ficha; Type: COMMENT; Schema: mapuche; Owner: postgres
--

COMMENT ON COLUMN mapuche.dh01.nro_ficha IS 'Número de ficha';


--
-- Name: COLUMN dh01.tipo_estad; Type: COMMENT; Schema: mapuche; Owner: postgres
--

COMMENT ON COLUMN mapuche.dh01.tipo_estad IS 'Estado Activo (A), Pasivo (P), Jubilado (J)';


--
-- Name: COLUMN dh01.nombrelugarnac; Type: COMMENT; Schema: mapuche; Owner: postgres
--

COMMENT ON COLUMN mapuche.dh01.nombrelugarnac IS 'Lugar de nacimiento';


--
-- Name: COLUMN dh01.periodoalta; Type: COMMENT; Schema: mapuche; Owner: postgres
--

COMMENT ON COLUMN mapuche.dh01.periodoalta IS 'Mes alta';


--
-- Name: COLUMN dh01.anioalta; Type: COMMENT; Schema: mapuche; Owner: postgres
--

COMMENT ON COLUMN mapuche.dh01.anioalta IS 'Año alta';


--
-- Name: COLUMN dh01.periodoactualizacion; Type: COMMENT; Schema: mapuche; Owner: postgres
--

COMMENT ON COLUMN mapuche.dh01.periodoactualizacion IS 'Mes última actualización';


--
-- Name: COLUMN dh01.anioactualizacion; Type: COMMENT; Schema: mapuche; Owner: postgres
--

COMMENT ON COLUMN mapuche.dh01.anioactualizacion IS 'Año última actualización';


--
-- Name: COLUMN dh01.pcia_nacim; Type: COMMENT; Schema: mapuche; Owner: postgres
--

COMMENT ON COLUMN mapuche.dh01.pcia_nacim IS 'Código provincia de nacimiento';


--
-- Name: COLUMN dh01.pais_nacim; Type: COMMENT; Schema: mapuche; Owner: postgres
--

COMMENT ON COLUMN mapuche.dh01.pais_nacim IS 'Código país de nacimiento';


--
-- Data for Name: dh01; Type: TABLE DATA; Schema: mapuche; Owner: postgres
--

COPY mapuche.dh01 (nro_legaj, desc_appat, desc_apmat, desc_apcas, desc_nombr, nro_tabla, tipo_docum, nro_docum, nro_cuil1, nro_cuil, nro_cuil2, tipo_sexo, fec_nacim, tipo_facto, tipo_rh, nro_ficha, tipo_estad, nombrelugarnac, periodoalta, anioalta, periodoactualizacion, anioactualizacion, pcia_nacim, pais_nacim) FROM stdin;
31	AGUIRRE             	\N	                    	Irene Mercedes      	\N	DNI 	3874604	27	3874604	4	F	1940-06-03	\N	\N	31	A	Capital Federal	6	2011	9	2011	C	AR
29	ARTEAGA             	ARMANINI            	                    	Agustina            	\N	DNI 	36374686	27	36374686	7	F	1992-03-02	\N	\N	29	P	Quilmes	6	2011	10	2012	B	AR
33	BACALUZZO           	OJEDA               	                    	Gabriela Rosa       	\N	DNI 	16531324	27	16531324	6	F	1963-07-25	\N	\N	33	A	Paraná	6	2011	4	2013	E	AR
11	MINOLI              	BALLESTEROS         	                    	Nora Marcela        	\N	DNI 	18179163	27	18179163	8	F	1967-02-04	\N	\N	11	A	LANUS	2	2011	11	2018	B	AR
13	GIANDANA            	\N	                    	Raúl Darío          	\N	DNI 	16596343	20	16596343	2	M	1964-01-22	\N	\N	13	P	CAPITAL FEDERAL	2	2011	8	2014	C	AR
47	CASTRO              	\N	                    	Damian Gustavo      	\N	DNI 	21151865	20	21151865	1	M	1969-11-30	\N	\N	47	A	Capital Federal	6	2011	1	2017	C	AR
25	ALZUGARAY           	\N	                    	Sergio Raul         	\N	DNI 	20364412	20	20364412	5	M	1968-06-19	\N	\N	25	A	Don Bosco, Quilmes	6	2011	2	2017	B	AR
5	ELSEGOOD            	\N	                    	Liliana Mercedes    	\N	DNI 	14446700	27	14446700	6	F	1961-03-07	\N	\N	5	A	WILDE	2	2011	4	2017	B	AR
10	TARRICO             	\N	                    	Jorgelina Mariela   	\N	DNI 	26398478	27	26398478	7	F	1978-01-18	\N	\N	10	A	\N	2	2011	4	2017	\N	AR
48	CASTRO              	\N	                    	Jorge Orlando       	\N	DNI 	16223160	20	16223160	0	M	1962-12-20	\N	\N	48	P	La Plata	6	2011	12	2017	B	AR
38	BARRIENTOS HEIS     	HEIS                	                    	Cristian David      	\N	DNI 	34517623	20	34517623	4	M	1989-07-25	\N	\N	38	A	Sarandí	6	2011	3	2019	B	AR
19	HERMIDA             	BONELLI             	                    	Paula               	\N	DNI 	29462271	27	29462271	9	F	1982-05-13	\N	\N	19	A	ADROGUE	3	2011	3	2019	B	AR
2	DOMENCH             	\N	                    	Patricia Maria      	\N	DNI 	16388464	27	16388464	5	F	1964-01-09	\N	\N	2	A	FERRE	1	2011	3	2019	B	AR
40	BENITEZ             	\N	                    	Silvio Daniel       	\N	DNI 	22167414	20	22167414	7	M	1971-05-17	\N	\N	40	A	Capital Federal	6	2011	3	2019	C	AR
27	ARAMBURU            	SOTO                	                    	Hugo Oscar          	\N	DNI 	16760583	20	16760583	5	M	1964-01-16	\N	\N	27	A	La Plata	6	2011	2	2020	B	AR
39	BEJARANO            	\N	                    	Nancy Iris          	\N	DNI 	16794421	27	16794421	9	F	1963-07-08	\N	\N	39	A	Quilmes	6	2011	2	2020	B	AR
56	FERRERO             	STANGLINO           	                    	Marcelo Alfredo     	\N	DNI 	13963952	23	13963952	9	M	1960-04-10	\N	\N	56	A	Córdoba	6	2011	2	2020	X	AR
81	JACOBY              	FELDMAN             	                    	Ludovico Alejandro  	\N	DNI 	12789952	20	12789952	6	M	1959-04-15	\N	\N	81	A	Capital Federal	6	2011	2	2020	C	AR
14	PIATTELLI           	\N	                    	Lucrecia Fulvia     	\N	DNI 	22847881	23	22847881	4	F	1972-07-20	\N	\N	14	A	CAPITAL FEDERAL	2	2011	2	2020	C	AR
37	BARRIENTOS          	\N	                    	David Roberto       	\N	DNI 	18356895	20	18356895	8	M	1967-09-29	\N	\N	37	A	Avellaneda	6	2011	12	2020	B	AR
12	REGALADO            	RODRIGUEZ           	                    	Juan Pablo          	\N	DNI 	25554902	20	25554902	3	M	1976-08-05	\N	\N	12	A	Quilmes	2	2011	12	2020	B	AR
20	ALONSO              	GOROSITO            	                    	Alejandra Marcela   	\N	DNI 	25130690	27	25130690	2	F	1976-03-03	\N	\N	20	A	Capital Federal	5	2011	12	2020	C	AR
35	BACALUZZO           	OJEDA               	                    	Graciela Maria del H	\N	DNI 	13043440	27	13043440	7	F	1959-05-01	\N	\N	35	A	Paraná	6	2011	7	2021	E	AR
23	ALTUZARRA           	PIZARRO             	                    	Mariana del Carmen  	\N	DNI 	25671172	27	25671172	4	F	1977-02-16	\N	\N	23	A	Florencio Varela	6	2011	3	2022	B	AR
6	SERRA               	\N	                    	Ricardo Alberto     	\N	DNI 	10242692	20	10242692	5	M	1952-08-30	\N	\N	6	A	ARMSTRONG	2	2011	3	2022	S	AR
54	DASSO               	VUOTTO              	                    	Gabriela Virginia   	\N	DNI 	23337174	27	23337174	8	F	1973-05-07	\N	\N	54	A	Don Bosco, Quilmes	6	2011	3	2022	B	AR
80	IANNUZZI            	GRABOWSKI           	                    	Georgina            	\N	DNI 	27738754	27	27738754	4	F	1979-12-07	\N	\N	80	A	Avellaneda	6	2011	3	2022	B	AR
36	BAMONTE             	\N	                    	Luis Angel          	\N	DNI 	18041539	20	18041539	5	M	1966-08-26	\N	\N	36	P	Capital Federal	6	2011	4	2022	C	AR
15	RIOS                	\N	                    	Daniel Ramon        	\N	DNI 	8626561	20	8626561	4	M	1951-07-21	\N	\N	15	J	FORMOSA	3	2011	5	2022	P	AR
58	ESPOSITO            	\N	                    	Karina Mariana      	\N	DNI 	22251070	27	22251070	3	F	1971-08-25	\N	\N	58	A	Avellaneda	6	2011	4	2013	B	AR
51	CORTE               	\N	                    	Federico Víctor     	\N	DNI 	17199719	20	17199719	5	M	1964-12-09	\N	\N	51	A	Capital Federal	6	2011	4	2013	C	AR
18	DE LA CAMARA        	FUSTER              	                    	Juan Alberto        	\N	DNI 	7651168	20	7651168	4	M	1949-01-13	\N	\N	18	P	CAPITAL FEDERAL	3	2011	2	2023	C	AR
28	ARCE                	\N	                    	Claudio Eliseo      	\N	DNI 	14701608	20	14701608	6	M	1962-02-05	\N	\N	28	P	Capital Federal	6	2011	2	2023	C	AR
30	ARTEAGA             	BUFFONE             	                    	Marisa Alejandra    	\N	DNI 	16899975	27	16899975	0	F	1964-09-10	\N	\N	30	P	Capital Federal	6	2011	2	2023	C	AR
34	BARNAU              	\N	                    	Marisol             	\N	DNI 	17103774	27	17103774	9	F	1964-10-19	\N	\N	34	P	Lomas de Zamora	6	2011	2	2023	B	AR
45	CASADO              	ARANDA              	                    	Claudia Beatriz     	\N	DNI 	24662055	27	24662055	0	F	1975-05-06	\N	\N	45	P	Capital Federal	6	2011	2	2023	C	AR
59	DIGIACOMO           	GORZA               	                    	Nancy Laura Yolanda 	\N	DNI 	18004732	27	18004732	3	F	1966-09-10	\N	\N	59	P	Wilde	6	2011	2	2023	B	AR
70	GREGUI              	THESZ               	                    	Pablo               	\N	DNI 	24867209	23	24867209	9	M	1975-10-02	\N	\N	70	P	Capital Federal	6	2011	2	2023	C	AR
433	CARBAJAL            	MASCARETTI          	                    	Florencia Paula     	\N	DNI 	31884700	27	31884700	8	F	1985-10-03	\N	\N	433	P	Quilmes	3	2012	2	2023	B	AR
546	RODRIGUEZ           	\N	                    	Darío Fernando      	\N	DNI 	24936776	20	24936776	2	M	1976-01-30	\N	\N	546	P	Avellaneda	8	2012	2	2023	B	AR
60	DI PACE             	\N	                    	Osvaldo Carlos      	\N	DNI 	11438101	20	11438101	3	M	1955-01-05	\N	\N	60	P	Avellaneda	6	2011	8	2023	B	AR
52	DELGADO             	ERTOLA              	                    	Alejandro Antonio   	\N	DNI 	10090918	23	10090918	9	M	1952-03-03	\N	\N	52	A	Avellaneda	6	2011	8	2018	B	AR
87	LOBOS               	PALMA               	                    	Daniela Denise      	\N	DNI 	35041809	27	35041809	7	F	1990-01-04	\N	\N	87	A	Capital Federal	7	2011	2	2014	C	AR
44	BOSCO               	\N	                    	Ricardo             	\N	DNI 	4708886	20	4708886	1	M	1948-04-14	\N	\N	44	A	Capital Federal	6	2011	11	2015	C	AR
53	CHERRO              	PARADA              	                    	Gabriela Ines       	\N	DNI 	14432533	27	14432533	3	F	1961-06-28	\N	\N	53	A	Capital Federal	6	2011	1	2017	C	AR
65	FORTUNATO           	LYNCH               	                    	Marcelo Alberto     	\N	DNI 	18060170	20	18060170	9	M	1966-12-16	\N	\N	65	A	Wilde	6	2011	4	2017	B	AR
89	LOSCOCCO            	CORTÉS              	                    	Sandra Emilia       	\N	DNI 	16962041	27	16962041	0	F	1964-04-18	\N	\N	89	A	Avellaneda	7	2011	7	2017	B	AR
69	GONZALEZ ANDRADA    	\N	                    	Alicia Ercilia      	\N	DNI 	16809479	27	16809479	0	F	1964-10-01	\N	\N	69	A	San Martín	6	2011	7	2017	B	AR
91	MARTINEZ            	\N	                    	Reinaldo Omar       	\N	DNI 	16235881	20	16235881	3	M	1962-11-30	\N	\N	91	A	Wilde	7	2011	7	2017	B	AR
82	JAURRIETA           	\N	                    	María Cecilia       	\N	DNI 	6360250	27	6360250	2	F	1950-03-02	\N	\N	82	P	Capital Federal	7	2011	12	2017	C	AR
85	LAURENCENA          	MILENI              	                    	Leandro Manuel      	\N	DNI 	26632013	20	26632013	3	M	1978-05-13	\N	\N	85	A	Capital Federal	7	2011	11	2017	C	AR
68	ISERN               	SAA                 	                    	Martin Alejandro    	\N	DNI 	35402500	20	35402500	1	M	1990-09-25	\N	\N	68	A	Quilmes	6	2011	3	2019	B	AR
1512	RECEPTER            	\N	                    	Celina              	\N	DNI 	26670834	27	26670834	9	F	1978-06-16	\N	\N	1512	A	\N	6	2015	12	2019	\N	\N
62	FERREÑO             	VILLARREAL          	                    	Laura Marisa        	\N	DNI 	16138567	27	16138567	6	F	1962-11-18	\N	\N	62	A	Avellaneda	6	2011	2	2020	B	AR
66	FOLINO              	\N	                    	Patricia Nora       	\N	DNI 	14578289	27	14578289	4	F	1961-11-04	\N	\N	66	A	Capital Federal	6	2011	2	2020	C	AR
78	HAMRA               	GIMENEZ             	                    	Diana Claudia       	\N	DNI 	17449805	27	17449805	4	F	1965-03-04	\N	\N	78	A	Avellaneda	6	2011	2	2020	B	AR
123	SCARANO             	GÓMEZ               	                    	Alejo Carlos        	\N	DNI 	24892640	20	24892640	7	M	1975-12-06	\N	\N	123	A	La Plata	7	2011	2	2020	B	AR
107	PASCUAL             	\N	                    	Mirian Anabel       	\N	DNI 	32211332	27	32211332	9	F	1986-03-11	\N	\N	107	A	Mendoza	7	2011	4	2013	M	AR
1989	BALLERINI           	\N	                    	Graciela Marina     	\N	DNI 	14414933	27	14414933	0	F	1961-02-23	\N	\N	1989	A	Avellaneda	4	2018	7	2021	B	AR
118	RODRIGUEZ           	\N	                    	Alejandro Dimas     	\N	DNI 	14070283	20	14070283	9	M	1960-03-27	\N	\N	118	A	Avellaneda	7	2011	4	2013	B	AR
121	ROUCO               	ABALOS              	                    	Nelson Gabriel      	\N	DNI 	24694026	20	24694026	7	M	1975-05-11	\N	\N	121	A	Capital Federal	7	2011	4	2013	C	AR
55	ESCRIBANO           	FLAMMINI            	                    	Daniel Roberto      	\N	DNI 	16962233	20	16962233	8	M	1964-06-12	\N	\N	55	A	Avellaneda	6	2011	3	2022	B	AR
95	MENESES             	VARELA              	                    	Griselda Noelia     	\N	DNI 	22588241	27	22588241	5	F	1972-04-03	\N	\N	95	A	Avellaneda	7	2011	5	2022	B	AR
57	FASANELLI           	\N	                    	Raúl Ignacio        	\N	DNI 	14309885	20	14309885	1	M	1960-05-23	\N	\N	57	A	Martínez	6	2011	3	2022	B	AR
138	FREIRE              	DANZI               	                    	Gastón Andrés       	\N	DNI 	27153152	20	27153152	5	M	1979-03-07	\N	\N	138	A	Capital Federal	7	2011	3	2022	C	AR
103	ORTIZ               	\N	                    	Luis Osmar          	\N	DNI 	20060753	20	20060753	9	M	1968-02-16	\N	\N	103	A	Avellaneda	7	2011	4	2013	B	AR
142	BELLOCCHIO          	ZUCCO               	                    	Marcelo Roberto     	\N	DNI 	8358656	20	8358656	8	M	1950-02-23	\N	\N	142	P	Capital Federal	7	2011	10	2022	C	AR
108	PAZ                 	YOLAN               	                    	Fabia Andrea        	\N	DNI 	22879022	27	22879022	8	F	1972-07-09	\N	\N	108	A	Capital Federal	7	2011	4	2015	C	AR
73	HERMIDA             	\N	                    	Carlos Alberto      	\N	DNI 	10271074	20	10271074	7	M	1952-05-12	\N	\N	73	P	Capital Federal	6	2011	2	2023	C	AR
74	GRINSCHPUN          	\N	                    	Monica Susana       	\N	DNI 	11022606	27	11022606	9	F	1953-10-24	\N	\N	74	P	Capital Federal	6	2011	2	2023	C	AR
90	MARIO               	GALÁN               	                    	Natalia             	\N	DNI 	36786132	27	36786132	6	F	1992-02-26	\N	\N	90	P	Capital Federal	7	2011	2	2023	C	AR
100	OGRIZOVIC           	\N	                    	Ricardo             	\N	DNI 	16900381	20	16900381	6	M	1946-02-22	\N	\N	100	P	Bologna	7	2011	2	2023	\N	IT
106	PAREDES             	\N	                    	Javier Pablo        	\N	DNI 	17303592	20	17303592	7	M	1965-03-27	\N	\N	106	P	S.F. Solano	7	2011	2	2023	B	AR
109	PEREYRA             	\N	                    	Yanina Lucila       	\N	DNI 	25187256	27	25187256	8	F	1976-03-05	\N	\N	109	P	Capital Federal	7	2011	2	2023	C	AR
112	PINTOS SARAIVA      	PIZZUTI             	                    	Carlos Eduardo      	\N	DNI 	14077901	20	14077901	7	M	1960-08-29	\N	\N	112	P	Ciudadela	7	2011	2	2023	B	AR
117	RIVAS               	\N	                    	Nicolás             	\N	DNI 	21451138	20	21451138	0	M	1970-03-06	\N	\N	117	P	Pigüé	7	2011	2	2023	B	AR
120	RONCONI             	MAITRE              	                    	Piero Julián        	\N	DNI 	33316440	20	33316440	0	M	1987-08-10	\N	\N	120	P	Capital Federal	7	2011	2	2023	C	AR
134	WAINSCHENKER        	SADINA              	                    	Karina Olga         	\N	DNI 	31752967	27	31752967	3	F	1985-08-27	\N	\N	134	P	Capital Federal	7	2011	2	2023	C	AR
159	BARROS              	AUBERT              	                    	María Victoria      	\N	DNI 	31643246	27	31643246	3	F	1985-05-07	\N	\N	159	P	Quilmes	8	2011	2	2023	B	AR
79	HERRERA             	\N	                    	Carlos Alberto      	\N	DNI 	17978756	20	17978756	4	M	1966-10-26	\N	\N	79	A	Bernal	6	2011	5	2023	B	AR
2109	FOURNES             	\N	                    	Julian              	\N	DNI 	24835657	20	24835657	0	M	1975-11-22	\N	\N	2109	A	LA PLATA	5	2019	6	2023	B	AR
1652	LEONZIO             	\N	                    	Daniel Alberto      	\N	DNI 	13411778	20	13411778	9	M	1959-08-26	\N	\N	1652	A	CAPITAL FEDERAL	11	2015	8	2023	C	AR
111	PEREZ BERGLIAFFA    	BERGLIAFFA          	                    	Mercedes Gabriela   	\N	DNI 	22928804	27	22928804	6	F	1973-01-12	\N	\N	111	P	Berisso	7	2011	7	2015	B	AR
136	ZUCCARO             	MAGGI               	                    	Martin Anibal       	\N	DNI 	24269558	20	24269558	6	M	1974-12-07	\N	\N	136	A	Chascomús	7	2011	1	2017	B	AR
114	POUTON              	GAZZOL              	                    	Matias Javier       	\N	DNI 	33787991	20	33787991	9	M	1988-07-06	\N	\N	114	A	LANUS	7	2011	1	2017	B	AR
115	RAFFATELLA          	\N	                    	Agustina            	\N	DNI 	33747813	27	33747813	7	F	1988-04-16	\N	\N	115	P	Capital Federal	7	2011	6	2017	C	AR
127	TOGNOLOTTI          	\N	                    	Jorge Santiago      	\N	DNI 	13663950	20	13663950	2	M	1960-08-10	\N	\N	127	A	Lomas de Zamora	7	2011	7	2017	B	AR
96	MERCADO DUGARTE     	DUGARTE             	                    	Dayana Ivette       	\N	DNI 	19016923	27	19016923	0	F	1972-03-05	\N	\N	96	A	Mérida	7	2011	1	2019	\N	VE
102	ORCOYEN             	PALMA               	                    	Diego               	\N	DNI 	30946246	20	30946246	8	M	1984-05-16	\N	\N	102	A	Mar del Plata	7	2011	3	2019	B	AR
161	SCHOTTLENDER        	GRINBERG            	                    	Adriana Beatriz     	\N	DNI 	6702033	27	6702033	8	F	1951-05-16	\N	\N	161	A	Capital Federal	8	2011	3	2019	C	AR
128	TORRES              	\N	                    	Leandro Hilario     	\N	DNI 	22750445	20	22750445	6	M	1972-05-28	\N	\N	128	A	Lanús	7	2011	4	2013	B	AR
168	GIMENEZ             	FERRE               	                    	Maria Laura         	\N	DNI 	20986321	27	20986321	4	F	1969-08-25	\N	\N	168	A	Avellaneda	8	2011	2	2020	B	AR
97	MUZI                	CORGATELLI          	                    	Carolina            	\N	DNI 	17647245	27	17647245	1	F	1965-07-03	\N	\N	97	A	Bahía Blanca	7	2011	2	2020	B	AR
105	PAPAGNO             	CASTELLANO          	                    	Lorena Carla        	\N	DNI 	25095321	27	25095321	1	F	1978-05-19	\N	\N	105	A	Ginebra	7	2011	11	2020	\N	CH
198	SEOANE              	\N	                    	Ángel Adrián        	\N	DNI 	21507426	23	21507426	9	M	1970-12-29	\N	\N	198	A	Llavallol	9	2011	12	2020	B	AR
152	AVENBURG            	\N	                    	Karen               	\N	DNI 	28549080	23	28549080	4	F	1976-01-08	\N	\N	152	A	Gotemburgo	7	2011	7	2013	\N	SE
176	RE                  	\N	                    	Valeria             	\N	DNI 	26811548	27	26811548	5	F	1978-08-08	\N	\N	176	A	Chacabuco	8	2011	6	2021	B	AR
180	BARBERIS            	PLANA               	                    	Sergio Horacio      	\N	DNI 	12447769	20	12447769	8	M	1957-01-02	\N	\N	180	A	Capital Federal	8	2011	7	2021	C	AR
184	CALZONI             	CANEPA              	                    	Pedro Ricardo       	\N	DNI 	21738248	20	21738248	4	M	1970-07-05	\N	\N	184	A	Lanús	8	2011	12	2016	B	AR
122	RUGGIERO            	RIVARA              	                    	Ana Laura           	\N	DNI 	30494956	27	30494956	8	F	1983-09-12	\N	\N	122	A	Capital Federal	7	2011	3	2022	C	AR
77	HARGUINTEGUY        	ALVAREZ             	                    	Facundo Martin      	\N	DNI 	25435090	20	25435090	8	M	1976-09-08	\N	\N	77	A	Capital Federal	6	2011	3	2022	C	AR
93	MATA                	ARANGO              	                    	Sandra Nelly        	\N	DNI 	18416064	27	18416064	7	F	1967-12-31	\N	\N	93	J	Avellaneda	7	2011	5	2022	B	AR
190	NAVARRO             	\N	                    	Alejandra           	\N	DNI 	18058381	27	18058381	0	F	1966-11-20	\N	\N	190	A	Capital Federal	9	2011	8	2016	C	AR
200	CATIVA              	BOFFETTI            	                    	Laura Nora          	\N	DNI 	17061098	27	17061098	4	F	1965-05-05	\N	\N	200	A	Ciudad Autónoma de Buenos Aires	9	2011	1	2013	C	AR
104	OYHAMBURU           	FRAGA               	                    	Ana Maria           	\N	DNI 	12806052	27	12806052	4	F	1958-06-02	\N	\N	104	P	Lomas de Zamora	7	2011	10	2022	B	AR
171	TRAPANI             	VERDURAS            	                    	Matias Nicolas      	\N	DNI 	24314613	20	24314613	6	M	1975-01-08	\N	\N	171	A	Capital Federal	8	2011	1	2017	B	AR
135	WEBER               	FRESCO              	                    	Veronica Graciela   	\N	DNI 	18519259	27	18519259	3	F	1967-09-30	\N	\N	135	P	San Fernando	7	2011	2	2023	B	AR
139	BOURLOT             	TERRANA             	                    	Gustavo Fabian      	\N	DNI 	22023199	20	22023199	3	M	1971-03-11	\N	\N	139	P	Temperley	7	2011	2	2023	B	AR
140	CALVIÑO             	\N	                    	Daniela Celeste     	\N	DNI 	35855423	27	35855423	2	F	1991-08-16	\N	\N	140	P	Lomas de Zamora	7	2011	2	2023	B	AR
143	SALAS               	\N	                    	Rosario del Carmen  	\N	DNI 	30534801	27	30534801	0	F	1976-05-26	\N	\N	143	P	Avellaneda	7	2011	2	2023	B	AR
146	RAMELLA             	VIVARES             	                    	Adriana Julia       	\N	DNI 	29280051	27	29280051	2	F	1981-12-12	\N	\N	146	P	Bariloche	7	2011	2	2023	R	AR
151	DORREGO             	\N	                    	Alba Gabriela       	\N	DNI 	21617360	27	21617360	6	F	1970-05-23	\N	\N	151	P	Avellaneda	7	2011	2	2023	B	AR
155	COMOLI              	GABARRET            	                    	Gisela Maris        	\N	DNI 	22653556	27	22653556	5	F	1972-03-05	\N	\N	155	P	Capital Federal	7	2011	2	2023	C	AR
165	PAEZ                	\N	                    	Julio Armando       	\N	DNI 	13797540	20	13797540	9	M	1961-12-21	\N	\N	165	P	Pagancillo	8	2011	2	2023	F	AR
166	FERRON MATALOBOS    	MATALOBOS GOMEZ     	                    	Nicolás Adrián      	\N	DNI 	27659829	20	27659829	6	M	1979-09-19	\N	\N	166	P	Capital Federal	8	2011	2	2023	C	AR
167	TASSARA             	\N	                    	Gerardo David       	\N	DNI 	26303335	20	26303335	4	M	1977-12-03	\N	\N	167	P	Tandil	8	2011	2	2023	B	AR
173	DI VIRGILIO         	\N	                    	María Mercedes      	\N	DNI 	20004862	27	20004862	3	F	1968-01-07	\N	\N	173	P	Capital Federal	8	2011	2	2023	C	AR
186	FERRANDINO          	\N	                    	Pedro Daniel        	\N	DNI 	24847465	20	24847465	4	M	1976-01-23	\N	\N	186	P	Lanús	8	2011	2	2023	B	AR
195	TAPIA               	PERELLI             	                    	Clara               	\N	DNI 	31616334	27	31616334	9	F	1985-04-06	\N	\N	195	P	La Plata	9	2011	2	2023	B	AR
220	VARELA              	ERANDÍO             	PELTZER             	María Isabel        	\N	DNI 	17163524	27	17163524	7	F	1964-04-10	\N	\N	220	P	Ciudad Autónoma de Buenos Aires	9	2011	2	2023	C	AR
547	PAZ                 	\N	MAURO PAZ           	María Alejandra     	\N	DNI 	21052384	27	21052384	2	F	1969-10-18	\N	\N	547	P	Ciudad Autónoma de Buenos Aires	8	2012	2	2023	C	AR
1370	ABAL MEDINA         	\N	                    	Santiago Tomas      	\N	DNI 	20987777	20	20987777	6	M	1969-06-19	\N	\N	1370	P	CAPITAL FEDERAL	4	2015	2	2023	C	AR
1169	COSTILLA            	\N	                    	Julia               	\N	DNI 	29462167	27	29462167	4	F	1982-04-30	\N	\N	1169	P	LOMAS DE ZAMORA	6	2014	2	2023	B	AR
129	TABORDA             	JAROWITZKY          	                    	Carolina Lia del V  	\N	DNI 	24655327	27	24655327	6	F	1975-08-31	\N	\N	129	A	San Isidro	7	2011	1	2017	B	AR
154	CORTI               	CARBALLEIRA         	                    	Laura Ines          	\N	DNI 	25659640	20	25659640	8	F	1977-02-05	\N	\N	154	A	Lomas de Zamora	7	2011	1	2017	B	AR
145	CORVALAN            	ROMAN               	                    	Jesica Noemi        	\N	DNI 	35460372	27	35460372	7	F	1991-05-26	\N	\N	145	A	Monte Grande	7	2011	4	2017	B	AR
160	FERNANDEZ           	ESPOSITO            	                    	Florencia Laura     	\N	DNI 	33455844	23	33455844	4	F	1987-12-11	\N	\N	160	A	Avellaneda	8	2011	4	2017	B	AR
187	CARBONARO           	PICEDA              	                    	Esteban Guillermo   	\N	DNI 	30859358	20	30859358	5	M	1984-03-07	\N	\N	187	A	Capital Federal	8	2011	7	2017	C	AR
196	CASTRO              	\N	MORINI              	María Fernanda      	\N	DNI 	20696689	27	20696689	6	F	1969-03-15	\N	\N	196	A	Ciudad Autónoma de Buenos Aires	9	2011	7	2017	C	AR
201	CHIESINO            	\N	                    	María Pia           	\N	DNI 	14456378	27	14456378	1	F	1960-10-29	\N	\N	201	A	Ciudad Autónoma de Buenos Aires	9	2011	7	2017	C	AR
197	VALCARCE            	MIGUEZ              	PERNAS              	Ana Maria           	\N	DNI 	14456379	23	14456379	4	F	1960-11-10	\N	\N	197	A	Ciudad Autónoma de Buenos Aires	9	2011	7	2017	C	AR
199	GUERRERO            	FERNÁNDEZ           	VÁZQUEZ             	Claudia Gabriela    	\N	DNI 	17597804	27	17597804	1	F	1965-09-20	\N	\N	199	A	Avellaneda	9	2011	10	2017	B	AR
189	LAGO                	\N	                    	Maria Cristina      	\N	DNI 	16197772	27	16197772	7	F	1962-01-23	\N	\N	189	A	Capital Federal	9	2011	5	2019	C	AR
158	CASTELLANO          	MINOLI              	                    	Juan Manuel         	\N	DNI 	35863869	20	35863869	5	M	1991-06-12	\N	\N	158	A	Lanús	7	2011	11	2019	B	AR
323	SAMONTA             	LESTÓN              	                    	Facundo             	\N	DNI 	31282072	20	31282072	3	M	1984-11-14	\N	\N	323	A	Avellaneda	2	2012	7	2014	B	AR
206	ASURABARRENA        	ROA                 	                    	Juan Mariano        	\N	DNI 	8372828	20	8372828	1	M	1950-08-26	\N	\N	206	P	Benito Juárez	9	2011	8	2014	B	AR
194	PERALTA             	MILLA               	                    	César Alejandro     	\N	DNI 	25199430	20	25199430	8	M	1976-05-05	\N	\N	194	P	Oberá	9	2011	8	2014	N	AR
149	CORBALAN            	\N	                    	Norma Noemi         	\N	DNI 	16496477	27	16496477	4	F	1963-09-30	\N	\N	149	A	9 de Julio	7	2011	3	2022	S	AR
137	ROMERO              	LOPEZ               	                    	Oscar Walter        	\N	DNI 	7618645	20	7618645	7	M	1949-01-09	\N	\N	137	J	Mercedes	7	2011	5	2022	W	AR
209	TORONCHIK           	\N	                    	Alejandra Ruth      	\N	DNI 	13211609	27	13211609	7	F	1959-05-20	\N	\N	209	P	Ciudad Autónoma de Buenos Aires	9	2011	10	2022	C	AR
125	SUAREZ              	RIVERA              	                    	Carla Maria Milagros	\N	DNI 	14014996	27	14014996	4	F	1959-08-17	\N	\N	125	P	Capital Federal	7	2011	10	2022	C	AR
188	DE SA SOUZA         	\N	                    	Fernando            	\N	DNI 	12661339	20	12661339	4	M	1956-11-02	\N	\N	188	P	Almirante Brown	9	2011	10	2022	B	AR
205	PAGLIETA            	\N	                    	Silvia Cristina     	\N	DNI 	10653610	23	10653610	4	F	1952-09-28	\N	\N	205	P	Las Heras	9	2011	10	2022	B	AR
218	ARROSAGARAY         	\N	                    	Enrique Hugo        	\N	DNI 	11630218	20	11630218	8	M	1953-12-13	\N	\N	218	P	Avellaneda	9	2011	10	2022	B	AR
164	OLCESE              	CHIARLINI           	                    	Evelin Yazmin       	\N	DNI 	37294091	27	37294091	9	F	1993-02-01	\N	\N	164	A	Ezpeleta	8	2011	1	2017	B	AR
208	GABIN LODEIRO       	\N	CAMPOS              	Maria Alejandra     	\N	DNI 	16580826	27	16580826	1	F	1963-10-09	\N	\N	208	A	Ciudad Autónoma de Buenos Aires	9	2011	4	2017	C	AR
207	FIGUERERO           	BALLARIC            	                    	Gustavo Hernán      	\N	DNI 	24110537	20	24110537	8	M	1974-09-20	\N	\N	207	P	Ciudad Autónoma de Buenos Aires	9	2011	2	2023	C	AR
212	BRANCOLI            	FERNÁNDEZ           	                    	Diego Andres        	\N	DNI 	23598298	20	23598298	7	M	1973-10-01	\N	\N	212	P	San Martín	9	2011	2	2023	B	AR
213	COPPOLA             	\N	                    	Natalia Luisa       	\N	DNI 	23507914	27	23507914	9	F	1973-08-06	\N	\N	213	P	Ciudad Autónoma de Buenos Aires	9	2011	2	2023	C	AR
215	BOTTINELLI          	\N	                    	Leandro Enrique     	\N	DNI 	25189193	20	25189193	2	M	1976-02-25	\N	\N	215	P	Ciudad Autónoma de Buenos Aires	9	2011	2	2023	C	AR
217	MACCHI              	\N	                    	María Agostina      	\N	DNI 	34369925	27	34369925	0	F	1989-02-17	\N	\N	217	P	Chascomús	9	2011	2	2023	B	AR
219	ORLANDO             	CEJAS               	                    	Claudia Rosa        	\N	DNI 	14774073	27	14774073	0	M	1961-07-07	\N	\N	219	P	Avellaneda	9	2011	2	2023	B	AR
224	PEIRETTI            	\N	                    	Javier Ricardo      	\N	DNI 	26122260	20	26122260	5	M	1977-12-27	\N	\N	224	P	Ciudad Autónoma de Buenos Aires	9	2011	2	2023	C	AR
228	LOPEZ MARSANO       	MARSANO             	                    	Rosario Beatriz     	\N	DNI 	16582215	27	16582215	9	F	1963-08-30	\N	\N	228	P	Ciudad Autónoma de Buenos Aires	9	2011	2	2023	C	AR
229	MARI                	\N	MORALES             	Laura Edith         	\N	DNI 	23372082	27	23372082	3	F	1973-05-05	\N	\N	229	P	Ciudad Autónoma de Buenos Aires	9	2011	2	2023	C	AR
231	GOMEZ               	\N	                    	Nélida Gabriela     	\N	DNI 	31511288	27	31511288	0	F	1985-02-17	\N	\N	231	P	Avellaneda	9	2011	2	2023	B	AR
232	MARCUZZI            	\N	                    	Lorena Romina       	\N	DNI 	33718412	27	33718412	5	F	1988-06-15	\N	\N	232	P	Ciudad Autónoma de Buenos Aires	10	2011	2	2023	C	AR
237	MARINOVIC           	\N	                    	Liliana             	\N	DNI 	16966906	27	16966906	1	F	1964-10-18	\N	\N	237	P	Lanús Este	10	2011	2	2023	B	AR
242	MURABITO            	PROVIDENZA          	                    	Matías              	\N	DNI 	30743602	20	30743602	8	M	1983-12-30	\N	\N	242	P	Ciudad Autónoma de Buenos Aires	10	2011	2	2023	C	AR
259	PUCHIK              	MUZZACHIODI         	                    	Gisselle Beatriz    	\N	DNI 	23060135	27	23060135	1	F	1972-10-21	\N	\N	259	P	Lanús	11	2011	2	2023	B	AR
263	VILLAR              	\N	                    	Antonio Amador      	\N	DNI 	32261818	20	32261818	3	M	1986-03-10	\N	\N	263	P	Avellaneda	11	2011	2	2023	B	AR
285	RUFINO              	\N	                    	Sandra Carina       	\N	DNI 	17653939	27	17653939	4	F	1965-01-07	\N	\N	285	P	Ciudad Autónoma de Buenos Aires	12	2011	2	2023	C	AR
147	GIORGI              	\N	                    	Mario Roberto       	\N	DNI 	11359544	20	11359544	3	M	1955-01-06	\N	\N	147	A	La Plata	7	2011	9	2023	B	AR
170	ZELASCHI            	CÁMARA              	                    	Maria Constanza     	\N	DNI 	21968867	27	21968867	4	F	1971-01-23	\N	\N	170	A	La Plata	8	2011	6	2017	B	AR
221	GOMEZ               	\N	                    	Sabrina Marcela     	\N	DNI 	26475243	23	26475243	4	F	1978-02-23	\N	\N	221	A	Avellaneda	9	2011	10	2017	B	AR
267	MARTINEZ            	VARELA              	                    	Aldo Raúl           	\N	DNI 	12767331	20	12767331	5	M	1959-02-19	\N	\N	267	A	Avellaneda	12	2011	10	2017	B	AR
169	HAMRA               	\N	                    	Hernan Omar         	\N	DNI 	23510771	20	23510771	7	M	1973-10-05	\N	\N	169	A	Capital Federal	8	2011	3	2019	C	AR
175	KUPERVASER          	MEZA                	                    	Ana Silvina         	\N	DNI 	32516585	27	32516585	0	F	1986-07-14	\N	\N	175	A	Corrientes	8	2011	3	2019	W	AR
191	FLORIDO             	LA RUFFA            	                    	Pablo Andres        	\N	DNI 	26382690	20	26382690	7	M	1977-12-12	\N	\N	191	A	Wilde	9	2011	3	2019	B	AR
211	PAVESE              	OCHIPINTI           	                    	Paola Cintya        	\N	DNI 	29258080	27	29258080	6	F	1982-01-11	\N	\N	211	A	Wilde, Avellaneda	9	2011	3	2019	B	AR
214	GOLDSTEIN           	\N	                    	Melina Berta        	\N	DNI 	28693337	27	28693337	3	F	1981-01-17	\N	\N	214	A	Ciudad Autónoma de Buenos Aires	9	2011	5	2014	C	AR
210	FREYTES FREY        	\N	                    	Ada Cora            	\N	DNI 	21355515	23	21355515	4	M	1970-05-07	\N	\N	210	A	Comodoro Rivadavia	9	2011	2	2020	U	AR
1653	RONCHER             	\N	                    	Claudia Graciela    	\N	DNI 	20013952	27	20013952	1	F	1968-01-18	\N	\N	1653	A	BERNAL	11	2015	11	2015	B	AR
223	LIPARE              	\N	                    	Walter Alexis       	\N	DNI 	34470973	20	34470973	5	M	1989-09-12	\N	\N	223	P	Ciudad Autónoma de Buenos Aires	9	2011	7	2015	C	AR
238	MAYA                	DÍAZ                	                    	Tatiana Belen       	\N	DNI 	36066764	27	36066764	8	F	1992-07-17	\N	\N	238	A	Bernal	10	2011	7	2021	B	AR
258	CRICCO              	CAÑETE              	                    	Antonio Javier      	\N	DNI 	22410775	20	22410775	8	M	1971-12-05	\N	\N	258	A	Lomas de Zamora	11	2011	3	2022	B	AR
1	CALZONI             	Canepa              	                    	Jorge Fabian        	\N	DNI 	16506399	20	16506399	7	M	1963-05-18	\N	\N	1	A	CAPITAL FEDERAL	8	2010	2	2022	C	AR
203	FESTI               	CAMINO              	                    	Patricia Myriam     	\N	DNI 	16397428	27	16397428	8	F	1962-09-19	\N	\N	203	J	Ciudad Autónoma de Buenos Aires	9	2011	5	2022	C	AR
216	PELLEGRINI          	ORTEGA              	                    	Fernando Fabian     	\N	DNI 	17367187	20	17367187	4	M	1965-04-21	\N	\N	216	A	Ciudad Autónoma de Buenos Aires	9	2011	1	2017	C	AR
230	MALEH               	\N	                    	Hector Omar         	\N	DNI 	16145484	20	16145484	3	M	1963-02-09	\N	\N	230	A	Lanús	9	2011	1	2017	B	AR
303	CAMACHO GARCIA      	\N	FURGIUELE           	Ana María           	\N	DNI 	18843847	23	18843847	4	F	1961-04-28	\N	\N	303	P	\N	1	2012	10	2022	\N	\N
222	ABACA               	\N	                    	Alejandro Alberto   	\N	DNI 	16638511	20	16638511	4	M	1963-11-02	\N	\N	222	A	Gral Roca	9	2011	2	2017	R	AR
240	LADO                	PICCININNO          	                    	Florencia Soledad   	\N	DNI 	31026650	27	31026650	2	F	1984-06-24	\N	\N	240	P	Lanús	10	2011	8	2017	B	AR
257	DAL POZZO           	ALONSO              	                    	María Laura         	\N	DNI 	31552264	27	31552264	7	F	1985-05-25	\N	\N	257	A	San Carlos de Bariloche	11	2011	10	2017	R	AR
270	LUNA                	EDITH               	                    	Leonel Fernando     	\N	DNI 	17809707	20	17809707	6	M	1965-08-20	\N	\N	270	A	Ciudad Autónoma de Buenos Aires	12	2011	10	2017	C	AR
239	VALTUILLE           	\N	                    	Florencia           	\N	DNI 	29381079	27	29381079	1	F	1982-02-12	\N	\N	239	P	Quilmes	10	2011	2	2023	B	AR
241	GALETOVICH          	CERIOTTI            	                    	Rodrigo Emilio      	\N	DNI 	28687375	20	28687375	9	M	1981-01-22	\N	\N	241	P	Avellaneda	10	2011	2	2023	B	AR
1990	PEREZ               	\N	                    	Maximiliano Ariel   	\N	DNI 	28127357	20	28127357	5	M	1981-01-03	\N	\N	1990	P	Berisso	4	2018	2	2023	B	AR
245	FERRO               	BENSUSAN            	                    	Constanza Daniela   	\N	DNI 	34151205	27	34151205	6	F	1988-10-05	\N	\N	245	P	Bernal	10	2011	2	2023	B	AR
247	LALLI               	GILGORRI            	                    	Carlos Maximiliano  	\N	DNI 	23473969	20	23473969	8	M	1973-11-06	\N	\N	247	P	Ciudad Autónoma de Buenos Aires	10	2011	2	2023	C	AR
250	AGNESE              	\N	                    	Luis Vicente        	\N	DNI 	25824927	20	25824927	6	M	1977-03-20	\N	\N	250	P	Quilmes	10	2011	2	2023	B	AR
251	CARRIL              	ROMANO              	                    	Vanesa Graciela     	\N	DNI 	30977063	27	30977063	9	F	1984-08-31	\N	\N	251	P	Avellaneda	11	2011	2	2023	B	AR
254	TOSCANO             	\N	                    	María Lucila Ivón   	\N	DNI 	27011108	23	27011108	4	F	1978-11-14	\N	\N	254	P	Ciudad Autónoma de Buenos Aires	11	2011	2	2023	C	AR
255	FRANCO PARODI       	PARODI              	                    	Ramiro Andrés       	\N	DNI 	33455895	23	33455895	9	M	1987-06-04	\N	\N	255	P	Avellaneda	11	2011	2	2023	B	AR
256	FERREYRA            	\N	                    	Vanina              	\N	DNI 	25944385	27	25944385	2	F	1977-03-17	\N	\N	256	P	Quilmes	11	2011	2	2023	B	AR
265	GIAGANTI            	\N	                    	Silvina Viviana     	\N	DNI 	25282262	27	25282262	9	F	1976-05-29	\N	\N	265	P	Ciudad Autónoma de Buenos Aires	12	2011	2	2023	C	AR
269	GARIUP              	\N	                    	Guido Eugenio       	\N	DNI 	25890446	20	25890446	0	M	1977-11-12	\N	\N	269	P	\N	12	2011	2	2023	\N	\N
272	MARTIN              	PAOLA               	                    	Ezequiel Roberto    	\N	DNI 	27193581	20	27193581	2	M	1979-03-23	\N	\N	272	P	Lanús	12	2011	2	2023	B	AR
274	BARACAT             	GRAMAJO             	                    	Julian Andres       	\N	DNI 	34174943	20	34174943	4	M	1989-02-10	\N	\N	274	P	Burzaco	12	2011	2	2023	B	AR
278	BERNSTEIN           	\N	                    	Laura               	\N	DNI 	27088083	27	27088083	0	F	1978-12-24	\N	\N	278	P	Ciudad Autónoma de Buenos Aires	12	2011	2	2023	C	AR
296	CORBALAN            	\N	                    	Ramiro              	\N	DNI 	25547426	20	25547426	0	M	1976-12-28	\N	\N	296	P	Quilmes	1	2012	2	2023	B	AR
313	ORDIZ               	TERTULA             	                    	Marcela Liliana     	\N	DNI 	29863795	27	29863795	8	F	1983-08-29	\N	\N	313	P	Las Toscas	2	2012	2	2023	S	AR
1371	CARAZZO             	\N	                    	María Emilia        	\N	DNI 	31567006	27	31567006	9	F	1985-03-18	\N	\N	1371	P	Gualeguaychu	4	2015	2	2023	E	AR
2190	LOPEZ BELLOT        	\N	                    	Marina Leticia      	\N	DNI 	26274965	27	26274965	2	F	1977-08-04	\N	\N	2190	A	QUILMES	9	2020	6	2023	B	AR
234	PEREYRA             	\N	                    	Marcela Alejandra   	\N	DNI 	23524937	27	23524937	0	F	1974-02-03	\N	\N	234	A	Ciudad Autónoma de Buenos Aires	10	2011	10	2017	C	AR
495	RAAMAT              	CORSINI             	                    	Ayalen Cynthia      	\N	DNI 	26967270	27	26967270	1	F	1978-10-27	\N	\N	495	A	Ciudad Autónoma de Buenos Aires	5	2012	10	2017	C	AR
280	GARCIA AMARILLA     	AMARILLA            	                    	Julieta Albana      	\N	DNI 	35394782	27	35394782	1	F	1990-10-06	\N	\N	280	A	Avellaneda	12	2011	1	2014	B	AR
282	VIDONI              	\N	                    	Claudio Gabriel     	\N	DNI 	13856851	20	13856851	3	M	1968-01-25	\N	\N	282	A	Ciudad Autónoma de Buenos Aires	12	2011	12	2014	C	AR
277	BLANCO              	MANSILLA            	                    	Mariela Nancy       	\N	DNI 	23723538	24	23723538	6	F	1974-08-21	\N	\N	277	A	Avellaneda	12	2011	9	2020	B	AR
294	GUGGIARI            	\N	                    	Ramiro              	\N	DNI 	31728464	20	31728464	1	M	1985-08-12	\N	\N	294	A	Ciudad Autónoma de Buenos Aires	1	2012	9	2020	C	AR
253	LESCANO             	ORIETA              	                    	Daniel Oscar        	\N	DNI 	33083872	20	33083872	9	M	1986-12-03	\N	\N	253	P	Avellaneda	11	2011	7	2015	B	AR
226	MAJSTROVIC          	ESTELLA             	                    	Marcelo Adrian      	\N	DNI 	18379890	20	18379890	2	M	1967-06-19	\N	\N	226	A	Ciudad Autónoma de Buenos Aires	9	2011	1	2017	C	AR
243	FLECHNER            	IGLESIAS            	                    	Lucia               	\N	DNI 	28504296	27	28504296	3	F	1980-11-25	\N	\N	243	A	Ciudad Autónoma de Buenos Aires	10	2011	8	2017	C	AR
316	CARBONE             	VIEIRA              	                    	Lucía Delfina       	\N	DNI 	29461813	27	29461813	4	F	1982-05-30	\N	\N	316	A	Avellaneda	2	2012	10	2017	B	AR
351	SORIA SASIAS        	SASÍAS BENÍTEZ      	                    	Adrian Marcelo      	\N	DNI 	32166802	20	32166802	0	M	1986-02-02	\N	\N	351	A	Ciudad Autónoma de Buenos Aires	2	2012	10	2017	C	AR
281	D'ALOISIO           	\N	                    	Fabián              	\N	DNI 	21462819	20	21462819	9	M	1969-12-19	\N	\N	281	P	San Isidro	12	2011	2	2023	B	AR
283	VERON               	\N	                    	Teresa Beatriz      	\N	DNI 	26613682	27	26613682	5	F	1978-05-05	\N	\N	283	P	Avellaneda	12	2011	2	2023	B	AR
284	KLINGER             	JUGO                	                    	Magalí Silvina      	\N	DNI 	30925918	27	30925918	7	F	1984-04-23	\N	\N	284	P	Ciudad Autónoma de Buenos Aires	12	2011	2	2023	C	AR
286	ACHUCARRO           	\N	                    	Susana Beatriz      	\N	DNI 	24838899	23	24838899	4	F	1975-08-03	\N	\N	286	P	Quilmes	12	2011	2	2023	B	AR
287	GONZALEZ            	\N	                    	Carlos Osvaldo      	\N	DNI 	14264768	20	14264768	1	M	1960-09-26	\N	\N	287	P	Ciudad Autónoma de Buenos Aires	12	2011	2	2023	C	AR
288	GOMEL               	\N	                    	Andrés Daniel       	\N	DNI 	22962397	20	22962397	5	M	1972-09-10	\N	\N	288	P	Ciudad Autónoma de Buenos Aires	12	2011	2	2023	C	AR
289	MIRANDA             	\N	                    	María Rocío         	\N	DNI 	30133112	27	30133112	1	F	1983-02-14	\N	\N	289	P	Ciudad Autónoma de Buenos Aires	12	2011	2	2023	C	AR
290	VIÑAS               	FLEITAS             	                    	Walter Ezequiel     	\N	DNI 	22809102	20	22809102	3	M	1972-10-03	\N	\N	290	P	Ciudad Autónoma de Buenos Aires	1	2012	2	2023	C	AR
291	FERNANDEZ CHEIN     	\N	                    	Guadalupe           	\N	DNI 	32028080	27	32028080	5	F	1985-12-08	\N	\N	291	P	Ciudad Autónoma de Buenos Aires	1	2012	2	2023	C	AR
295	ZONIS               	\N	                    	Natalia             	\N	DNI 	32405999	27	32405999	2	F	1986-07-02	\N	\N	295	P	Paraná	1	2012	2	2023	E	AR
298	CECCHI              	DENAZIS             	                    	Andrea Veronica     	\N	DNI 	26895430	27	26895430	4	F	1978-09-21	\N	\N	298	P	Ciudad Autónoma de Buenos Aires	1	2012	2	2023	C	AR
309	SALVATIERRA         	BEDOYA              	                    	Jeremías Juvenal    	\N	DNI 	36285560	20	36285560	9	M	1991-03-19	\N	\N	309	P	Ezpeleta	2	2012	2	2023	B	AR
310	PACHILLA            	GOROYESKY           	                    	Pablo Nicolás       	\N	DNI 	30427287	20	30427287	3	M	1983-08-25	\N	\N	310	P	La Plata	2	2012	2	2023	B	AR
312	MARIASCH            	\N	                    	Marina              	\N	DNI 	23375513	27	23375513	9	F	1973-05-31	\N	\N	312	P	Ciudad Autónoma de Buenos Aires	2	2012	2	2023	C	AR
315	RECK BARBARA        	BÁRBARA             	                    	Ilana Micaela       	\N	DNI 	18814355	27	18814355	0	F	1982-06-17	\N	\N	315	P	Lima	2	2012	2	2023	\N	PE
324	GARCIA              	\N	                    	Valeria Andrea      	\N	DNI 	27687352	27	27687352	6	F	1980-01-24	\N	\N	324	P	Ezpeleta	2	2012	2	2023	B	AR
327	ARDIZZONE           	DODARO              	GONZÁLEZ            	Marisa Alejandra    	\N	DNI 	28830260	27	28830260	5	F	1981-05-03	\N	\N	327	P	Lanús	2	2012	2	2023	B	AR
330	MUÑOZ               	BAMPA               	                    	Andrés Leandro      	\N	DNI 	27287803	20	27287803	0	M	1979-07-08	\N	\N	330	P	Ciudad Autónoma de Buenos Aires	2	2012	2	2023	C	AR
336	ROMAGNOLI           	FERRARI             	                    	Alejandro Eduardo   	\N	DNI 	30098544	20	30098544	1	M	1983-03-08	\N	\N	336	P	Avellaneda	2	2012	2	2023	B	AR
343	MILNE               	\N	                    	Natalia Romina      	\N	DNI 	26832957	27	26832957	4	F	1978-08-24	\N	\N	343	P	Lobos	2	2012	2	2023	B	AR
345	D'ANGELO            	CORONEL             	                    	Analía Soledad      	\N	DNI 	30324877	27	30324877	9	F	1983-06-12	\N	\N	345	P	San Isidro	2	2012	2	2023	B	AR
346	CASTRO              	\N	                    	Claudio Martín      	\N	DNI 	22742654	20	22742654	4	M	1972-10-13	\N	\N	346	P	Lanús	2	2012	2	2023	B	AR
436	FERRARESI EGAN      	\N	                    	Agustina            	\N	DNI 	36948169	27	36948169	5	F	1992-08-19	\N	\N	436	P	Ciudad Autónoma de Buenos Aires	3	2012	2	2023	C	AR
438	PONTNAU             	\N	                    	María Elena         	\N	DNI 	28305867	27	28305867	6	F	1980-12-09	\N	\N	438	P	Gral San Martín	3	2012	2	2023	B	AR
548	NAPOLITANO          	MERCADO             	                    	María Emilia        	\N	DNI 	30281128	27	30281128	3	F	1983-05-05	\N	\N	548	P	La Plata	8	2012	2	2023	B	AR
1170	DREWES              	\N	                    	Alejandro Marcelo   	\N	DNI 	16762818	20	16762818	5	M	1963-05-02	\N	\N	1170	P	CAPITAL FEDERAL	6	2014	2	2023	C	AR
244	DELGADO             	\N	                    	Demián Pablo        	\N	DNI 	25770667	20	25770667	3	M	1977-01-21	\N	\N	244	A	Ciudad Autónoma de Buenos Aires	10	2011	3	2023	C	AR
293	MOLNAR              	\N	                    	Sabrina Noemi       	\N	DNI 	28068060	27	28068060	0	F	1980-08-28	\N	\N	293	A	Lanús	1	2012	3	2019	B	AR
385	CAPPELLETTI         	BLANCO              	                    	Natalia Elsa        	\N	DNI 	25264230	27	25264230	2	F	1976-06-26	\N	\N	385	A	Florencio Varela	2	2012	12	2012	B	AR
348	BASTIAN             	RÁBANOS             	                    	Roberto Daniel      	\N	DNI 	14822130	20	14822130	9	M	1962-05-07	\N	\N	348	A	Ciudad Autónoma de Buenos Aires	2	2012	7	2021	C	AR
352	TARTARA             	BARBIERI            	                    	Mariano Ezequiel    	\N	DNI 	27308402	23	27308402	9	M	1979-05-04	\N	\N	352	A	Ciudad Autónoma de Buenos Aires	2	2012	7	2021	C	AR
342	ANSEDE              	\N	                    	Paula Mariela       	\N	DNI 	33444087	27	33444087	2	F	1987-12-29	\N	\N	342	A	Avellaneda	2	2012	7	2021	B	AR
311	MERLO               	\N	                    	Andrea Fabiana      	\N	DNI 	21524445	27	21524445	3	F	1970-06-17	\N	\N	311	A	Florencio Varela	2	2012	12	2021	B	AR
252	FEDERICO HAMRA      	HAMRA               	                    	Lautaro             	\N	DNI 	34152263	20	34152263	4	M	1988-10-31	\N	\N	252	A	Burzaco	11	2011	1	2022	B	AR
325	SASSI               	\N	                    	Hernán Hugo         	\N	DNI 	24205763	20	24205763	6	M	1974-09-27	\N	\N	325	P	Ciudad Autónoma de Buenos Aires	2	2012	3	2022	C	AR
307	VIO                 	\N	RODRÍGUEZ           	Marcela Laura       	\N	DNI 	18651477	27	18651477	2	F	1967-12-06	\N	\N	307	A	Ciudad Autónoma de Buenos Aires	2	2012	3	2022	C	AR
378	RAMOS               	BRITOS              	                    	Lia Soledad         	\N	DNI 	28266018	27	28266018	6	F	1980-09-15	\N	\N	378	A	Rafael Calzada	2	2012	1	2017	B	AR
344	ABALO               	GUTIÉRREZ           	                    	Mirta Zulema        	\N	DNI 	30136587	27	30136587	5	F	1983-02-03	\N	\N	344	P	Ciudad Autónoma de Buenos Aires	2	2012	6	2017	C	AR
308	FRIEDT              	TROVATO             	                    	Graciela Cristina   	\N	DNI 	11428458	27	11428458	6	F	1955-02-21	\N	\N	308	A	Ciudad Autónoma de Buenos Aires	2	2012	4	2017	C	AR
359	BOJANICH            	CHIARDOLA           	                    	Laura               	\N	DNI 	29513519	24	29513519	7	F	1982-08-19	\N	\N	359	A	Capitán Sarmiento	2	2012	10	2017	B	AR
367	CAVALLETTI          	DESCOLE             	                    	Marina              	\N	DNI 	27061374	27	27061374	3	F	1978-12-15	\N	\N	367	A	Avellaneda	2	2012	10	2017	B	AR
338	GURVIT              	\N	                    	María Julieta       	\N	DNI 	25612528	27	25612528	0	F	1976-11-03	\N	\N	338	A	Ciudad Autónoma de Buenos Aires	2	2012	10	2017	C	AR
333	ABRAN               	\N	                    	Sabrina Paula       	\N	DNI 	24775557	27	24775557	3	F	1975-07-04	\N	\N	333	A	Ciudad Autónoma de Buenos Aires	2	2012	10	2017	C	AR
377	MARTINEZ            	CARLOCCHIA          	                    	Adriana Norma       	\N	DNI 	10425621	27	10425621	5	F	1952-04-18	\N	\N	377	P	Ciudad Autónoma de Buenos Aires	2	2012	10	2022	C	AR
302	ALVARELLOS          	NOVELLO             	                    	Lucila              	\N	DNI 	33490032	27	33490032	6	F	1987-11-09	\N	\N	302	A	Quilmes	1	2012	10	2017	B	AR
305	BRASLAVSKY          	RAMOS               	                    	Eliana Sonia        	\N	DNI 	31407825	27	31407825	5	F	1984-11-27	\N	\N	305	P	Ciudad Autónoma de Buenos Aires	1	2012	2	2023	C	AR
329	PINTOS              	MONTIEL             	                    	Carlos Alberto      	\N	DNI 	31135654	20	31135654	3	M	1985-06-16	\N	\N	329	P	Don Bosco	2	2012	2	2023	B	AR
341	VILIANI             	ARÉVALO             	                    	Hernan Facundo      	\N	DNI 	24979445	20	24979445	8	M	1975-12-04	\N	\N	341	P	Don Bosco, Quilmes	2	2012	2	2023	B	AR
349	BRUNOVSKY           	MARTÍNEZ            	                    	Vanesa              	\N	DNI 	21433656	27	21433656	7	F	1970-01-01	\N	\N	349	P	Quilmes	2	2012	2	2023	B	AR
350	MARADEI             	PANETTA             	                    	Marcela Fabiana     	\N	DNI 	31234997	27	31234997	9	F	1984-10-16	\N	\N	350	P	Villa Sarmiento, Morón	2	2012	2	2023	B	AR
356	FOLCO               	BOSOTTA             	VÁZQUEZ             	María Ignacia       	\N	DNI 	23669637	27	23669637	0	F	1974-01-25	\N	\N	356	P	Ciudad Autónoma de Buenos Aires	2	2012	2	2023	C	AR
357	ANDRADE             	\N	                    	Leonardo Raul       	\N	DNI 	20394765	20	20394765	9	M	1968-12-17	\N	\N	357	P	Lanús	2	2012	2	2023	B	AR
362	KUKULIANSKI         	ESPINOSA            	                    	León Ezequiel       	\N	DNI 	35319329	20	35319329	6	M	1990-08-11	\N	\N	362	P	Ciudad Autónoma de Buenos Aires	2	2012	2	2023	\N	AR
363	MATOS               	\N	                    	Rubén Gastón        	\N	DNI 	28696780	23	28696780	9	M	1981-02-20	\N	\N	363	P	Ciudad Autónoma de Buenos Aires	2	2012	2	2023	C	AR
364	FAVA                	\N	                    	Vanina              	\N	DNI 	25659105	27	25659105	2	F	1976-12-28	\N	\N	364	P	Lomas de Zamora	2	2012	2	2023	B	AR
365	SOIFER              	SAMOILOVICH         	                    	Alejandro Javier    	\N	DNI 	30555836	20	30555836	3	M	1983-09-20	\N	\N	365	P	Ciudad Autónoma de Buenos Aires	2	2012	2	2023	C	AR
368	EMETZ               	PÉREZ               	                    	Elisa Carolina      	\N	DNI 	24923169	27	24923169	5	F	1975-11-03	\N	\N	368	P	Ciudad Autónoma de Buenos Aires	2	2012	2	2023	C	AR
369	SOSA                	ROLÓN               	                    	Guillermo Walter    	\N	DNI 	25974113	20	25974113	1	M	1977-03-10	\N	\N	369	P	Quilmes	2	2012	2	2023	B	AR
371	JAWTUSCHENKO        	PASSO SUERO         	                    	Alexis Boris        	\N	DNI 	29006449	20	29006449	0	M	1981-08-16	\N	\N	371	P	Lomas de Zamora	2	2012	2	2023	B	AR
373	OBREGON             	ARIAS               	LONGO               	María Cecilia       	\N	DNI 	23026226	27	23026226	3	F	1973-04-06	\N	\N	373	P	Avellaneda	2	2012	2	2023	B	AR
374	GARBUGLIA           	LOYOLA              	                    	Cristian Ariel      	\N	DNI 	30778500	20	30778500	6	M	1984-03-17	\N	\N	374	P	Avellaneda	2	2012	2	2023	B	AR
375	SBOROVSKY           	\N	                    	Carolina            	\N	DNI 	27181606	27	27181606	0	F	1979-02-10	\N	\N	375	P	Concordia	2	2012	2	2023	E	AR
380	MIRANDA             	MESAGLIO            	                    	Alfredo Manuel      	\N	DNI 	28752730	20	28752730	7	M	1981-05-03	\N	\N	380	P	Ciudad Autónoma de Buenos Aires	2	2012	2	2023	C	AR
383	MELANO              	\N	                    	Ignacio Emmanuel    	\N	DNI 	30939770	20	30939770	4	M	1984-06-16	\N	\N	383	P	Luján	2	2012	2	2023	B	AR
387	MENAZZI CANESE      	CANESE              	                    	María Luján         	\N	DNI 	29480415	27	29480415	9	F	1982-04-20	\N	\N	387	P	Ciudad Autónoma de Buenos Aires	2	2012	2	2023	C	AR
1372	DEL PALACIO         	\N	                    	Alejandro           	\N	DNI 	32897435	20	32897435	6	M	1987-03-09	\N	\N	1372	A	Capital Federal	4	2015	12	2019	C	AR
1654	VICUÑA              	\N	                    	Javier Esteban      	\N	DNI 	14722392	20	14722392	8	M	1961-07-20	\N	\N	1654	A	Lomas de Zamora	11	2015	8	2021	B	AR
401	GRASSO              	CAVALIEN            	                    	Agustina            	\N	DNI 	32340690	27	32340690	7	F	1986-05-27	\N	\N	401	A	Ciudad Autónoma de Buenos Aires	3	2012	10	2017	C	AR
389	MERNES              	STEPSYS             	                    	Mario Julián        	\N	DNI 	30639652	20	30639652	9	M	1983-12-11	\N	\N	389	A	Ciudad Autónoma de Buenos Aires	3	2012	10	2017	C	AR
448	CELIZ               	\N	                    	Silvina Alejandra   	\N	DNI 	21652861	27	21652861	7	F	1970-07-04	\N	\N	448	P	Amte Brown	3	2012	12	2021	B	AR
405	BARCELO             	\N	TRYFON              	Claudia Esther      	\N	DNI 	17224150	27	17224150	1	F	1964-10-14	\N	\N	405	A	Avellaneda	3	2012	5	2014	B	AR
2390	RODRIGUEZ           	\N	                    	Maria Emilia        	\N	DNI 	30502131	27	30502131	3	F	1983-08-27	\N	\N	2390	A	BUENOS  AIRES	10	2022	10	2022	B	AR
386	OSUNA               	ENIGLIONE           	                    	Patricia Graciela   	\N	DNI 	12581319	23	12581319	4	F	1958-05-10	\N	\N	386	P	Lanús	2	2012	10	2022	B	AR
391	MORAS               	\N	                    	Rosana Beatriz      	\N	DNI 	14923641	23	14923641	4	F	1961-12-08	\N	\N	391	P	Ciudad Autónoma de Buenos Aires	3	2012	10	2022	C	AR
417	BELZUN              	\N	CRUZ                	Carmen Margarita    	\N	DNI 	12108765	27	12108765	6	F	1958-07-16	\N	\N	417	P	Tigre	3	2012	10	2022	B	AR
402	MARINO              	\N	                    	Alfredo Alberto     	\N	DNI 	8104609	20	8104609	4	M	1949-11-04	\N	\N	402	J	Ciudad Autónoma de Buenos Aires	3	2012	11	2022	C	AR
409	LORENZO             	VILLANUEVA          	                    	Federico            	\N	DNI 	34517307	20	34517307	3	M	1989-06-11	\N	\N	409	A	Lanús	3	2012	3	2019	B	AR
414	MARRONE             	MIGLIOLI            	                    	Leticia             	\N	DNI 	25495721	27	25495721	1	F	1976-08-16	\N	\N	414	A	Ciudad Autónoma de Buenos Aires	3	2012	3	2019	C	AR
1373	FEROLETO            	\N	                    	Florencia Carla     	\N	DNI 	34454601	27	34454601	6	F	1989-03-15	\N	\N	1373	A	CAPITAL FEDERAL	5	2015	12	2019	C	AR
361	PISANO              	\N	                    	Juan Ignacio        	\N	DNI 	29246346	20	29246346	5	M	1981-12-02	\N	\N	361	P	Ciudad Autónoma de Buenos Aires	2	2012	2	2023	C	AR
382	SOCCODATO           	ESPEJO              	                    	Mariana             	\N	DNI 	30277789	27	30277789	1	F	1983-05-12	\N	\N	382	P	Ciudad Autóonoma de Buenos Aires	2	2012	2	2023	C	AR
384	LONGO               	CHIARELLA           	                    	Fabio Miguel        	\N	DNI 	20406955	20	20406955	8	M	1969-05-20	\N	\N	384	P	Ciudad Autónoma de Buenos Aires	2	2012	2	2023	C	AR
388	MANEFFA             	BRUN                	                    	Marisa Paula        	\N	DNI 	31206926	27	31206926	7	F	1984-09-09	\N	\N	388	P	Ciudad Autónoma de Buenos Aires	3	2012	2	2023	C	AR
393	MERA                	ZOMBERG             	                    	Gabriela Silvina    	\N	DNI 	27777857	27	27777857	8	F	1979-12-07	\N	\N	393	P	Ciudad Autónoma de Buenos Aires	3	2012	2	2023	\N	AR
395	DI NARDO            	TESSI               	                    	María Virginia      	\N	DNI 	17805050	27	17805050	3	F	1966-10-17	\N	\N	395	P	Avellaneda	3	2012	2	2023	B	AR
399	FERNANDEZ           	\N	                    	Leandro Sebastián   	\N	DNI 	29503173	20	29503173	6	M	1982-04-27	\N	\N	399	P	Ciudad Autónoma de Buenos Aires	3	2012	2	2023	C	AR
1709	SANTORUM            	\N	                    	Maria Victoria      	\N	DNI 	32530288	27	32530288	2	F	1986-09-13	\N	\N	1709	P	Buenos Aires	3	2016	2	2023	B	AR
403	RAMOS               	MARTÍNEZ            	                    	Mariana Agostina    	\N	DNI 	37688202	27	37688202	6	F	1993-06-28	\N	\N	403	P	Ciudad Autónoma de Buenos Aires	3	2012	2	2023	C	AR
406	HAYES               	\N	                    	Alejandro Luis      	\N	DNI 	24379217	24	24379217	3	M	1975-04-10	\N	\N	406	P	Ciudad Autónoma de Buenos Aires	3	2012	2	2023	C	AR
411	DIESSLER            	HISSE               	COSENTINO           	Mariana Cecilia     	\N	DNI 	26934828	27	26934828	9	F	1978-10-18	\N	\N	411	P	Ciudad Autónoma de Buenos Aires	3	2012	2	2023	C	AR
412	PICCIONE            	\N	                    	Pablo Ángel         	\N	DNI 	34828363	20	34828363	5	M	1989-06-13	\N	\N	412	P	Quilmes	3	2012	2	2023	B	AR
413	BIAGINI             	ARGENTO             	                    	Daniel              	\N	DNI 	30289556	20	30289556	3	M	1983-07-24	\N	\N	413	P	Ciudad Autónoma de Buenos Aires	3	2012	2	2023	C	AR
415	RAMOS               	\N	                    	Julia María         	\N	DNI 	28460662	27	28460662	6	F	1980-07-23	\N	\N	415	P	Ciudad Autónoma de Buenos Aires	3	2012	2	2023	C	AR
420	ARGÜELLO            	ÁVALOS              	                    	Laura Cecilia       	\N	DNI 	26101246	23	26101246	4	F	1977-07-27	\N	\N	420	P	Vicente López	3	2012	2	2023	B	AR
421	NAUDEAU             	DOMÑINGUEZ          	                    	Carolina Gisele     	\N	DNI 	30870296	27	30870296	6	F	1984-06-01	\N	\N	421	P	Lanús	3	2012	2	2023	B	AR
428	FERNANDEZ MURIANO   	\N	                    	Nicolás             	\N	DNI 	24508237	20	24508237	2	M	1975-03-12	\N	\N	428	P	Bahía Blanca	3	2012	2	2023	B	AR
439	GODOY               	\N	                    	Gabriela Marcelina  	\N	DNI 	23170035	27	23170035	3	F	1973-02-15	\N	\N	439	P	Ciudad Autónoma de Buenos Aires	3	2012	2	2023	C	AR
442	SAN MARTIN DUCRET   	DUCRET              	                    	Martino André       	\N	DNI 	93197550	20	93197550	2	M	1981-07-14	\N	\N	442	P	Quilpue	3	2012	2	2023	\N	CL
443	DELGADO             	DENAZIS             	                    	Pablo Manuel        	\N	DNI 	31256857	20	31256857	9	M	1984-10-16	\N	\N	443	P	Avellaneda	3	2012	2	2023	B	AR
444	MIRANDA             	DEGIROLAMO          	                    	Mariana Gisela      	\N	DNI 	27636225	27	27636225	4	F	1979-08-30	\N	\N	444	P	Ciudad Autónoma de Buenos Aires	3	2012	2	2023	C	AR
451	TOTINO              	ABELLEIRA           	ESQUIVEL            	Mariana             	\N	DNI 	26405518	27	26405518	6	F	1978-01-12	\N	\N	451	P	Ciudad Autónoma de Buenos Aires	4	2012	2	2023	C	AR
1062	SANTORO             	\N	                    	Silvana Marisa      	\N	DNI 	23068726	27	23068726	4	F	1973-01-18	\N	\N	1062	P	Avellaneda	4	2014	2	2023	B	AR
958	VARELA              	\N	                    	Graciela Laura      	\N	DNI 	17535308	27	17535308	4	F	1965-08-21	\N	\N	958	P	CAPITAL FEDERAL	12	2013	5	2023	C	AR
381	SANCHEZ             	LAMELAS             	                    	Claudio Alberto     	\N	DNI 	22452897	20	22452897	4	M	1971-12-16	\N	\N	381	A	Sarandí	2	2012	6	2023	B	AR
404	FERNANDEZ           	\N	                    	Claudio             	\N	DNI 	10932261	20	10932261	0	M	1953-09-08	\N	\N	404	A	Avellaneda	3	2012	12	2020	B	AR
457	TRIGO               	FERNÁNDEZ           	                    	Andrea Monica       	\N	DNI 	22644476	27	22644476	4	F	1972-02-20	\N	\N	457	A	Ciudad Autónoma de Buenos Aires	4	2012	1	2017	C	AR
408	MENDOZA PADILLA     	DOS REIS            	                    	Miguel Adrian       	\N	DNI 	17569252	20	17569252	6	M	1965-10-04	\N	\N	408	A	San Fernando	3	2012	1	2017	B	AR
432	STAFFOLANI          	ACOSTA              	LARROCCA            	Mariela Alejandra   	\N	DNI 	20560250	27	20560250	5	F	1968-12-19	\N	\N	432	A	Ciudad Autónoma de Buenos Aires	3	2012	2	2017	C	AR
459	HUARACHI VILLAMONTES	VILLAMONTES         	AMURRIO             	Ruth                	\N	DNI 	18675542	27	18675542	7	F	1967-03-01	\N	\N	459	A	Cochabamba	4	2012	10	2017	\N	BO
467	LEON                	MISCIONE            	BALLARINI           	Vanina Andrea       	\N	DNI 	26588162	27	26588162	4	F	1978-04-15	\N	\N	467	A	Ciudad Autónoma de Buenos Aires	4	2012	10	2017	C	AR
458	PAEZ                	BUSTOS              	                    	Claudia Patricia    	\N	DNI 	16144595	27	16144595	4	F	1961-10-25	\N	\N	458	A	Quilmes	4	2012	10	2017	B	AR
425	GUBITOSI            	\N	                    	Guillermo Luis      	\N	DNI 	4627853	20	4627853	5	M	1943-03-14	\N	\N	425	J	La Plata	3	2012	2	2021	B	AR
447	SUCO                	TREVISANU           	                    	Adriana Laura       	\N	DNI 	18133876	27	18133876	3	F	1964-07-04	\N	\N	447	P	Ciudad Autónoma de Buenos Aires	3	2012	6	2021	C	AR
418	BURGOS              	\N	                    	Francisco Roberto   	\N	DNI 	21605567	20	21605567	6	M	1970-05-06	\N	\N	418	A	Avellaneda	3	2012	7	2021	B	AR
1993	CAMARDELLI          	\N	                    	Agustin Pedro       	\N	DNI 	34415703	20	34415703	1	M	1989-03-06	\N	\N	1993	A	LANUS	4	2018	7	2021	B	AR
468	PEREZ CARUSI        	CARUSI              	ROCHA               	Lorena Cynthia      	\N	DNI 	29059392	27	29059392	7	F	1981-10-23	\N	\N	468	A	Ciudad Autónoma de Buenos Aires	4	2012	10	2017	C	AR
445	VIQUEIRA            	JUÁREZ              	                    	Veronica Gisela     	\N	DNI 	30007471	27	30007471	0	F	1983-08-02	\N	\N	445	A	Ciudad Autónoma de Buenos Aires	3	2012	10	2017	C	AR
347	PINTOS SANCHEZ      	SÁNCHEZ ROMERO      	                    	Roberto Esteban     	\N	DNI 	92477446	20	92477446	1	M	1958-08-03	\N	\N	347	A	Montevideo	2	2012	10	2017	\N	UY
1655	QUINTANA            	\N	                    	Rocio               	\N	DNI 	27791993	27	27791993	7	F	1980-01-06	\N	\N	1655	A	La Plata	11	2015	12	2019	B	AR
464	PECULO              	BEVILACQUA          	                    	Ricardo Alberto     	\N	DNI 	8392167	20	8392167	7	M	1950-09-29	\N	\N	464	P	Ciudad Autónoma de Buenos Aires	4	2012	10	2022	C	AR
469	GARAÑO              	\N	                    	Pablo Alberto       	\N	DNI 	5221654	20	5221654	1	M	1947-09-17	\N	\N	469	P	Ciudad Autónoma de Buenos Aires	4	2012	10	2022	C	AR
472	ROSETI              	STAZO               	                    	Laura Patricia      	\N	DNI 	16137637	27	16137637	5	F	1962-05-25	\N	\N	472	P	Ciudad Autónoma de Buenos Aires	4	2012	10	2022	C	AR
430	GAMBOA              	TOLEDO              	                    	Sergio Rene         	\N	DNI 	16898346	20	16898346	9	M	1964-06-28	\N	\N	430	A	Miramar	3	2012	3	2020	B	AR
407	RECK  BARBARA       	BÁRBARA             	                    	Luciana Lorena      	\N	DNI 	33217245	27	33217245	5	F	1987-11-11	\N	\N	407	P	Posadas	3	2012	2	2023	N	AR
450	ARCE                	PETRILLO            	                    	Andrea Silvia       	\N	DNI 	17485617	27	17485617	1	F	1964-12-11	\N	\N	450	P	Lomas de Zamora	4	2012	2	2023	B	AR
461	MENDOZA PADILLA     	\N	                    	Alberto Leonardo    	\N	DNI 	20496640	20	20496640	1	M	1968-07-21	\N	\N	461	P	Alderetes	4	2012	2	2023	T	AR
462	CUNTIN              	MANUELLE            	                    	María Sol           	\N	DNI 	26588318	23	26588318	4	F	1978-05-04	\N	\N	462	P	Ciudad Autónoma de Buenos Aires	4	2012	2	2023	C	AR
465	DE MARCHIO          	\N	PASSADORE           	Carolina Graciela   	\N	DNI 	21688088	27	21688088	4	F	1970-06-21	\N	\N	465	P	Mendoza	4	2012	2	2023	M	AR
466	CROCE               	BLAZEWICZ           	                    	Maximiliano         	\N	DNI 	30650079	20	30650079	2	M	1983-12-18	\N	\N	466	P	Avellaneda	4	2012	2	2023	B	AR
470	RABANAL             	FRIGERI LÓPEZ       	                    	Mercedes            	\N	DNI 	33157526	27	33157526	2	F	1987-10-24	\N	\N	470	P	Ciudad Autónoma de Buenos Aires	4	2012	2	2023	C	AR
471	MIÑANA              	ALBERTI             	                    	Luis Javier         	\N	DNI 	29551900	20	29551900	3	M	1983-01-18	\N	\N	471	P	Cutral-Có	4	2012	2	2023	Q	AR
473	PANES               	GALLO               	                    	Sandra Emilce       	\N	DNI 	17740322	27	17740322	4	F	1966-02-07	\N	\N	473	P	Ciudad Autónoma de Buenos Aires	4	2012	2	2023	C	AR
475	CELLI               	MORRERA             	                    	Alejandro Emmanuel  	\N	DNI 	29952236	23	29952236	9	M	1982-12-01	\N	\N	475	P	Ciudad Autónoma de Buenos Aires	4	2012	2	2023	C	AR
478	GOYANES             	VALLETTA            	                    	Juan Manuel         	\N	DNI 	22363795	20	22363795	8	M	1971-09-15	\N	\N	478	P	Ciudad Autónoma de Buenos Aires	5	2012	2	2023	C	AR
480	SUFFERN QUIRNO      	CENTURIÓN           	CUERVO              	Dominique           	\N	DNI 	22005789	27	22005789	0	F	1971-02-10	\N	\N	480	P	Ciudad Autónoma de Buenos Aires	5	2012	2	2023	C	AR
481	MARESCA             	ZECCA               	                    	Maximilano Esteban  	\N	DNI 	24586114	20	24586114	2	M	1975-06-25	\N	\N	481	P	Rosario	5	2012	2	2023	S	AR
482	YAPURA              	SOSA                	                    	Marcos Samuel       	\N	DNI 	37163252	20	37163252	3	M	1993-04-30	\N	\N	482	P	Rosario de Lerma	5	2012	2	2023	A	AR
488	DE CELIS            	NUÑEZ               	                    	Jorge Pablo         	\N	DNI 	17682731	23	17682731	9	M	1966-06-30	\N	\N	488	P	Sarandí, Avellaneda	5	2012	2	2023	B	AR
489	DEFELIPE            	NOVO                	                    	Florencia           	\N	DNI 	34704312	27	34704312	0	F	1989-09-30	\N	\N	489	P	CABA	5	2012	2	2023	C	AR
490	ALUNNI              	BILLIA              	                    	Juan Roberto        	\N	DNI 	14501835	20	14501835	9	M	1961-05-26	\N	\N	490	P	Lanús	5	2012	2	2023	B	AR
494	SIRVIENTE           	BALLADA             	OTERO               	Valeria Verónica    	\N	DNI 	23506193	27	23506193	2	F	1973-11-05	\N	\N	494	P	Lomas de Zamora	5	2012	2	2023	B	AR
429	HEISLITZ            	BARBERI             	                    	Walter Guillermo    	\N	DNI 	23276641	20	23276641	8	M	1973-03-25	\N	\N	429	A	Capital Federal	3	2012	2	2023	C	AR
1067	FRANCO              	\N	                    	Daniel Omar         	\N	DNI 	14562678	20	14562678	2	M	1962-03-05	\N	\N	1067	P	BURZACO	4	2014	2	2023	B	AR
427	ULIANA              	\N	                    	Santiago Miguel     	\N	DNI 	22598898	20	22598898	7	M	1972-05-15	\N	\N	427	A	La Plata	3	2012	9	2020	B	AR
501	BAZAN               	\N	                    	Ximena Soledad      	\N	DNI 	27778397	27	27778397	0	F	1979-12-18	\N	\N	501	A	Ciudad Autónoma de Buenos Aires	6	2012	10	2017	C	AR
499	JIMENEZ MONTERO     	MONTERO             	                    	Alejandro Ezequiel  	\N	DNI 	32402055	20	32402055	2	M	1986-05-27	\N	\N	499	A	Ciudad Autónoma de Buenos Aires	5	2012	10	2017	C	AR
486	CARPINTERO          	\N	                    	Jorge Alejandro     	\N	DNI 	23877923	20	23877923	6	M	1974-08-28	\N	\N	486	A	Ciudad Autónoma de Buenos Aires	5	2012	11	2017	C	AR
424	DI SANTO            	COLOMBO             	                    	Walter Patricio     	\N	DNI 	21890213	20	21890213	9	M	1970-11-06	\N	\N	424	A	San Nicolás	3	2012	2	2022	B	AR
449	FERNANDEZ ALVAREZ   	SCORZA              	                    	Alejandro Cristian  	\N	DNI 	12150642	20	12150642	5	M	1955-10-26	\N	\N	449	A	Ciudad Autónoma de Buenos Aires	3	2012	3	2022	C	AR
452	QUISPE              	\N	                    	Luisa Lidia         	\N	DNI 	5763913	27	5763913	5	F	1947-10-20	\N	\N	452	J	Humahuaca	4	2012	5	2022	Y	AR
456	PEREZ               	RIOBO               	                    	Maria del Carmen    	\N	DNI 	10762086	27	10762086	4	F	1953-06-02	\N	\N	456	J	Ciudad Autónoma de Buenos Aires	4	2012	5	2022	C	AR
496	PIASTRELLINI        	RODRÍGUEZ           	                    	Enrique Alberto     	\N	DNI 	16962668	20	16962668	6	M	1964-09-04	\N	\N	496	A	Ciudad Autónoma de Buenos Aires	5	2012	9	2014	C	AR
502	VILAS               	\N	FERREIRA MAKI       	Paula Cristina      	\N	DNI 	17362693	27	17362693	8	F	1964-10-15	\N	\N	502	A	Ciudad Autónoma de Buenos Aires	6	2012	5	2014	C	AR
1178	SORUCO              	DOMINGUEZ           	                    	María Fernanda      	\N	DNI 	24913875	23	24913875	4	F	1975-12-05	\N	\N	1178	A	Lomas de Zamora	6	2014	8	2019	B	AR
503	FERRER              	REQUENI             	FELL                	María Clara         	\N	DNI 	12596826	27	12596826	6	F	1958-06-12	\N	\N	503	P	Ciudad Autónoma de Buenos Aires	6	2012	10	2022	C	AR
479	BURKIEWICZ          	\N	                    	Monica Cristina     	\N	DNI 	12465307	27	12465307	5	F	1958-08-14	\N	\N	479	P	Wilde, Avellaneda	5	2012	10	2022	B	AR
537	CERIALE             	VIGNOLO             	                    	Carlos Daniel       	\N	DNI 	12000175	20	12000175	3	M	1958-01-13	\N	\N	537	P	Lomas de Zamora	7	2012	8	2014	B	AR
696	ZARRINI             	\N	                    	Nancy Mabel         	\N	DNI 	14456849	23	14456849	4	F	1961-04-01	\N	\N	696	A	Avellaneda	3	2013	6	2016	B	AR
483	ESTRUCH             	CORTÉS              	                    	Dolores             	\N	DNI 	25106933	27	25106933	1	F	1976-03-15	\N	\N	483	P	Avellaneda	5	2012	2	2023	B	AR
485	MENDEZ CUQUEJO      	CUQUEJO             	                    	Carlos Roberto      	\N	DNI 	23804516	23	23804516	9	M	1974-05-21	\N	\N	485	P	Ciudad Autónoma de Buenos Aires	5	2012	2	2023	C	AR
492	ESCORCIELO          	CASTAÑE             	                    	Paula Micaela       	\N	DNI 	33457085	27	33457085	7	F	1987-11-17	\N	\N	492	P	Ciudad Autónoma de Buenos Aires	5	2012	2	2023	C	AR
493	BELLISOMI           	FERNÁNDEZ CHICLANA  	                    	Gisela              	\N	DNI 	33850936	27	33850936	2	F	1988-07-06	\N	\N	493	P	La Plata	5	2012	2	2023	B	AR
498	BONFILI             	MOYANO              	                    	Hector Fernando     	\N	DNI 	33301664	20	33301664	9	M	1988-02-14	\N	\N	498	P	El Palomar	5	2012	2	2023	B	AR
507	BARBUTO             	MARCHETTI           	                    	Gabriela            	\N	DNI 	17975178	27	17975178	5	F	1966-07-21	\N	\N	507	P	Ciudad Autónoma de Buenos Aires	6	2012	2	2023	C	AR
508	RODRIGUEZ           	MARTÍNEZ            	                    	Verónica Laura      	\N	DNI 	23945515	27	23945515	3	F	1974-04-29	\N	\N	508	P	San Fernando	6	2012	2	2023	B	AR
514	ANSO                	\N	                    	Ayelen Romina       	\N	DNI 	31541979	23	31541979	4	F	1985-05-22	\N	\N	514	P	Ciudad Autónoma de Buenos Aires	6	2012	2	2023	C	AR
517	SALABERRY           	HOHLOCH             	                    	Pedro Martín        	\N	DNI 	24560736	23	24560736	9	M	1975-06-02	\N	\N	517	P	Ciudad Autónoma de Buenos Aires	6	2012	2	2023	C	AR
519	CASTRO GODOY        	\N	                    	Silvia Edith        	\N	DNI 	17083767	27	17083767	9	F	1965-03-22	\N	\N	519	P	Escobar	6	2012	2	2023	B	AR
520	PACCIANI            	DI BLASI            	                    	Norberto Víctor     	\N	DNI 	26932521	20	26932521	7	M	1978-12-18	\N	\N	520	P	Ciudad Autónoma de Buenos Aires	6	2012	2	2023	C	AR
521	AZNAR               	ARCHENTI            	                    	Alumine             	\N	DNI 	92566776	27	92566776	0	F	1978-10-06	\N	\N	521	P	Caracas	6	2012	2	2023	\N	VE
525	GAMBA               	\N	                    	Carolina            	\N	DNI 	30727769	27	30727769	2	F	1984-06-07	\N	\N	525	P	Santa Rosa	6	2012	2	2023	L	AR
526	GIANGRECO           	COSTA               	                    	Silvio              	\N	DNI 	17392367	20	17392367	9	M	1965-02-21	\N	\N	526	P	Avellaneda	6	2012	2	2023	B	AR
529	WALENTEN            	\N	                    	Mariela Andrea      	\N	DNI 	26885442	27	26885442	3	F	1978-09-25	\N	\N	529	P	Ciudad Autónoma de Buenos Aires	7	2012	2	2023	C	AR
531	PEÑA                	\N	                    	Juan Pablo          	\N	DNI 	22550318	20	22550318	5	M	1971-12-20	\N	\N	531	P	Morón	7	2012	2	2023	B	AR
536	OTTAVIS ARIAS       	\N	                    	Tomás               	\N	DNI 	27923159	20	27923159	8	M	1981-06-29	\N	\N	536	P	Ciudad Autónoma de Buenos Aires	7	2012	2	2023	C	AR
540	KRICHESKY           	\N	                    	Marcelo David       	\N	DNI 	14407326	20	14407326	7	M	1961-10-23	\N	\N	540	P	Ciudad Autónoma de Buenos Aires	7	2012	2	2023	C	AR
542	GONZALEZ RIZZUTO    	\N	                    	Augusto Martín      	\N	DNI 	37953747	20	37953747	3	M	1993-10-16	\N	\N	542	P	Quilmes	7	2012	2	2023	B	AR
543	STOCKL              	DE ARRIBA           	                    	Fernando            	\N	DNI 	20159123	20	20159123	7	M	1968-01-08	\N	\N	543	P	San Miguel	7	2012	2	2023	T	AR
1171	BILA                	\N	                    	Martin Sebastian    	\N	DNI 	24882757	20	24882757	3	M	1976-01-21	\N	\N	1171	P	CAPITAL FEDERAL	6	2014	2	2023	C	AR
1055	MARTINEZ CABRERA    	\N	                    	Silvina Mariel      	\N	DNI 	29313855	27	29313855	4	F	1982-08-19	\N	\N	1055	P	Ituzaingó	4	2014	5	2023	B	AR
437	OLMOS               	\N	                    	Hector Ariel        	\N	DNI 	10691395	20	10691395	2	M	1953-01-13	\N	\N	437	J	Ciudad Autónoma de Buenos Aires	3	2012	3	2023	C	AR
1994	VELEDA              	\N	                    	Sebastian           	\N	DNI 	25191127	20	25191127	5	M	1976-03-23	\N	\N	1994	A	La Plata	4	2018	6	2023	B	AR
544	ABDELJALEK          	\N	                    	Graciela            	\N	DNI 	16026185	23	16026185	4	F	1962-07-30	\N	\N	544	P	La Plata	7	2012	6	2017	B	AR
518	AGUAYO              	\N	                    	Patricia Esther     	\N	DNI 	14258938	27	14258938	4	F	1961-08-23	\N	\N	518	A	Posadas	6	2012	10	2017	N	AR
516	FELL                	FERRER              	                    	Sebastián Pablo     	\N	DNI 	34573130	20	34573130	0	M	1989-11-07	\N	\N	516	A	Avellaneda	6	2012	10	2017	B	AR
551	STEIMAN             	MARTINI             	                    	Juan Pablo          	\N	DNI 	27528525	20	27528525	1	M	1979-06-25	\N	\N	551	A	Lomas de Zamora	8	2012	8	2012	B	AR
1656	SCHELL              	\N	                    	Diego Gaston        	\N	DNI 	24378332	20	24378332	2	M	1975-01-21	\N	\N	1656	P	CAPITAL FEDERAL	11	2015	4	2022	C	AR
532	ARTESI              	\N	                    	Ricardo Mario       	\N	DNI 	11303455	20	11303455	7	M	1954-06-21	\N	\N	532	P	Ciudad Autónoma de Buenos Aires	7	2012	12	2019	C	AR
1657	ASA                 	\N	                    	Pablo Jose          	\N	DNI 	23702609	20	23702609	9	M	1975-02-09	\N	\N	1657	A	CAPITAL FEDERAL	11	2015	12	2019	C	AR
541	GHIRARDO            	\N	                    	Rubén Silvio        	\N	DNI 	10921918	20	10921918	6	M	1953-09-05	\N	\N	541	P	Ciudad Autónoma de Buenos Aires	7	2012	10	2022	C	AR
1070	LOPEZ               	\N	                    	Maria Victoria      	\N	DNI 	28679077	27	28679077	7	F	1980-11-23	\N	\N	1070	A	BUENOS AIRES	4	2014	1	2017	B	AR
553	MOREL FRANCO        	FRANCO              	                    	Perla Gladycila     	\N	DNI 	92466481	27	92466481	4	F	1971-09-06	\N	\N	553	A	Carapaguá	8	2012	4	2017	\N	PY
510	MACLEAN             	\N	                    	Maria Elisa         	\N	DNI 	18328651	27	18328651	5	F	1967-05-21	\N	\N	510	A	Ciudad Autónoma de Buenos Aires	6	2012	4	2017	C	AR
177	MUZON               	PEREZ               	                    	Javier              	\N	DNI 	14774567	20	14774567	3	M	1961-12-11	\N	\N	177	A	Capital Federal	8	2011	9	2017	C	AR
568	COLONA              	GULA                	                    	Cecilia             	\N	DNI 	25360872	27	25360872	8	F	1976-07-08	\N	\N	568	A	Ciudad Autónoma de Buenos Aires	9	2012	10	2017	C	AR
554	KEARNEY             	\N	                    	Eduardo             	\N	DNI 	10361271	20	10361271	4	M	1952-10-14	\N	\N	554	A	Lomas de Zamora	8	2012	10	2017	B	AR
589	NAZAR               	GONZALEZ            	                    	Fernando Ariel      	\N	DNI 	20528385	20	20528385	5	M	1969-01-22	\N	\N	589	A	Córdoba	10	2012	10	2017	X	AR
570	PAULUK              	LÓPEZ               	                    	Emmanuel Mariano    	\N	DNI 	29280680	23	29280680	9	M	1981-11-08	\N	\N	570	A	Banfield	9	2012	10	2017	B	AR
592	KUPERMAN ROMERO     	\N	                    	Oscar Sebastián     	\N	DNI 	33779664	20	33779664	9	M	1988-04-11	\N	\N	592	P	Ciudad Autónoma de Buenos Aires	10	2012	2	2023	C	AR
573	RUIZ                	MERCADO             	                    	Juan Carlos         	\N	DNI 	12622540	20	12622540	8	M	1958-12-27	\N	\N	573	A	Ciudad Autónoma de Buenos Aires	9	2012	10	2017	C	AR
332	HARRACA             	DI LORENZO          	                    	Mariano Andrés      	\N	DNI 	31477043	23	31477043	9	M	1985-02-04	\N	\N	332	P	Ciudad Autónoma de Buenos Aires	2	2012	2	2023	C	AR
504	VIGNOLO             	\N	                    	Hernan Pablo        	\N	DNI 	26134041	20	26134041	1	M	1977-08-08	\N	\N	504	P	Ciudad Autónoma de Buenos Aires	6	2012	2	2023	C	AR
505	ALVAREZ             	HEINZE              	                    	Adriana Gisele      	\N	DNI 	31993001	27	31993001	4	F	1986-02-13	\N	\N	505	P	Avellaneda	6	2012	2	2023	B	AR
515	CASTRONUOVO         	\N	ACEVEDO             	Debora Cintia       	\N	DNI 	25148064	27	25148064	3	F	1976-01-08	\N	\N	515	P	Lanús	6	2012	2	2023	B	AR
527	BIANCHI             	\N	                    	Paula Daniela       	\N	DNI 	23593459	27	23593459	6	F	1973-10-01	\N	\N	527	P	Ciudad Autónoma de Buenos Aires	7	2012	2	2023	C	AR
528	NAZOR               	\N	                    	Olga                	\N	DNI 	10495698	27	10495698	5	F	1952-05-16	\N	\N	528	P	Rosario	7	2012	2	2023	S	AR
538	CAPUTO              	BRIGUGLIO           	                    	Juan Jose           	\N	DNI 	25385978	20	25385978	5	M	1976-05-28	\N	\N	538	P	Ciudad Autónoma de Buenos Aires	7	2012	2	2023	C	AR
545	FURNO               	D'LORETO            	PUENTE              	Adriana Isabel      	\N	DNI 	17103602	27	17103602	5	F	1964-06-23	\N	\N	545	P	Avellaneda	8	2012	2	2023	B	AR
552	DE FRANCESCO        	\N	                    	Karina Verónica     	\N	DNI 	24036957	27	24036957	0	F	1974-06-14	\N	\N	552	P	Lomas de Zamora	8	2012	2	2023	B	AR
555	RODRIGUEZ           	\N	                    	Javier Alejandro    	\N	DNI 	25022005	20	25022005	8	M	1975-11-26	\N	\N	555	P	Ciudad Autónoma de Buenos Aires	8	2012	2	2023	C	AR
556	ROMANO              	LIZARRAGA           	VILAQUI             	Liliana del Valle   	\N	DNI 	29462859	27	29462859	8	F	1982-06-26	\N	\N	556	P	Lomas de Zamora	8	2012	2	2023	B	AR
558	ETULAIN             	IAQUINTA            	                    	Estefanía           	\N	DNI 	31526617	27	31526617	9	F	1985-02-24	\N	\N	558	P	Bragado	8	2012	2	2023	B	AR
560	PAZ                 	MARTÍNEZ            	                    	Damián Andrés       	\N	DNI 	20027337	20	20027337	1	M	1968-04-28	\N	\N	560	P	Avellaneda	8	2012	2	2023	B	AR
561	OLIVERA             	GONZÁLEZ            	                    	Alejandro Marcelo   	\N	DNI 	31511423	20	31511423	4	M	1985-02-25	\N	\N	561	P	Avellaneda	8	2012	2	2023	B	AR
576	GIAMBELLUCA         	MARAZA              	                    	Julián Esteban      	\N	DNI 	26879671	20	26879671	2	M	1978-10-27	\N	\N	576	P	Lomas de Zamora	9	2012	2	2023	B	AR
578	TURRIAGA            	\N	                    	Lorena Fabiana      	\N	DNI 	25732548	27	25732548	8	F	1976-11-23	\N	\N	578	P	Ramos Mejía	9	2012	2	2023	B	AR
581	IANNIZZOTTO         	PENTITO             	                    	Noelia Flavia       	\N	DNI 	25071731	27	25071731	3	F	1976-02-13	\N	\N	581	P	Villa Domínico	9	2012	2	2023	B	AR
585	GOMEZ MENESES       	\N	                    	Ana María           	\N	DNI 	94083955	27	94083955	1	F	1983-07-01	\N	\N	585	P	Medellín	9	2012	2	2023	\N	CO
590	SANGUINETTI         	\N	                    	Ignacio Manuel      	\N	DNI 	23792303	20	23792303	1	M	1974-01-01	\N	\N	590	P	La Plata	10	2012	2	2023	B	AR
594	OTADUY              	\N	                    	Andrés              	\N	DNI 	27055438	20	27055438	6	M	1978-12-04	\N	\N	594	P	Rosario	10	2012	2	2023	S	AR
2227	BUENDIA             	\N	                    	Claribel Denise     	\N	DNI 	37141489	23	37141489	4	F	1992-11-13	\N	\N	2227	A	CABA	4	2021	8	2023	C	AR
1374	PANOSIAN            	\N	                    	Roberto Mario       	\N	DNI 	14958934	20	14958934	2	M	1962-08-15	\N	\N	1374	A	CABA	5	2015	6	2023	C	AR
1749	MARAZZI             	\N	                    	Juan Carlos         	\N	DNI 	11786927	20	11786927	0	M	1956-06-04	\N	\N	1749	A	Lomas de Zamora	5	2016	8	2023	B	AR
587	SMODLAKA            	MASCI               	                    	Damián Luis         	\N	DNI 	22675107	20	22675107	7	M	1972-02-15	\N	\N	587	A	Ciudad Autónoma de Buenos Aires	10	2012	10	2017	C	AR
320	PEREZ SOBRERO       	\N	                    	Javier Augusto      	\N	DNI 	30761835	20	30761835	5	M	1984-04-19	\N	\N	320	A	Berazategui	2	2012	10	2017	B	AR
1995	ROSSI               	\N	                    	Guillermo Eduardo   	\N	DNI 	10121282	20	10121282	4	M	1951-10-05	\N	\N	1995	A	Capital Federal	4	2018	4	2018	C	AR
539	BRITEZ              	GAUNA               	                    	Narcisa Beatriz     	\N	DNI 	22608032	27	22608032	0	M	1972-01-21	\N	\N	539	A	Ciudad Autónoma de Buenos Aires	7	2012	7	2021	C	AR
566	GLAIMAN             	GAUTE               	                    	Gabriel Arnaldo     	\N	DNI 	20892117	20	20892117	8	M	1969-05-06	\N	\N	566	A	Ciudad Autónoma de Buenos Aires	9	2012	3	2022	C	AR
583	LAZZARO             	\N	                    	Haedo Luis          	\N	DNI 	11789066	20	11789066	0	M	1955-09-09	\N	\N	583	A	Mar del Plata	9	2012	5	2022	B	AR
577	DESCOLE             	\N	CAVALLETTI          	María Isabel        	\N	DNI 	6371516	27	6371516	1	F	1950-06-24	\N	\N	577	J	Ciudad Autónoma de Buenos Aires	9	2012	5	2022	C	AR
586	SURIJON             	ZUKIER              	                    	Jonatan Gabriel     	\N	DNI 	25257833	20	25257833	2	M	1976-07-08	\N	\N	586	A	Ciudad Autónoma de Buenos Aires	9	2012	7	2016	C	AR
1665	VALSANGIACOMO BLANCO	\N	                    	Fernando Jorge      	\N	DNI 	26800203	20	26800203	1	M	1978-08-03	\N	\N	1665	A	Capital Federal	11	2015	12	2019	C	AR
636	GENNUSO             	\N	                    	Mariana Belén       	\N	DNI 	30078106	27	30078106	9	F	1983-02-02	\N	\N	636	A	La Plata	1	2013	1	2013	B	AR
579	ABBONDANZA          	\N	                    	Ma de las Mercedes  	\N	DNI 	10963119	27	10963119	7	F	1953-11-13	\N	\N	579	A	Campana	9	2012	9	2022	B	AR
622	WACHENCHAUZER       	PEREL               	JACOVKIS            	Rosa Graciela       	\N	LC  	6428415	27	6428415	6	F	1950-05-19	\N	\N	622	P	Ciudad Autónoma de Buenos Aires	11	2012	10	2022	C	AR
609	COSENZA             	\N	                    	Julian              	\N	DNI 	25559560	20	25559560	2	M	1976-11-22	\N	\N	609	A	Ciudad Autónoma de Buenos Aires	11	2012	10	2017	C	AR
593	DOMERGUE DE LORENZI 	DE LORENZI          	                    	Estela Mónica       	\N	DNI 	18315213	27	18315213	6	F	1967-04-12	\N	\N	593	A	Ciudad Autónoma de Buenos Aires	10	2012	10	2017	C	AR
588	LACLAU              	\N	                    	Cecilia Viviana     	\N	DNI 	22190023	27	22190023	0	F	1971-04-12	\N	\N	588	A	Ramos Mejía	10	2012	10	2017	B	AR
610	RIU                 	\N	                    	Jorge Aníbal        	\N	DNI 	13411928	20	13411928	5	M	1959-08-07	\N	\N	610	A	Ciudad Autónoma de Buenos Aires	11	2012	10	2017	C	AR
604	LAYANA              	\N	                    	Carla               	\N	DNI 	30427310	27	30427310	6	F	1983-04-10	\N	\N	604	A	La Plata	10	2012	9	2014	B	AR
637	LOPEZ               	\N	                    	Daniel              	\N	DNI 	22471380	20	22471380	1	M	1971-11-16	\N	\N	637	A	Ciudad Autónoma de Buenos Aires	1	2013	1	2013	C	AR
597	DI FRAIA            	RATTO               	                    	Mauro Hernán        	\N	DNI 	34559185	20	34559185	1	M	1989-07-03	\N	\N	597	P	Ciudad Autónoma de Buenos Aires	10	2012	2	2023	C	AR
598	SALAS OROÑO         	MORAZZANI           	                    	Amilcar Manuel      	\N	DNI 	24710286	20	24710286	9	M	1975-06-29	\N	\N	598	P	Ciudad Autónoma de Buenos Aires	10	2012	2	2023	C	AR
599	GONZALEZ            	\N	                    	Néstor Daniel       	\N	DNI 	23687327	20	23687327	8	M	1973-12-05	\N	\N	599	P	La Plata	10	2012	2	2023	B	AR
600	SANDOVAL            	CLIMENT             	                    	Patricio            	\N	DNI 	31091111	23	31091111	9	M	1984-08-01	\N	\N	600	P	Ciudad Autónoma de Buenos Aires	10	2012	2	2023	C	AR
602	VAZQUEZ             	\N	                    	Emiliano Víctor     	\N	DNI 	33121287	20	33121287	4	M	1987-11-16	\N	\N	602	P	Lomas de Zamora	10	2012	2	2023	B	AR
608	PICCONE             	LOPEZ               	                    	Ana Belén           	\N	DNI 	30751783	23	30751783	3	F	1984-08-07	\N	\N	608	P	Ensenada	10	2012	2	2023	B	AR
611	TESTI               	\N	                    	Carolina Natalia    	\N	DNI 	26824727	27	26824727	6	F	1978-10-05	\N	\N	611	P	Avellaneda	11	2012	2	2023	B	AR
612	GIORGINI            	SANTOS              	                    	Gisele Noelia       	\N	DNI 	29044127	27	29044127	2	F	1981-10-22	\N	\N	612	P	Lanús Este	11	2012	2	2023	B	AR
613	GARCIA              	RUELLA              	RELLER              	Patricia Viviana    	\N	DNI 	17316201	23	17316201	4	F	1964-11-28	\N	\N	613	P	Avellaneda	11	2012	2	2023	B	AR
614	MANCINELLI          	\N	GRIMALDI            	Graciela Edith      	\N	DNI 	16348298	27	16348298	9	F	1962-11-30	\N	\N	614	P	Ciudad Autónoma de Buenos Aires	11	2012	2	2023	C	AR
615	NOGUEIRA            	ECKERDT             	                    	Agustín Alejandro   	\N	DNI 	33023615	23	33023615	9	M	1987-05-12	\N	\N	615	P	Ciudad Autónoma de Buenos Aires	11	2012	2	2023	C	AR
620	BOUZAS              	MENDOZA GONZALEZ    	                    	Aldana              	\N	DNI 	35424742	27	35424742	4	F	1990-08-09	\N	\N	620	P	Quilmes	11	2012	2	2023	B	AR
623	METZ                	CRUZ                	                    	Gabriel Ignacio     	\N	DNI 	37278216	20	37278216	2	M	1993-03-06	\N	\N	623	P	Ciudad Autónoma de Buenos Aires	11	2012	2	2023	C	AR
624	FAVARO              	PEREYRA             	                    	Gustavo Ariel       	\N	DNI 	24866644	20	24866644	8	M	1976-02-11	\N	\N	624	P	San Rafael	11	2012	2	2023	M	AR
625	BALCEDO             	SANCHEZ             	                    	Pablo Daniel        	\N	DNI 	27717144	23	27717144	9	M	1979-12-14	\N	\N	625	P	Río Tercero	11	2012	2	2023	X	AR
628	SCLAUZERO           	\N	                    	Néstor José         	\N	DNI 	17217270	23	17217270	9	M	1965-05-22	\N	\N	628	P	Rosario	12	2012	2	2023	S	AR
629	LAUDANI             	CUELLO              	                    	Cristina Marta      	\N	DNI 	22983780	27	22983780	5	F	1973-02-23	\N	\N	629	P	Capital Federal	12	2012	2	2023	C	AR
633	RIVERA POMAR        	POMAR               	                    	Rolando Víctor      	\N	DNI 	16044050	20	16044050	4	M	1962-03-27	\N	\N	633	P	QUILMES	12	2012	2	2023	B	AR
638	COSTA ROJO          	ROSO                	                    	Laura María Gabriela	\N	DNI 	18815470	27	18815470	6	F	1975-06-25	\N	\N	638	P	SANTIAGO DE CHILE	1	2013	2	2023	\N	AR
640	BRESAZ              	\N	                    	Vladimir Guillermo  	\N	DNI 	25790198	20	25790198	0	M	1977-01-17	\N	\N	640	P	\N	1	2013	2	2023	\N	\N
652	CASTELLS            	\N	                    	Victoria Soledad    	\N	DNI 	32196541	27	32196541	0	F	1986-03-12	\N	\N	652	P	AVELLANEDA	2	2013	2	2023	B	AR
648	PAPAGNO             	CASTELLANO          	                    	Federico Alfredo    	\N	DNI 	29249462	23	29249462	9	F	1981-12-29	\N	\N	648	A	CAPITAL FEDERAL	2	2013	6	2016	C	AR
647	GUAITA              	CASTRO              	                    	María Inés          	\N	DNI 	20997482	27	20997482	2	F	1969-10-20	\N	\N	647	A	CORDOBA	2	2013	5	2019	X	AR
580	ACOSTA              	\N	                    	Julio Alberto       	\N	DNI 	10507783	20	10507783	2	M	1952-07-27	\N	\N	580	A	Avellaneda	9	2012	3	2022	B	AR
1064	VILA                	\N	                    	Marianela Nazaret   	\N	DNI 	29258924	27	29258924	2	F	1982-03-10	\N	\N	1064	A	AVELLANEDA	4	2014	9	2021	B	AR
617	MARTINEZ            	\N	                    	Graciela Irene      	\N	DNI 	11630626	27	11630626	9	F	1955-01-13	\N	\N	617	J	Avellaneda	11	2012	5	2022	B	AR
669	CACERES             	\N	                    	Gonzalo             	\N	DNI 	26417995	20	26417995	6	M	1978-03-21	\N	\N	669	A	CAPITAL FEDERAL	2	2013	9	2014	\N	AR
644	GARCIA              	CAPPIELLO           	                    	Lilian Beatriz      	\N	DNI 	13088440	27	13088440	2	F	1957-06-09	\N	\N	644	A	BANFIELD	1	2013	9	2014	B	AR
605	SAUCEDO             	\N	                    	Ana Maria           	\N	DNI 	16227601	27	16227601	3	F	1963-04-17	\N	\N	605	A	Santa Fe	10	2012	1	2017	S	AR
639	LUTCZAK             	Dall orto           	                    	Oscar Roman         	\N	DNI 	18121949	20	18121949	2	M	1966-11-21	\N	\N	639	A	ENSENADA	1	2013	1	2017	B	AR
666	MENDEZ              	VAZ                 	                    	María Gabriela      	\N	DNI 	27226321	27	27226321	9	F	1979-03-19	\N	\N	666	A	CAPITAL FEDERAL	2	2013	6	2017	C	AR
659	DEPINO              	IRUSTA              	                    	Viviana             	\N	DNI 	13908652	27	13908652	5	F	1960-11-24	\N	\N	659	P	LA PLATA	2	2013	10	2022	B	AR
618	DAVILA              	FARIÑA              	                    	Patricia Noemí      	\N	DNI 	16321494	27	16321494	1	F	1962-11-22	\N	\N	618	J	Avellaneda	11	2012	10	2022	B	AR
2316	FREGOTE             	\N	                    	Jonatan Diego       	\N	DNI 	34493657	23	34493657	9	M	1986-11-05	\N	\N	2316	A	LANUS	4	2022	10	2022	B	AR
660	SCALISE             	\N	                    	Jorge Amadeo        	\N	DNI 	7605146	20	7605146	2	M	1947-10-09	\N	\N	660	P	BUENOS AIRES	2	2013	10	2022	B	AR
671	CRISCI              	BICH                	                    	Yamila              	\N	DNI 	31764071	20	31764071	5	F	1986-08-28	\N	\N	671	A	CAPITAL FEDERAL	2	2013	10	2017	C	AR
645	MARCELLINO          	\N	                    	Gabriela Julia      	\N	DNI 	25578326	27	25578326	8	F	1977-01-09	\N	\N	645	A	BERNAL	1	2013	9	2017	B	AR
658	KOHEN               	Tartara             	                    	Pablo Alejandro     	\N	DNI 	17456846	20	17456846	5	M	1965-04-19	\N	\N	658	A	CAPITAL FEDERAL	2	2013	10	2017	C	AR
665	SORRENTINO          	\N	                    	Florencia Lila      	\N	DNI 	29698697	27	29698697	1	F	1982-08-30	\N	\N	665	A	CAPITAL FEDERAL	2	2013	10	2017	\N	AR
423	GALLI               	RIVERO              	                    	Adriana Silvia      	\N	DNI 	17197636	27	17197636	2	F	1964-07-24	\N	\N	423	A	Ciudad Autónoma de Buenos Aires	3	2012	3	2013	C	AR
113	PLANOVSKY           	\N	                    	Pablo Mario         	\N	DNI 	12864522	20	12864522	6	M	1958-11-13	\N	\N	113	A	Capital Federal	7	2011	7	2021	C	AR
642	FILIEL              	REGO                	                    	Claudia             	\N	DNI 	31465000	27	31465000	5	F	1985-02-05	\N	\N	642	P	CAPITAL FEDERAL	1	2013	2	2023	C	AR
643	CAMINOS LAGORIO     	\N	                    	Catalina            	\N	DNI 	27000280	27	27000280	9	F	1978-12-04	\N	\N	643	P	VICENTE LOPEZ	1	2013	2	2023	B	AR
646	JUDKOWSKI           	\N	                    	Cynthia Verónica    	\N	DNI 	25866411	27	25866411	1	F	1977-04-26	\N	\N	646	P	CAPITAL FEDERAL	1	2013	2	2023	C	AR
650	RIVERO              	TANGARI             	                    	Melina              	\N	DNI 	35329530	27	35329530	1	F	1990-04-30	\N	\N	650	P	QUILMES	2	2013	2	2023	B	AR
651	GUERRERO            	LAGO                	                    	Guadalupe           	\N	DNI 	29077798	23	29077798	4	F	1981-09-17	\N	\N	651	P	BUENOS AIRES	2	2013	2	2023	B	AR
653	HADDAD              	\N	                    	Laura Angélica      	\N	DNI 	32763945	27	32763945	0	F	1987-02-05	\N	\N	653	P	VICENTE LOPEZ	2	2013	2	2023	B	AR
655	KAPLAN              	\N	                    	Daniela Alejandra   	\N	DNI 	27010718	23	27010718	4	F	1978-11-04	\N	\N	655	P	CAPITAL FEDERAL	2	2013	2	2023	C	AR
656	ZIGIOTTO            	Tacconi             	                    	Diego Marcelo Atilio	\N	DNI 	23007577	20	23007577	9	M	1972-10-07	\N	\N	656	P	BUENOS AIRES	2	2013	2	2023	B	AR
662	SILVA               	\N	                    	Valeria Elizabeth   	\N	DNI 	25231250	27	25231250	7	F	1976-03-18	\N	\N	662	P	CAPITAL FEDERAL	2	2013	2	2023	C	AR
664	MONTERO BARRE       	\N	                    	María Eugenia       	\N	DNI 	24791794	27	24791794	8	F	1975-09-17	\N	\N	664	P	LOMAS DE ZAMORA	2	2013	2	2023	B	AR
668	PEROTTI             	\N	                    	María Florencia     	\N	DNI 	34318431	27	34318431	5	F	1989-01-22	\N	\N	668	P	CAPITAL FEDERAL	2	2013	2	2023	\N	AR
670	FEOLI               	LUNA                	                    	Emanuel             	\N	DNI 	31531038	20	31531038	6	M	1985-03-01	\N	\N	670	P	BERNAL	2	2013	2	2023	B	AR
672	AÑASCO              	DE BLASIO           	                    	Fernando Pablo      	\N	DNI 	24923958	20	24923958	6	M	1976-11-25	\N	\N	672	P	BUENOS AIRES	2	2013	2	2023	B	AR
673	MOROS               	\N	                    	Stella Maris        	\N	DNI 	16246836	27	16246836	2	F	1963-03-18	\N	\N	673	P	RAMOS MEJIA	2	2013	2	2023	B	AR
674	PERCOVICH           	\N	                    	María Fernanda      	\N	DNI 	24157099	27	24157099	7	F	1975-04-03	\N	\N	674	P	AVELLANEDA	2	2013	2	2023	B	AR
675	VITALE              	GIRARDIN            	                    	Pablo Julian        	\N	DNI 	26690165	20	26690165	9	M	1978-06-16	\N	\N	675	P	BUENOS AIRES	2	2013	2	2023	B	AR
676	ARIAS               	\N	                    	Pedro Gustavo       	\N	DNI 	22628121	20	22628121	6	M	1972-01-05	\N	\N	676	P	AVELLANEDA	2	2013	2	2023	B	AR
679	PEREZ COLMAN        	\N	                    	Luis Ignacio        	\N	DNI 	27767904	20	27767904	4	M	1979-11-16	\N	\N	679	P	CAPITAL FEDERAL	2	2013	2	2023	C	AR
682	ESTEBAN             	\N	                    	Gustavo Ariel       	\N	DNI 	23485473	23	23485473	9	M	1973-10-31	\N	\N	682	P	La Plata	2	2013	2	2023	B	AR
689	CRECHMAN            	\N	                    	Julián Fabricio     	\N	DNI 	37676015	20	37676015	5	M	1993-03-30	\N	\N	689	P	QUILMES	3	2013	2	2023	B	AR
702	CASABELLA           	\N	                    	Ramiro              	\N	DNI 	26733440	20	26733440	5	M	1978-07-20	\N	\N	702	P	BUENOS AIRES	3	2013	2	2023	B	AR
684	RIESGO              	\N	                    	Mariana Laura       	\N	DNI 	27885730	27	27885730	7	F	1980-10-08	\N	\N	684	A	LINCOLN	3	2013	9	2014	B	AR
686	BORDON              	\N	                    	Fernanda Belen      	\N	DNI 	33533916	27	33533916	4	F	1988-01-28	\N	\N	686	A	C.A.B.A.	3	2013	1	2017	C	AR
246	ARGAÑARAZ           	VARETTI             	                    	Carla Egle          	\N	DNI 	17890435	27	17890435	9	F	1966-07-28	\N	\N	246	A	Miraflores	10	2011	6	2017	K	AR
1997	D´ANGELO            	\N	                    	Gaston Hugo         	\N	DNI 	36064692	20	36064692	1	M	1991-05-15	\N	\N	1997	A	Quilmes	5	2018	3	2022	B	AR
1968	ECHAIDE             	\N	                    	Javier Iñigo        	\N	DNI 	23877191	23	23877191	9	M	1974-05-19	\N	\N	1968	A	Ciudad de Buenos Aires	3	2018	3	2022	C	AR
649	FERNANDEZ VAZQUEZ   	\N	                    	Sandra Salomé       	\N	DNI 	94811617	27	94811617	6	F	1986-10-01	\N	\N	649	P	NANTERRE	2	2013	4	2022	\N	FR
681	PATITUCCI           	GONZALEZ            	                    	Micaela Soledad     	\N	DNI 	32947154	27	32947154	9	F	1987-03-15	\N	\N	681	P	LOMAS DE ZAMORA	2	2013	4	2022	\N	AR
714	SANCHEZ             	\N	                    	José                	\N	DNI 	10330490	20	10330490	4	M	1952-11-30	\N	\N	714	J	AVELLANEDA	3	2013	5	2022	B	AR
715	CHAPAY              	\N	                    	Marcelo Paulino     	\N	DNI 	16472977	20	16472977	0	M	1963-12-22	\N	\N	715	A	ENSENADA	3	2013	10	2017	B	AR
692	GOMEZ               	\N	                    	Mirta Elena         	\N	DNI 	18410460	27	18410460	7	F	1967-12-02	\N	\N	692	A	CAPITAL FEDERAL	3	2013	4	2018	\N	AR
705	POUTAYS             	\N	                    	Maximiliano Isidro  	\N	DNI 	25659524	23	25659524	9	M	1977-02-05	\N	\N	705	A	BUENOS AIRES	3	2013	10	2017	B	AR
619	HEINE               	INSUA               	                    	Josefina            	\N	DNI 	29318920	27	29318920	5	F	1982-01-19	\N	\N	619	A	Ciudad Autónoma de Buenos Aires	11	2012	10	2017	C	AR
49	CENTRA              	\N	                    	Néstor Eduardo      	\N	DNI 	16055025	20	16055025	3	M	1963-01-31	\N	\N	49	A	Capital Federal	6	2011	2	2020	C	AR
182	MAGNAT              	\N	                    	Maria Lourdes       	\N	DNI 	29433574	27	29433574	4	F	1982-03-09	\N	\N	182	A	Capital Federal	8	2011	2	2020	C	AR
721	KARPIUK ZINCZUK     	\N	                    	Sofía Estela        	\N	DNI 	13846809	27	13846809	2	F	1960-08-27	\N	\N	721	A	LA MATANZA	4	2013	12	2020	B	AR
677	FERNANDEZ           	\N	                    	Hernán Ezequiel     	\N	DNI 	26472146	20	26472146	7	M	1978-03-28	\N	\N	677	A	AVELLAN.	2	2013	12	2020	B	AR
680	MONDINI             	\N	                    	Fernando Oscar      	\N	DNI 	34339419	20	34339419	6	M	1989-03-02	\N	\N	680	A	AVELLANEDA	2	2013	12	2020	B	AR
690	GAOS                	\N	                    	Andrea Rosa         	\N	DNI 	6424454	27	6424454	5	F	1952-05-12	\N	\N	690	P	MORON	3	2013	10	2022	B	AR
699	CANO                	\N	                    	Rafael Santiago     	\N	DNI 	11621266	20	11621266	9	M	1955-04-02	\N	\N	699	P	CAPITAL FEDERAL	3	2013	10	2022	C	AR
1057	SANTAMARINA         	\N	                    	Fabiana Noemi       	\N	DNI 	21468522	27	21468522	7	F	1970-02-05	\N	\N	1057	A	Capital Federal	4	2014	8	2018	C	AR
1194	TOSCANO             	\N	                    	Ana Susana          	\N	DNI 	11106177	27	11106177	2	F	1953-11-08	\N	\N	1193	A	Ciudad Autónoma de Buenos Aires	6	2014	6	2014	C	AR
631	DOMINGUEZ           	\N	                    	Luisa               	\N	DNI 	13178983	27	13178983	7	F	1959-06-16	\N	\N	631	A	CORDOBA	12	2012	7	2021	X	AR
739	ROBLEDO             	\N	                    	Alejandro Javier    	\N	DNI 	24804657	20	24804657	1	M	1975-08-13	\N	\N	739	A	CAPITAL FEDERAL	4	2013	2	2023	C	AR
695	GARCIA              	\N	                    	María Gabriela      	\N	DNI 	20250084	27	20250084	1	F	1986-04-17	\N	\N	695	P	CAPITAL FEDERAL	3	2013	2	2023	\N	AR
700	COUSO               	\N	                    	Alejandro Martín    	\N	DNI 	35630464	20	35630464	1	M	1990-11-05	\N	\N	700	P	AVELLANEDA	3	2013	2	2023	B	AR
704	STROBIETTO          	\N	                    	Pablo Fernando      	\N	DNI 	31282274	20	31282274	2	M	1985-02-07	\N	\N	704	P	LOMAS DE ZAMORA	3	2013	2	2023	B	AR
707	PILONI              	LOMBARDI            	                    	María Fiorella      	\N	DNI 	26886178	27	26886178	0	F	1978-10-25	\N	\N	707	P	CAPITAL FEDERAL	3	2013	2	2023	\N	AR
708	SAEZ                	\N	                    	Analía              	\N	DNI 	33304966	27	33304966	5	F	1987-12-19	\N	\N	708	P	MORON	3	2013	2	2023	B	AR
710	SOSA                	\N	                    	Cristian Orlando    	\N	DNI 	31624771	20	31624771	8	M	1985-04-28	\N	\N	710	P	CAPITAL FEDERAL	3	2013	2	2023	C	AR
716	SANCI               	\N	                    	Romina              	\N	DNI 	24379639	27	24379639	9	F	1975-05-18	\N	\N	716	P	CAPITAL FEDERAL	4	2013	2	2023	C	AR
718	BALDINI             	\N	                    	Sergio Jose         	\N	DNI 	16900775	20	16900775	7	M	1964-03-28	\N	\N	718	P	AVELLANEDA	4	2013	2	2023	B	AR
719	GRILLO              	\N	                    	Elena Victoria      	\N	DNI 	34566512	27	34566512	4	F	1989-06-17	\N	\N	719	P	BUENOS AIRES	4	2013	2	2023	B	AR
723	MANRESA             	\N	                    	Claudia Alejandra   	\N	DNI 	17636720	27	17636720	8	F	1965-07-10	\N	\N	723	P	AVELLANEDA	4	2013	2	2023	B	AR
730	CARBON              	\N	                    	Silvia Marcela      	\N	DNI 	18660495	23	18660495	4	F	1966-04-06	\N	\N	730	P	AVELLANEDA	4	2013	2	2023	B	AR
732	ALVAREZ             	\N	                    	Gonzalo             	\N	DNI 	29011152	20	29011152	9	M	1981-08-19	\N	\N	732	P	NEUQUEN	4	2013	2	2023	Q	AR
734	MONTIEL             	\N	                    	Pablo Luis          	\N	DNI 	20009738	20	20009738	7	M	1968-02-24	\N	\N	734	P	CAPITAL FEDERAL	4	2013	2	2023	C	AR
741	BUSTO               	\N	                    	Silvina Elena       	\N	DNI 	17610505	23	17610505	4	F	1966-01-04	\N	\N	741	P	SARANDI	4	2013	2	2023	B	AR
743	RODRIGUEZ           	\N	                    	Miguel Ángel        	\N	DNI 	23098254	20	23098254	7	M	1975-06-29	\N	\N	743	P	LANUS	4	2013	2	2023	B	AR
748	DE MIERO            	\N	                    	Alejo Martin        	\N	DNI 	31060971	20	31060971	5	M	1982-07-03	\N	\N	748	P	CAPITAL FEDERAL	4	2013	2	2023	C	AR
749	SOTO                	\N	                    	Aída Larisa         	\N	DNI 	21307667	27	21307667	7	F	1968-09-11	\N	\N	749	P	FORMOSA	4	2013	2	2023	P	AR
752	TORRES              	\N	                    	Marcos Fernando     	\N	DNI 	29305015	20	29305015	6	M	1982-01-10	\N	\N	752	P	CAPITAL FEDERAL	4	2013	2	2023	C	AR
754	BIVONA              	\N	                    	Alejo               	\N	DNI 	34593242	23	34593242	9	M	1989-06-14	\N	\N	754	P	Chivilcoy	4	2013	2	2023	B	AR
762	ESPOSITO            	\N	                    	Luciano Adrián      	\N	DNI 	33606724	20	33606724	4	M	1987-12-25	\N	\N	762	P	Dock Sud	5	2013	2	2023	B	AR
235	KISILEVSKY          	\N	                    	Graciela Cecilia    	\N	DNI 	14568454	23	14568454	4	F	1961-05-24	\N	\N	235	A	Ciudad Autónoma de Buenos Aires	10	2011	3	2019	C	AR
626	RODRIGUEZ           	CUCINOTTA           	BASCIALLA           	Maria Jimena        	\N	DNI 	28631609	27	28631609	9	F	1981-01-19	\N	\N	626	A	Temperley	12	2012	3	2019	B	AR
340	BARTOLOME           	ELIZALDE            	                    	Mara Alejandra      	\N	DNI 	18781649	27	18781649	7	F	1971-01-01	\N	\N	340	A	Madison, Wisconsin	2	2012	3	2019	\N	US
742	DASKAL              	\N	                    	Rodrigo             	\N	DNI 	21113272	20	21113272	9	M	1969-10-10	\N	\N	742	A	Ciudad Autónoma de Buenos Aires	4	2013	10	2017	C	AR
460	GALARZA             	\N	                    	Hector Antonio      	\N	DNI 	22890287	20	22890287	0	M	1972-10-13	\N	\N	460	A	Necochea	4	2012	3	2022	B	AR
683	KRIEGER             	\N	                    	María Cristina      	\N	DNI 	12551176	27	12551176	2	F	1956-11-02	\N	\N	683	J	QUILMES	2	2013	5	2022	B	AR
693	IGLESIAS            	\N	                    	Alicia Noemí        	\N	DNI 	4552747	27	4552747	1	F	1948-11-18	\N	\N	693	J	BAHIA BLANCA	3	2013	5	2022	\N	AR
735	SANGALLI            	\N	                    	Maximiliano Luis    	\N	DNI 	33245946	20	33245946	6	M	1987-09-09	\N	\N	735	A	CORDOBA	4	2013	12	2017	X	AR
712	KEJVAL              	Marcos              	                    	Larisa              	\N	DNI 	24458508	24	24458508	2	F	1975-02-10	\N	\N	712	A	BUENOS AIRES	3	2013	2	2020	B	AR
744	SOTO URIBE          	\N	                    	Wilfredo Ricardo    	\N	DNI 	94011730	20	94011730	6	M	1981-06-27	\N	\N	744	A	SANTIAGO DE CHILE	4	2013	3	2020	\N	CL
728	GARCIA              	\N	                    	Luis Americo        	\N	DNI 	18390384	20	18390384	6	M	1967-08-06	\N	\N	728	A	CAPITAL FEDERAL	4	2013	9	2020	\N	AR
729	GRASSI              	\N	                    	Jorge Alberto       	\N	DNI 	11985363	20	11985363	0	M	1955-08-20	\N	\N	729	A	QUILMES	4	2013	11	2022	B	AR
724	BOUJON              	\N	                    	Pamela Silvana      	\N	DNI 	24781642	27	24781642	4	F	1975-08-30	\N	\N	724	A	Florencio Varela	4	2013	12	2016	B	AR
777	SALEMME             	\N	                    	María Julieta       	\N	DNI 	28289806	27	28289806	9	F	1980-12-17	\N	\N	777	A	Pehuajo	5	2013	8	2021	B	AR
720	MARTINEZ            	\N	                    	Andres Arnaldo      	\N	DNI 	40798750	20	40798750	1	M	1990-11-10	\N	\N	720	A	MISIONES	4	2013	11	2019	N	AR
722	RODRIGUEZ           	\N	                    	Roberto Jorge       	\N	DNI 	12009594	20	12009594	4	M	1958-02-04	\N	\N	722	A	CAPITAL FEDERAL	4	2013	12	2019	C	AR
565	NICOLINI            	\N	                    	Jose Miguel         	\N	DNI 	32516434	20	32516434	5	M	1986-07-27	\N	\N	565	P	Corrientes	8	2012	2	2023	W	AR
747	DIEPOLD             	\N	                    	Ruben               	\N	DNI 	18299896	20	18299896	7	M	1967-01-06	\N	\N	747	P	AVELLANEDA	4	2013	2	2023	B	AR
1522	GARCIA              	\N	                    	Juan Ignacio        	\N	DNI 	31253046	20	31253046	6	M	1984-10-20	\N	\N	1522	P	Capital Federal	7	2015	2	2023	C	AR
687	VIVES               	\N	                    	Hector Federico     	\N	DNI 	7756086	20	7756086	7	M	1944-11-23	\N	\N	687	P	CAPITAL FEDERAL	3	2013	2	2023	C	AR
1375	GELI                	\N	                    	Ezequiel Alejandro  	\N	DNI 	32891581	20	32891581	3	M	1987-02-07	\N	\N	1375	P	CAPITAL FEDERAL	5	2015	2	2023	C	AR
725	ARBELO              	\N	                    	Mariana Margarita   	\N	DNI 	31700254	27	31700254	3	F	1985-11-15	\N	\N	725	P	GUALEGAUYCHU	4	2013	2	2023	E	AR
727	BUNDIO              	\N	                    	Javier Sebastian    	\N	DNI 	31096153	20	31096153	2	M	1984-08-03	\N	\N	727	P	WILDE	4	2013	2	2023	B	AR
751	FERRERO             	\N	                    	Lía Mercedes        	\N	DNI 	24873562	27	24873562	2	F	1975-12-25	\N	\N	751	P	CAPITAL FEDERAL	4	2013	2	2023	C	AR
755	GIOVAGNETTI         	\N	                    	Natalia Carolina    	\N	DNI 	27683817	27	27683817	8	F	1979-09-10	\N	\N	755	P	RAMOS MEJIA	4	2013	2	2023	B	AR
761	DURAN               	\N	                    	Valeria Vanesa      	\N	DNI 	25747327	27	25747327	4	F	1977-02-03	\N	\N	761	P	Avellaneda	5	2013	2	2023	B	AR
763	PORTEOUS            	\N	                    	Javier Horacio      	\N	DNI 	31641576	20	31641576	9	M	1985-05-02	\N	\N	763	P	Capital Federal	5	2013	2	2023	C	AR
764	CERVERA NOVO        	\N	                    	Juan Pablo          	\N	DNI 	23332327	20	23332327	7	M	1973-08-20	\N	\N	764	P	AVELLANEDA	5	2013	2	2023	B	AR
768	IRIARTE             	\N	                    	Marisa Noemí        	\N	DNI 	22173228	27	22173228	1	F	1971-04-05	\N	\N	768	P	QUILMES	5	2013	2	2023	B	AR
769	RUIZ                	\N	                    	Carlos Germán       	\N	DNI 	35203551	20	35203551	4	M	1990-04-27	\N	\N	769	P	Quilmes	5	2013	2	2023	B	AR
771	PAPADOPULOS         	\N	                    	Ana María           	\N	DNI 	17349815	27	17349815	8	F	1965-08-19	\N	\N	771	P	BALCARCE	5	2013	2	2023	B	AR
773	COCCIMIGLIO         	\N	                    	Yamila Alejandra    	\N	DNI 	31477284	27	31477284	4	F	1985-02-18	\N	\N	773	P	CAPITAL FEDERAL	5	2013	2	2023	C	AR
774	PANICO              	\N	                    	Barbara             	\N	DNI 	23044219	27	23044219	9	F	1973-03-16	\N	\N	774	P	BUENOS AIRES	5	2013	2	2023	B	AR
776	DIEGUEZ             	\N	                    	Nicolás Emiliano    	\N	DNI 	34505585	20	34505585	2	M	1989-05-09	\N	\N	776	P	VILLA DOMINICO	5	2013	2	2023	B	AR
780	NEU                 	\N	                    	Javier Oscar        	\N	DNI 	28846602	20	28846602	6	M	1981-06-25	\N	\N	780	P	SAN ISIDRO	5	2013	2	2023	B	AR
784	GALEANO             	\N	                    	Aldana Lorena       	\N	DNI 	30098425	27	30098425	3	F	1977-01-17	\N	\N	784	P	BERNAL	5	2013	2	2023	B	AR
793	SANTAMARIA MOSCHETTA	\N	                    	Juan Pablo          	\N	DNI 	25878751	20	25878751	0	M	1977-05-09	\N	\N	793	P	LOMAS DE ZAMORA	6	2013	2	2023	\N	\N
794	MONTENEGRO          	\N	                    	Martín              	\N	DNI 	30954368	20	30954368	9	M	1989-05-12	\N	\N	794	P	CABA	6	2013	2	2023	C	AR
796	STALTARI            	\N	                    	Silvana Andrea      	\N	DNI 	27286489	27	27286489	1	F	1979-06-19	\N	\N	796	P	CABA	6	2013	2	2023	C	AR
799	ARGNANI             	\N	                    	Agustina            	\N	DNI 	30753856	27	30753856	9	F	1984-05-22	\N	\N	799	P	CHIVILCOY	6	2013	2	2023	B	AR
802	GRECO MAINERO       	\N	                    	Mariano Catriel     	\N	DNI 	27136439	20	27136439	4	M	1979-09-18	\N	\N	802	P	SAN LUIS	6	2013	2	2023	D	AR
803	FONTANA             	\N	                    	Sergio Luis         	\N	DNI 	24822865	20	24822865	3	M	1975-09-12	\N	\N	803	P	BUENOS AIRES	6	2013	2	2023	B	AR
632	CALVIN              	LOPEZ               	                    	Elena Beatriz       	\N	DNI 	16901252	27	16901252	6	F	1964-05-31	\N	\N	632	A	AVELLANEDA	12	2012	4	2023	B	AR
766	BENJAMIN            	\N	                    	Agustina Dana       	\N	DNI 	37869389	27	37869389	1	F	1993-10-12	\N	\N	766	A	Capital Federal	5	2013	4	2017	C	AR
756	FERRER              	\N	                    	Manuel              	\N	DNI 	31477155	23	31477155	9	M	1985-01-17	\N	\N	756	A	CAPITAL FEDERAL	4	2013	10	2017	C	AR
789	MONTESINO           	\N	                    	Claudia Alejandra   	\N	DNI 	17486985	27	17486985	0	F	1965-10-14	\N	\N	789	A	LA PLATA	6	2013	10	2017	B	AR
783	CESAN               	\N	                    	Alexis Pablo        	\N	DNI 	20372940	20	20372940	6	M	1968-06-20	\N	\N	783	A	CAPITAL FEDERAL	5	2013	10	2017	C	AR
792	BONANO              	\N	                    	Guido               	\N	DNI 	30655320	20	30655320	9	M	1983-11-29	\N	\N	792	A	CAPITAL FEDERAL	6	2013	3	2022	C	AR
800	AUSTRA              	\N	                    	Sandra Mabel        	\N	DNI 	16962321	27	16962321	5	F	1964-05-02	\N	\N	800	P	WILDE	6	2013	4	2022	B	AR
806	PERINI              	\N	                    	Liliana Haydee      	\N	DNI 	12627441	27	12627441	1	F	1956-09-20	\N	\N	806	J	BURZACO	6	2013	5	2022	B	AR
694	COSTANZO GOMEZ      	\N	                    	Eleonora            	\N	DNI 	19004692	27	19004692	9	F	1984-10-25	\N	\N	694	A	MEXICO	3	2013	5	2022	\N	MX
765	NADALIN             	\N	                    	Nora Mabel          	\N	DNI 	17257849	27	17257849	2	F	1965-02-13	\N	\N	765	A	VENADO TUERTO	5	2013	10	2017	S	AR
767	TASSONE             	\N	                    	Paula Andrea        	\N	DNI 	22452683	27	22452683	6	F	1971-12-05	\N	\N	767	A	AVELLANEDA	5	2013	10	2017	B	AR
740	JOVIC               	\N	                    	Tomás Manuel        	\N	DNI 	32260169	20	32260169	8	M	1986-03-17	\N	\N	740	A	QUILMES	4	2013	10	2017	B	AR
772	MONTERO             	\N	                    	Gustavo Ariel       	\N	DNI 	27940170	20	27940170	1	M	1980-02-02	\N	\N	772	A	CAPITAL FEDERAL	5	2013	10	2017	C	AR
782	MOSTO               	\N	                    	Enrique Hugo        	\N	DNI 	5881510	20	5881510	2	M	1946-01-16	\N	\N	782	P	GUALEGAUYCHU	5	2013	11	2015	E	AR
509	ALDAZ               	\N	MELLADO MELO        	Rosana Marina       	\N	DNI 	25360892	27	25360892	2	F	1976-07-09	\N	\N	509	A	Ciudad Autónoma de Buenos Aires	6	2012	2	2014	C	AR
813	ROZENGARDT          	\N	                    	Rodolfo             	\N	DNI 	12753311	20	12753311	4	M	1956-12-21	\N	\N	813	P	CAPITAL FEDERAL	7	2013	10	2022	C	AR
817	CABAR ROJAS         	\N	                    	Gilda Rosa Susana   	\N	DNI 	18739812	27	18739812	1	F	1954-09-28	\N	\N	817	P	COCHABAMBA	7	2013	10	2022	\N	BO
829	MILANTA             	\N	                    	Lidia Estela        	\N	DNI 	13091253	27	13091253	8	F	1959-04-24	\N	\N	829	P	CAPITAL FEDERAL	7	2013	10	2022	C	AR
846	GUERRERO            	\N	                    	Modesto Emilio      	\N	DNI 	93260879	20	93260879	1	M	1955-12-24	\N	\N	846	P	VENEZUELA	8	2013	10	2022	\N	VE
738	MORELLI             	\N	                    	Silvina Roxana      	\N	DNI 	18565401	27	18565401	5	F	1967-11-20	\N	\N	738	A	CAPITAL FEDERAL	4	2013	8	2021	C	AR
814	FRUCTUOSO           	\N	                    	María Libertad      	\N	DNI 	29544180	27	29544180	7	F	1982-05-29	\N	\N	814	A	CAPITAL FEDERAL	7	2013	6	2019	B	AR
822	CLINGO              	\N	                    	Marcelo Daniel      	\N	DNI 	17499529	20	17499529	0	M	1965-02-15	\N	\N	822	A	CAPITAL FEDERAL	7	2013	3	2018	C	AR
836	MARINO              	\N	                    	Alberto Antonio     	\N	DNI 	4528105	20	4528105	2	M	1945-06-13	\N	\N	836	J	CAPITAL FEDERAL	7	2013	7	2017	C	AR
808	ISAURRALDE          	\N	                    	Inés                	\N	DNI 	31407373	27	31407373	3	F	1984-12-13	\N	\N	808	A	CAPITAL FEDERAL	7	2013	10	2017	C	AR
770	RAJNGEWERC          	\N	                    	Mariela             	\N	DNI 	32090982	27	32090982	7	M	1985-12-13	\N	\N	770	P	CAPITAL FEDERAL	5	2013	2	2023	C	AR
795	ROVIRA RUIZ         	\N	                    	Bernardo Federico A 	\N	DNI 	25970325	20	25970325	6	M	1977-05-03	\N	\N	795	P	CABA	6	2013	2	2023	C	AR
801	RICCI               	\N	                    	David Moisés        	\N	DNI 	37178692	23	37178692	9	M	1993-01-06	\N	\N	801	P	AVELLANEDA	6	2013	2	2023	B	AR
804	DELGADO             	\N	                    	Laura Belén         	\N	DNI 	34214220	27	34214220	1	F	1989-03-08	\N	\N	804	P	LINCONL	6	2013	2	2023	B	AR
807	HARTLICH            	\N	                    	Ariel Carlos        	\N	DNI 	17557138	20	17557138	9	M	1965-08-23	\N	\N	807	P	AVELLANEDA	7	2013	2	2023	B	AR
811	MARTIN              	\N	                    	Santiago Matías     	\N	DNI 	32765523	20	32765523	0	M	1986-12-02	\N	\N	811	P	LANUS	7	2013	2	2023	B	AR
815	ALVAREZ             	\N	                    	María Florencia     	\N	DNI 	33259511	27	33259511	9	F	1987-09-15	\N	\N	815	P	CAPITAL FEDERAL	7	2013	2	2023	C	AR
818	PEREZ FALLIK        	\N	                    	Max                 	\N	DNI 	32386816	20	32386816	7	M	1986-05-30	\N	\N	818	P	CABA	7	2013	2	2023	C	AR
819	BOTTINO             	\N	                    	Alejandra Gabriela  	\N	DNI 	17659187	27	17659187	6	F	1966-01-27	\N	\N	819	P	CAPITAL FEDERAL	7	2013	2	2023	C	AR
820	MAGIRENA            	\N	                    	Ariel Gustavo       	\N	DNI 	16979082	20	16979082	6	M	1964-11-03	\N	\N	820	P	RAMOS MEJIA	7	2013	2	2023	B	AR
821	BRINSO              	\N	                    	Miguel              	\N	DNI 	30035483	20	30035483	2	M	1983-01-19	\N	\N	821	P	CAPITAL FEDERAL	7	2013	2	2023	C	AR
824	KONDRATZKY          	\N	                    	Iván                	\N	DNI 	31529890	20	31529890	4	M	1985-03-27	\N	\N	824	P	CAPITAL FEDERAL	7	2013	2	2023	C	AR
833	SAMPAYO             	\N	                    	María Silvina       	\N	DNI 	21061161	23	21061161	4	F	1969-09-15	\N	\N	833	P	CAPITAL FEDERAL	7	2013	2	2023	C	AR
838	CINCOTTA            	\N	                    	Ileana Ines         	\N	DNI 	25021547	27	25021547	4	F	1975-11-16	\N	\N	838	P	CAPITAL FEDERAL	7	2013	2	2023	\N	\N
839	BENITEZ             	\N	                    	Claudia Alejandra   	\N	DNI 	30874795	27	30874795	1	F	1984-04-03	\N	\N	839	P	SAN CARLOS DE BARILOCHE	7	2013	2	2023	R	AR
841	PERTOVT             	\N	                    	María Valeria       	\N	DNI 	25999504	27	25999504	9	F	1977-08-02	\N	\N	841	P	CAPITAL FEDERAL	7	2013	2	2023	C	AR
844	FERRO               	\N	                    	Andrea Fabiola      	\N	DNI 	18129832	23	18129832	4	M	1966-12-29	\N	\N	844	P	CAPITAL FEDERAL	8	2013	2	2023	C	AR
856	MOSCHEN             	\N	                    	Amalia Beatriz      	\N	DNI 	32593355	27	32593355	6	F	1986-11-28	\N	\N	856	P	CAPITAL FEDERAL	8	2013	2	2023	C	AR
1173	ETTER               	\N	GONZALEZ            	María del Carmen    	\N	DNI 	16950137	27	16950137	3	F	1964-03-07	\N	\N	1173	P	Ciudad Autónoma de Buenos Aires	6	2014	2	2023	C	AR
1058	ABRITTA             	\N	                    	Ariadna             	\N	DNI 	30333980	27	30333980	4	F	1983-05-19	\N	\N	1058	P	CAPITAL FEDERAL	4	2014	2	2023	C	AR
816	SABELLA ROSA        	\N	                    	Jorge Daniel        	\N	DNI 	11683868	20	11683868	1	M	1956-03-26	\N	\N	816	A	CAPITAL FEDERAL	7	2013	8	2023	C	AR
837	ROZITCHNER          	\N	                    	Diana               	\N	DNI 	17896892	27	17896892	6	F	1966-10-02	\N	\N	837	A	CAPITAL FEDERAL	7	2013	2	2022	C	AR
862	ALBARRACIN          	\N	                    	Santiago            	\N	DNI 	22211149	20	22211149	9	M	1971-06-30	\N	\N	862	A	LA PLATA	9	2013	3	2022	B	AR
1068	FEYLING             	\N	                    	Ana Paulina         	\N	DNI 	25736011	27	25736011	9	F	1977-02-11	\N	\N	1068	A	S.M DE TUCUMAN	4	2014	3	2022	B	AR
810	DEFEO               	\N	                    	Santiago            	\N	DNI 	32196460	20	32196460	6	M	1985-03-11	\N	\N	810	A	LOMAS DE ZAMORA	7	2013	3	2022	B	AR
778	BECERRA             	\N	                    	Eduardo Rafael      	\N	DNI 	8442578	20	8442578	9	M	1950-09-09	\N	\N	778	J	CORDOBA	5	2013	5	2022	X	AR
831	CENTURION           	\N	                    	Susana Alicia Merced	\N	DNI 	14970296	27	14970296	8	F	1962-02-05	\N	\N	831	A	WILDE	7	2013	5	2022	B	AR
847	GONZALEZ            	\N	                    	Aurelio             	\N	DNI 	14108007	20	14108007	6	M	1944-05-25	\N	\N	847	P	SANTANDER	8	2013	6	2018	\N	ES
260	CANGI               	LACABE              	                    	Adrian Esteban      	\N	DNI 	17203005	20	17203005	0	M	1965-01-07	\N	\N	260	A	Ciudad Autónoma de Buenos Aires	11	2011	1	2017	C	AR
809	LAPROVITTA          	\N	                    	Rodolfo Alejandro   	\N	DNI 	20780691	23	20780691	9	M	1969-09-11	\N	\N	809	A	GOYA	7	2013	11	2019	W	AR
835	QUEVEDO             	\N	                    	Horacio Raúl        	\N	DNI 	11455890	20	11455890	8	M	1954-11-09	\N	\N	835	P	CAPITAL FEDERAL	7	2013	10	2022	C	AR
855	ALEGRE              	\N	                    	Silvia Iris         	\N	DNI 	13076261	27	13076261	7	F	1958-11-20	\N	\N	855	P	\N	8	2013	10	2022	\N	\N
842	PAINT               	\N	                    	Jazmín Elizabeth    	\N	DNI 	24997369	27	24997369	1	F	1975-11-28	\N	\N	842	A	CAPITAL FEDERAL	7	2013	12	2019	C	AR
790	NAVARRO             	\N	                    	Emiliano Carlos     	\N	DNI 	37610802	20	37610802	4	M	1993-07-24	\N	\N	790	A	WILDE	6	2013	7	2021	B	AR
812	GOMEZ               	\N	                    	Rosana Monica       	\N	DNI 	20020577	23	20020577	4	F	1968-02-02	\N	\N	812	A	AVELLANEDA	7	2013	1	2017	B	AR
865	MONTAÑEZ            	\N	                    	Rodolfo Pablo       	\N	DNI 	20521502	20	20521502	7	M	1968-11-30	\N	\N	865	A	CAPITAL FEDERAL	9	2013	10	2017	C	AR
866	GENTA               	\N	                    	Florencia           	\N	DNI 	22167217	27	22167217	3	F	1971-05-08	\N	\N	866	A	CAPITAL FEDERAL	9	2013	10	2017	C	AR
854	PAIS                	\N	                    	Mario Manuel        	\N	DNI 	22878672	20	22878672	2	M	1972-10-08	\N	\N	854	A	CAPITAL FEDERAL	8	2013	10	2017	\N	\N
868	CALDARONI           	\N	                    	Celeste Anahi       	\N	DNI 	30933354	27	30933354	9	F	1984-04-07	\N	\N	868	A	BUENOS AIRES	9	2013	10	2017	B	AR
875	FACCIA              	\N	                    	Karina Alicia       	\N	DNI 	21086675	27	21086675	8	F	1969-11-05	\N	\N	875	A	MORON	9	2013	10	2017	B	AR
863	LUNA DI PALMA       	\N	                    	Jorge Augusto       	\N	DNI 	14446883	20	14446883	0	M	1960-08-06	\N	\N	863	A	CAPITAL FEDERAL	9	2013	10	2017	C	AR
891	WEINMAN             	\N	                    	Víctor Ariel        	\N	DNI 	12273696	20	12273696	3	M	1956-05-17	\N	\N	891	A	CAPITAL FEDERAL	10	2013	10	2017	C	AR
853	LOZA                	\N	                    	Martín Alejandro    	\N	DNI 	23195843	20	23195843	7	M	1973-02-22	\N	\N	853	A	CORBOBA	8	2013	2	2020	X	AR
848	MAIDANA             	\N	                    	Zulema Beatriz      	\N	DNI 	31391703	27	31391703	2	F	1985-03-16	\N	\N	848	A	MONTE GRANDE	8	2013	9	2020	B	AR
882	SOSA                	\N	                    	Mariana             	\N	DNI 	22352530	27	22352530	5	F	1971-12-19	\N	\N	882	A	BUENOS AIRES	9	2013	9	2021	B	AR
840	VICENS              	\N	                    	Maria               	\N	DNI 	29146070	23	29146070	4	F	1981-09-30	\N	\N	840	P	ARGENTINA	7	2013	2	2023	B	AR
857	STEIMAN             	\N	                    	María Belen         	\N	DNI 	33880162	27	33880162	4	F	1988-05-31	\N	\N	857	P	LOMAS DE ZAMORA	8	2013	2	2023	B	AR
858	LOBISCH             	\N	                    	Ingrid Alicia       	\N	DNI 	25998326	27	25998326	1	F	1977-07-07	\N	\N	858	P	AVELLANEDA	9	2013	2	2023	B	AR
861	FARIAS              	\N	                    	Ariel Hernán        	\N	DNI 	31494990	20	31494990	1	M	1985-02-22	\N	\N	861	P	QUILMES	9	2013	2	2023	B	AR
869	SZAPIRO             	\N	                    	Aníbal              	\N	DNI 	28860942	20	28860942	0	M	1981-04-18	\N	\N	869	P	CAPITAL FEDERAL	9	2013	2	2023	C	AR
870	GARCIA              	\N	                    	Susana Marcela      	\N	DNI 	18283039	27	18283039	4	F	1966-01-11	\N	\N	870	P	CAPITAL FEDERAL	9	2013	2	2023	C	AR
874	ESPASANDE           	\N	                    	Mara Daniela        	\N	DNI 	28803212	27	28803212	8	F	1981-04-15	\N	\N	874	P	CAPITAL FEDERAL	9	2013	2	2023	C	AR
876	REY                 	\N	                    	Marcelo José        	\N	DNI 	24527130	20	24527130	2	M	1975-05-20	\N	\N	876	P	CONCEPCION DEL URUGUAY	9	2013	2	2023	E	AR
877	MARCANTONIO         	\N	                    	Cristian            	\N	DNI 	21758913	20	21758913	5	M	1970-07-13	\N	\N	877	P	COLON	9	2013	2	2023	B	AR
880	CAMEZZANA           	\N	                    	Maria Daniela       	\N	DNI 	30799684	27	30799684	2	F	1984-03-08	\N	\N	880	P	MAR DEL PLATA	9	2013	2	2023	B	AR
887	CARMODY             	\N	                    	Liliana Mirta       	\N	DNI 	16525417	27	16525417	7	F	1963-07-03	\N	\N	887	P	RAMOS MEJIA	9	2013	2	2023	B	AR
888	BATTISTA            	\N	                    	Daniela Edurne      	\N	DNI 	32147474	27	32147474	3	F	1986-02-20	\N	\N	888	P	LA PLATA	9	2013	2	2023	B	AR
892	BENVENUTO           	\N	                    	Esteban             	\N	DNI 	24583853	20	24583853	1	M	1975-05-26	\N	\N	892	P	BUENOS AIRES	10	2013	2	2023	B	AR
893	FERREYRA            	\N	                    	Karina Patricia     	\N	DNI 	22854114	27	22854114	7	F	1972-05-31	\N	\N	893	P	AVELLANEDA	10	2013	2	2023	B	AR
898	PEREZ               	\N	                    	María Sol           	\N	DNI 	30363746	27	30363746	5	F	1983-06-21	\N	\N	898	P	LANUS	10	2013	2	2023	B	AR
904	ERTOLA              	\N	                    	Gisele Laura        	\N	DNI 	29198583	24	29198583	8	F	1981-11-15	\N	\N	904	P	BERNAL	10	2013	2	2023	B	AR
908	SINISI              	\N	                    	Jésica Vanesa       	\N	DNI 	32091134	27	32091134	1	F	1985-12-17	\N	\N	908	P	CAPITAL FEDERAL	11	2013	2	2023	C	AR
910	CORTES              	\N	                    	María Fernanda      	\N	DNI 	24882388	27	24882388	2	F	1975-09-19	\N	\N	910	P	BUENOS AIRES	11	2013	2	2023	B	AR
1065	DZEMBROWSKI         	\N	                    	Nicolás             	\N	DNI 	28381462	23	28381462	9	M	1980-08-08	\N	\N	1065	P	Capital Federal	4	2014	2	2023	C	AR
1998	EZEBERRY            	\N	                    	Ignacio             	\N	DNI 	36174791	20	36174791	8	M	1991-06-14	\N	\N	1998	A	Pehuajo	5	2018	6	2023	B	AR
845	ARIAS               	\N	                    	Liliana Gladys      	\N	DNI 	17489992	23	17489992	4	F	1965-02-04	\N	\N	845	A	CAPITAL FEDERAL	8	2013	2	2022	C	AR
832	ZANELLI             	\N	                    	Marcelo Adrian      	\N	DNI 	16495205	20	16495205	4	M	1963-08-08	\N	\N	832	A	CAPITAL FEDERAL	7	2013	2	2022	C	AR
881	KOSINER BLANCO      	\N	                    	Mariano             	\N	DNI 	30887877	20	30887877	6	M	1984-04-05	\N	\N	881	A	BUENOS AIRES	9	2013	2	2022	B	AR
1376	BENUOIT             	\N	                    	Federico Augusto    	\N	DNI 	27355256	20	27355256	2	M	1979-04-09	\N	\N	1376	A	Quilmes	5	2015	3	2022	B	AR
849	RODRIGUEZ           	\N	                    	Carmen Rosa         	\N	DNI 	13237569	27	13237569	6	F	1959-02-26	\N	\N	849	J	CAPITAL FEDERAL	8	2013	5	2022	C	AR
884	MILCO               	\N	                    	Adriana Graciela    	\N	DNI 	13749984	27	13749984	9	F	1960-05-10	\N	\N	884	J	LANUS	9	2013	5	2022	B	AR
843	ROSA                	\N	                    	Maria Florencia     	\N	DNI 	32340513	27	32340513	7	F	1986-05-05	\N	\N	843	A	VILLA LUZURIAGA	8	2013	9	2020	B	AR
864	OJEDA CALZONI       	\N	                    	Julian Andres       	\N	DNI 	26580678	20	26580678	4	M	1978-03-24	\N	\N	864	A	AVELLANEDA	9	2013	3	2019	B	AR
905	CAMPOLLO            	\N	                    	Mercedes del Carmen 	\N	DNI 	28166186	27	28166186	3	F	1980-06-07	\N	\N	905	A	CAPITAL FEDERAL	10	2013	7	2019	C	AR
914	CARRERA             	\N	                    	Marisa Lorena       	\N	DNI 	26626037	27	26626037	2	F	1978-06-11	\N	\N	914	A	AVELLANEDA	11	2013	5	2019	B	AR
292	CZORNIJ             	VISICUP             	                    	Natalia Soledad     	\N	DNI 	33874747	27	33874747	6	F	1988-09-25	\N	\N	292	A	Avellaneda	1	2012	6	2021	B	AR
851	ZEOLLA              	\N	                    	Nicolas Hernan      	\N	DNI 	33419647	20	33419647	0	M	1988-04-12	\N	\N	851	A	LOMAS DE ZAMORA	8	2013	8	2021	B	AR
1659	GUTIERREZ VILLAR    	\N	                    	Maria Lorena        	\N	DNI 	19034250	27	19034250	1	F	1980-01-29	\N	\N	1659	A	VILLAMONTES	11	2015	12	2019	\N	BO
901	NUÑEZ               	\N	                    	Carlos Mariano      	\N	DNI 	26824583	23	26824583	9	M	1978-10-05	\N	\N	901	A	Avellaneda	10	2013	9	2022	B	AR
937	MEDDE               	\N	                    	Héctor Marcelo      	\N	DNI 	11715579	20	11715579	0	M	1955-07-05	\N	\N	937	P	CAPITAL FEDERAL	11	2013	10	2022	C	AR
922	SCALESE             	\N	                    	Myrian Luz          	\N	DNI 	18860039	27	18860039	0	F	1961-02-16	\N	\N	922	P	SAN SALVADOR	11	2013	10	2022	\N	SV
944	TABBUSH             	\N	                    	Hector Vivian       	\N	DNI 	4255963	20	4255963	7	M	1937-11-03	\N	\N	944	P	BUENOS AIRES	11	2013	10	2022	B	AR
912	ROBAINA PORTALES    	\N	                    	Yasser              	\N	DNI 	95226649	20	95226649	8	M	1990-12-12	\N	\N	912	A	LA HABANA	11	2013	6	2017	\N	CU
907	ANTONUCCI           	\N	                    	Sergio Mario        	\N	DNI 	14723634	20	14723634	5	M	1961-09-28	\N	\N	907	A	LA PLATA	11	2013	10	2017	B	AR
913	GOMEZ               	\N	                    	Claudia Beatriz     	\N	DNI 	16263394	27	16263394	0	F	1963-03-30	\N	\N	913	A	WILDE	11	2013	10	2017	B	AR
902	MANCHINI            	\N	                    	Nestor David Ramon  	\N	DNI 	16508624	20	16508624	5	M	1964-01-17	\N	\N	902	A	Colazo	10	2013	10	2017	X	AR
906	DIOSQUE             	\N	                    	Gabriela Luján      	\N	DNI 	33505314	27	33505314	7	F	1987-12-05	\N	\N	906	A	AVELLANEDA	10	2013	10	2017	B	AR
938	FERREYRA            	\N	                    	Ricardo Tomás       	\N	DNI 	32157446	20	32157446	8	M	1986-02-06	\N	\N	938	A	CORDOBA	11	2013	10	2017	X	AR
936	GARCIA              	\N	                    	Marisa Fernanda     	\N	DNI 	28061961	27	28061961	8	F	1980-03-27	\N	\N	936	A	BUENOS AIRES	11	2013	10	2017	B	AR
899	MORENO DI MARTINO   	\N	                    	Federico Antonio    	\N	DNI 	26626132	20	26626132	3	M	1978-07-08	\N	\N	899	A	BUENOS AIRES	10	2013	12	2017	B	AR
915	VALLE               	\N	                    	Pablo Omar          	\N	DNI 	14855544	20	14855544	4	M	1961-11-27	\N	\N	915	A	BUENOS AIRES	11	2013	9	2021	B	AR
935	FERNANDEZ           	\N	                    	Néstor Julio        	\N	DNI 	27056671	20	27056671	6	M	1978-12-04	\N	\N	935	A	BAHIA BLANCA	11	2013	2	2022	B	AR
859	VANEVIC             	\N	                    	Pablo Miguel        	\N	DNI 	31234258	20	31234258	9	M	1984-10-19	\N	\N	859	A	CAPITAL FEDERAL	9	2013	9	2021	C	AR
934	TEDESCO             	\N	                    	Néstor Omar         	\N	DNI 	13131253	23	13131253	9	M	1957-03-26	\N	\N	934	A	BUENOS AIRES	11	2013	2	2022	B	AR
883	GIGLIO              	\N	                    	Ezequiel Eduardo    	\N	DNI 	31321595	20	31321595	5	M	1984-11-10	\N	\N	883	P	SARANDI	9	2013	12	2022	B	AR
889	BASSI               	\N	                    	Bruno Nestor        	\N	DNI 	31418383	20	31418383	6	M	1985-04-19	\N	\N	889	P	GOYA	9	2013	2	2023	W	AR
903	SPADACCINI          	\N	                    	Emiliano Antonio    	\N	DNI 	27964554	20	27964554	6	M	1981-06-01	\N	\N	903	P	BUENOS AIRES	10	2013	2	2023	B	AR
911	GALASSO             	\N	                    	Norberto Félix      	\N	DNI 	4181890	20	4181890	6	M	1936-07-02	\N	\N	911	P	BUENOS AIRES	11	2013	2	2023	B	AR
918	DIAZ                	\N	                    	Juan Cruz           	\N	DNI 	30432195	20	30432195	5	M	1983-11-03	\N	\N	918	P	SANTA FE	11	2013	2	2023	S	AR
919	PIOLI               	\N	                    	Érica Valeria       	\N	DNI 	26466285	27	26466285	6	F	1978-02-14	\N	\N	919	P	LOMAS DE ZAMORA	11	2013	2	2023	B	AR
920	CAMBON              	\N	                    	Juan Fernando       	\N	DNI 	21920840	20	21920840	6	M	1970-10-09	\N	\N	920	P	QUILMES	11	2013	2	2023	B	AR
921	GAROFALO            	\N	                    	Sonia Isabel        	\N	DNI 	22173789	27	22173789	5	F	1971-06-09	\N	\N	921	P	QUILMES	11	2013	2	2023	B	AR
924	VALLEJOS FASCI      	\N	                    	Leonardo Eduardo    	\N	DNI 	22798522	20	22798522	5	M	1972-09-14	\N	\N	924	P	LA PLATA	11	2013	2	2023	B	AR
929	SANTORUM            	\N	                    	María Eugenia       	\N	DNI 	32530287	27	32530287	4	F	1986-09-13	\N	\N	929	P	BERNAL	11	2013	2	2023	B	AR
941	SAENZ               	\N	                    	Malena              	\N	DNI 	33362715	27	33362715	4	F	1987-10-22	\N	\N	941	P	BUENOS AIRES	11	2013	5	2023	B	AR
943	LONGOBUCCO          	\N	                    	Hernán Jose         	\N	DNI 	25224125	20	25224125	7	M	1976-03-04	\N	\N	943	P	LA PLATA	11	2013	5	2023	B	AR
951	SNITCOFSKY          	\N	                    	Andrés              	\N	DNI 	30036378	20	30036378	5	M	1982-12-27	\N	\N	951	P	CAPITAL FEDERAL	12	2013	5	2023	C	AR
1999	MARGENAT            	\N	                    	Juan Pablo          	\N	DNI 	24042928	20	24042928	5	M	1974-09-11	\N	\N	1999	A	Capital Federal	5	2018	6	2023	C	AR
946	RODRIGUEZ           	\N	                    	Santiago Nicolás    	\N	DNI 	33118385	20	33118385	8	M	1987-06-02	\N	\N	946	A	LANUS	11	2013	8	2023	B	AR
897	FUSHIMI             	\N	                    	Nadina Alicia       	\N	DNI 	23044382	27	23044382	9	F	1973-05-11	\N	\N	897	A	CAPITAL FEDERAL	10	2013	3	2022	C	AR
878	ESPETOR             	\N	                    	Claudio David       	\N	DNI 	12976525	23	12976525	9	M	1958-12-24	\N	\N	878	J	BUENOS AIRES	9	2013	3	2022	B	AR
933	TALARICO            	\N	                    	Andres Ivan         	\N	DNI 	29051985	20	29051985	4	M	1981-09-12	\N	\N	933	A	CAPITAL FEDERAL	11	2013	5	2022	C	AR
885	PRANTEDA            	\N	                    	Amanda              	\N	DNI 	4716752	27	4716752	9	F	1944-06-23	\N	\N	885	J	AVELLANEDA	9	2013	5	2022	B	AR
909	CAFFARO             	\N	                    	Maria Marta         	\N	DNI 	28230165	27	28230165	8	F	1980-06-05	\N	\N	909	A	CAPITAL FEDERAL	11	2013	9	2020	C	AR
949	DENARDI             	\N	                    	Luciana Emilia      	\N	DNI 	30469430	27	30469430	6	F	1983-08-18	\N	\N	949	A	CORDOBA	11	2013	11	2013	X	AR
982	DEIVE               	\N	                    	Gonzalo Germán      	\N	DNI 	25765098	20	25765098	8	M	1976-12-31	\N	\N	982	A	Avellaneda	1	2014	3	2015	B	AR
962	MAGGI               	\N	                    	Laura Virginia      	\N	DNI 	24856832	27	24856832	7	F	1975-11-20	\N	\N	962	A	AVELLANEDA	12	2013	2	2017	B	AR
928	BOUZIGUES           	\N	                    	Melina Paula        	\N	DNI 	26069308	27	26069308	0	F	1977-07-25	\N	\N	928	A	QUILMES	11	2013	3	2019	B	AR
945	MIGUEZ              	\N	                    	Claudia Lucrecia    	\N	DNI 	16138766	27	16138766	0	F	1962-11-03	\N	\N	945	A	CAPITAL FEDERAL	11	2013	12	2019	C	AR
827	SUAREZ DELGADO      	\N	                    	Florencia Ticiana   	\N	DNI 	35110955	27	35110955	1	F	1990-01-26	\N	\N	827	A	CAPITAL FEDERAL	7	2013	3	2018	C	AR
931	AGOSTINI            	\N	                    	Nelson Alberto      	\N	DNI 	16911641	20	16911641	6	M	1965-01-23	\N	\N	931	A	PERGAMINO	11	2013	10	2017	B	AR
950	LOPEZ IBAÑEZ        	\N	                    	Jose Luis           	\N	DNI 	12692412	20	12692412	8	M	1958-09-16	\N	\N	950	A	CAPITAL FEDERAL	11	2013	10	2017	C	AR
932	LOPEZ               	\N	                    	Alejandro Javier    	\N	DNI 	23767791	23	23767791	9	M	1974-05-29	\N	\N	932	A	CAPITAL FEDERAL	11	2013	10	2017	C	AR
954	NUÑEZ               	\N	                    	Jorge Luis          	\N	DNI 	24781236	23	24781236	9	M	1975-08-11	\N	\N	954	A	QUILMES	12	2013	10	2017	B	AR
927	CARRERAS            	\N	                    	Ailen               	\N	DNI 	36398704	24	36398704	0	F	1991-09-24	\N	\N	927	A	CAPITAL FEDERAL	11	2013	7	2015	C	AR
32	AVILA HUIDOBRO      	\N	                    	Rodrigo             	\N	DNI 	29866127	20	29866127	7	M	1986-10-16	\N	\N	32	A	Capital Federal	6	2011	1	2014	C	AR
2000	PLASTINA            	\N	                    	Ana Cecilia         	\N	DNI 	28174861	27	28174861	6	F	1980-08-07	\N	\N	2000	A	Lanus	5	2018	5	2018	B	AR
925	LOPEZ CORONEL       	\N	                    	Juan Pablo          	\N	DNI 	18299812	20	18299812	6	M	1967-02-13	\N	\N	925	A	CAPITAL FEDERAL	11	2013	3	2020	C	AR
317	FARIAS              	AMUCHÁSTEGUI        	                    	Flavia Maria Sol    	\N	DNI 	35855077	27	35855077	6	F	1991-05-03	\N	\N	317	A	Lomas de Zamora	2	2012	10	2021	B	AR
440	GIORGI              	BARAHONA            	                    	Andrea Noelia       	\N	DNI 	29112885	27	29112885	3	F	1981-12-10	\N	\N	440	A	Mendoza	3	2012	12	2021	M	AR
953	MO AMAVET           	\N	                    	Isela María         	\N	DNI 	31877171	27	31877171	0	F	1985-09-06	\N	\N	953	P	CAPITAL FEDERAL	12	2013	4	2022	C	AR
562	PUENTE              	MARIÑO              	                    	Alejandra Mabel     	\N	DNI 	16226266	27	16226266	7	F	1963-01-04	\N	\N	562	P	Ciudad Autónoma de Buenos Aires	8	2012	2	2023	C	AR
563	RODRIGUEZ           	\N	SZCSYGIEL           	María Luján Eugenia 	\N	DNI 	28032506	27	28032506	1	F	1980-03-02	\N	\N	563	P	Ramos Mejía	8	2012	2	2023	B	AR
1377	ANTONIOLI           	\N	                    	Claudio Alberto     	\N	DNI 	14493624	20	14493624	9	M	1960-12-16	\N	\N	1377	P	CAPITAL FEDERAL	5	2015	2	2023	C	AR
926	ZUCCHIATTI          	\N	                    	Nuria Laura         	\N	DNI 	20203880	27	20203880	3	F	1968-03-12	\N	\N	926	P	CAPITAL FEDERAL	11	2013	2	2023	C	AR
939	BALTAR              	\N	                    	Leandro             	\N	DNI 	30999960	20	30999960	7	M	1984-09-08	\N	\N	939	P	CAPITAL FEDERAL	11	2013	2	2023	C	AR
942	GARRIDO             	\N	                    	Jorge Omar          	\N	DNI 	16948889	20	16948889	5	M	1965-04-03	\N	\N	942	P	LA PLATA	11	2013	5	2023	B	AR
952	GHIOTTO             	\N	                    	Luciana Mabel       	\N	DNI 	27085637	27	27085637	9	F	1978-12-26	\N	\N	952	P	CAPITAL FEDERAL	12	2013	5	2023	C	AR
957	HERRERA BOISBEHERE  	\N	                    	Gabriel Ezequiel    	\N	DNI 	35353342	20	35353342	9	M	1991-04-18	\N	\N	957	P	LANUS	12	2013	5	2023	B	AR
960	LAZARTE             	\N	                    	Guillermo de Jesús  	\N	DNI 	33076191	20	33076191	2	M	1987-05-26	\N	\N	960	P	POSADAS	12	2013	5	2023	N	AR
961	PIVIDORI ALEMANY    	\N	                    	Juan Ignacio        	\N	DNI 	16944000	20	16944000	0	M	1964-09-13	\N	\N	961	P	VILLA OCAMPO	12	2013	5	2023	S	AR
965	SKAKOVSKY           	\N	                    	Eliana Paula        	\N	DNI 	20892832	27	20892832	0	F	1969-06-09	\N	\N	965	P	CAPITAL FEDERAL	1	2014	5	2023	C	AR
966	PRESTI              	\N	                    	Yamila Roxana       	\N	DNI 	33680062	27	33680062	0	F	1987-06-30	\N	\N	966	P	AVELLANEDA	1	2014	5	2023	B	AR
967	MEO AULICINO        	\N	                    	Roxana Hebe         	\N	DNI 	22059231	27	22059231	1	F	1970-12-25	\N	\N	967	P	LANUS	1	2014	5	2023	B	AR
968	BRENER              	\N	                    	Alejandra Mabel     	\N	DNI 	18258293	27	18258293	5	F	1967-04-07	\N	\N	968	P	BUENOS AIRES	1	2014	5	2023	B	AR
970	FOGLIACCO           	\N	                    	Martin              	\N	DNI 	30125489	20	30125489	0	M	1983-04-27	\N	\N	970	P	CORDOBA	1	2014	5	2023	X	AR
971	AUGUSTOWSKY         	\N	                    	Gabriela Paula      	\N	DNI 	17107125	27	17107125	4	F	1964-10-07	\N	\N	971	P	CAPITAL FEDERAL	1	2014	5	2023	C	AR
972	JIMENEZ             	\N	                    	Darío Román         	\N	DNI 	24224520	20	24224520	3	M	1975-01-25	\N	\N	972	P	Gral. Madariaga	1	2014	5	2023	B	AR
973	NAME                	\N	                    	María Julia         	\N	DNI 	27204149	27	27204149	6	F	1979-03-12	\N	\N	973	P	Capital Federal	1	2014	5	2023	C	AR
977	SCHIAVI             	\N	                    	Romina Carla        	\N	DNI 	31529866	27	31529866	6	F	1985-03-20	\N	\N	977	P	Capital Federal	1	2014	5	2023	C	AR
981	CIRIGLIANO          	\N	                    	Eduardo Esteban     	\N	DNI 	27385254	23	27385254	9	M	1979-07-31	\N	\N	981	P	Bragado	1	2014	5	2023	B	AR
92	MARTINEZ            	\N	                    	Sonia               	\N	DNI 	34482665	27	34482665	5	F	1989-05-14	\N	\N	92	A	Capital Federal	7	2011	9	2023	C	AR
948	GUARIGLIO           	\N	                    	Mónica Noemí        	\N	DNI 	10520416	27	10520416	2	F	1952-04-11	\N	\N	948	J	CAPITAL FEDERAL	11	2013	6	2022	C	AR
1666	GUARESTI            	\N	                    	Roberto Jose        	\N	DNI 	16153598	20	16153598	3	M	1962-08-30	\N	\N	1666	A	La Plata	11	2015	12	2019	B	AR
978	SANTOYO             	\N	                    	Daniela Silvia      	\N	DNI 	25106319	27	25106319	8	F	1975-12-29	\N	\N	978	A	Avellaneda	1	2014	7	2019	B	AR
991	CASTELAO            	\N	                    	Natalia             	\N	DNI 	30610200	27	30610200	7	F	1984-02-26	\N	\N	991	A	MORON	2	2014	7	2019	B	AR
994	CASTELLANO          	\N	                    	Sabrina             	\N	DNI 	31822200	27	31822200	8	F	1985-08-29	\N	\N	994	A	LANUS	2	2014	7	2019	B	AR
990	BOURGEOIS KAUFMANN  	\N	                    	Adriana Ethel       	\N	DNI 	14433606	27	14433606	8	F	1960-11-30	\N	\N	990	A	CAPITAL FEDERAL	2	2014	7	2019	C	AR
980	CATTANEO            	\N	                    	Susana              	\N	DNI 	14283792	27	14283792	2	F	1960-08-26	\N	\N	980	A	Avellaneda	1	2014	7	2019	B	AR
992	PICINOTTI           	\N	                    	Ana Sandra Elizabeth	\N	DNI 	20296478	27	20296478	3	F	1968-11-30	\N	\N	992	A	TANDIL	2	2014	7	2019	B	AR
1027	PERRIG              	\N	                    	Sara Angélica       	\N	DNI 	28980806	27	28980806	5	F	1981-10-20	\N	\N	1027	P	Villa María	3	2014	7	2015	X	AR
956	ARMAGNO             	\N	                    	Paulina Lucia       	\N	DNI 	29539753	27	29539753	0	F	1982-09-27	\N	\N	956	A	ALMIRANTE BROWN	12	2013	7	2021	B	AR
1174	AUGUSTO             	\N	                    	Marisa Liliana      	\N	DNI 	22768035	27	22768035	6	F	1972-04-04	\N	\N	1174	A	LANUS	6	2014	7	2021	B	AR
975	PAULS               	\N	                    	Cristian            	\N	DNI 	13211109	20	13211109	0	M	1957-07-01	\N	\N	975	P	Capital Federal	1	2014	10	2022	C	AR
474	FIORENTINO          	BRUZZONI            	                    	Marianela           	\N	DNI 	35970433	27	35970433	5	F	1991-03-20	\N	\N	474	A	Ciudad Autónoma de Buenos Aires	4	2012	2	2014	C	AR
582	MARZILLI            	OCAMPO              	                    	Fernando Gabriel    	\N	DNI 	21838116	20	21838116	3	M	1970-07-12	\N	\N	582	A	Avellaneda	9	2012	2	2014	B	AR
997	ESCANDELL           	\N	                    	Nayla Betania       	\N	DNI 	32997133	27	32997133	9	F	1987-04-16	\N	\N	997	A	REMEDIOS DE ESCALADA	2	2014	2	2016	B	AR
947	SILVA               	\N	                    	Adriana Paula       	\N	DNI 	22452685	27	22452685	2	F	1971-11-28	\N	\N	947	A	AVELLANEDA	11	2013	11	2021	B	AR
930	CABITO              	\N	                    	Silvana Analia      	\N	DNI 	24204366	27	24204366	4	F	1974-11-30	\N	\N	930	P	CAPITAL FEDERAL	11	2013	2	2023	C	AR
1059	SANTOS              	\N	                    	Serena Aylen        	\N	DNI 	34721878	27	34721878	8	F	1989-12-23	\N	\N	1059	P	SAN CARLOS DE BARILOCHE	4	2014	2	2023	R	AR
983	CONCIA              	\N	                    	Bernardo Martin     	\N	DNI 	37152006	20	37152006	7	M	1992-10-07	\N	\N	983	P	La Plata	1	2014	5	2023	B	AR
985	URSINO              	\N	                    	Virginia Gabriela   	\N	DNI 	28289990	27	28289990	1	F	1981-03-31	\N	\N	985	P	PEHUAJO	2	2014	5	2023	B	AR
986	CORRAL              	\N	                    	Fernando Carmelo    	\N	DNI 	17392499	20	17392499	3	M	1965-12-18	\N	\N	986	P	CAPITAL FEDERAL	2	2014	5	2023	C	AR
987	CASTILLO RIOS       	\N	                    	Pablo Alberto       	\N	DNI 	28899408	20	28899408	1	M	1981-06-24	\N	\N	987	P	BURZACO	2	2014	5	2023	B	AR
988	CAMPOS DE DIAGO     	\N	                    	Beatriz             	\N	DNI 	94981352	27	94981352	0	F	1983-03-25	\N	\N	988	P	MADRID	2	2014	5	2023	\N	ES
989	RAVALE              	\N	                    	Cecilia Victoria    	\N	DNI 	29258489	27	29258489	5	F	1982-01-28	\N	\N	989	P	AVELLANEDA	2	2014	5	2023	B	AR
995	AKILIAN             	\N	                    	Fernando Javier     	\N	DNI 	26402093	20	26402093	0	M	1978-01-04	\N	\N	995	P	BUENOS AIRES	2	2014	5	2023	B	AR
1001	SCHIAVONE           	\N	                    	Ana Belén           	\N	DNI 	26411830	27	26411830	7	F	1978-02-15	\N	\N	1001	P	CAPITAL FEDERAL	2	2014	5	2023	C	AR
1003	ESCOSTEGUY          	\N	                    	Santiago Horacio    	\N	DNI 	37035413	20	37035413	9	M	1992-07-17	\N	\N	1003	P	CAPITAL FEDERAL	2	2014	5	2023	C	AR
1005	RAMA                	\N	                    	Cristian Nahuel     	\N	DNI 	30833814	20	30833814	3	M	1984-01-20	\N	\N	1005	P	CAPITAL FEDERAL	2	2014	5	2023	C	AR
1006	MARTIN              	\N	                    	Eleonora Paula      	\N	DNI 	17878228	27	17878228	8	F	1967-01-01	\N	\N	1006	P	CAPITAL FEDERAL	2	2014	5	2023	C	AR
1008	RIOS                	\N	                    	Marina Cecilia      	\N	DNI 	28801637	27	28801637	8	F	1981-04-12	\N	\N	1008	P	CAPITAL FEDERAL	2	2014	5	2023	C	AR
1009	MALNIS LAURO        	\N	                    	Soledad Agostina    	\N	DNI 	29753487	23	29753487	4	F	1982-09-14	\N	\N	1009	P	CAPITAL FEDERAL	2	2014	5	2023	C	AR
1010	TREVOR              	\N	                    	Patricia            	\N	DNI 	27767887	27	27767887	5	F	1979-11-26	\N	\N	1010	P	BUENOS AIRES	2	2014	5	2023	B	AR
1011	RODRIGUEZ           	\N	                    	María Jazmín        	\N	DNI 	32770874	27	32770874	6	F	1987-04-03	\N	\N	1011	P	CIUDAD EVITA	2	2014	5	2023	B	AR
1016	MAEHAMA             	\N	                    	Jorge Alberto       	\N	DNI 	31986706	20	31986706	7	M	1985-11-14	\N	\N	1016	P	FLORENCIO VARELA	2	2014	5	2023	B	AR
1017	VAZQUEZ MORELLO     	\N	                    	Carolina            	\N	DNI 	32611273	27	32611273	4	F	1986-11-16	\N	\N	1017	P	AVELLANEDA	3	2014	5	2023	B	AR
1018	GUAITA              	\N	                    	Florentina          	\N	DNI 	32553301	27	32553301	9	F	1986-08-30	\N	\N	1018	P	CAPITAL FEDERAL	3	2014	5	2023	C	AR
1020	QUIÑA               	\N	                    	Guillermo Martin    	\N	DNI 	25419441	20	25419441	8	M	1976-07-31	\N	\N	1020	P	LOMAS DE ZAMORA	3	2014	5	2023	B	AR
1021	CORNELI             	\N	                    	Sandra Teresa Carmen	\N	DNI 	16831542	27	16831542	8	F	1963-11-02	\N	\N	1021	P	Ciudad Autónoma de Buenos Aires	3	2014	5	2023	C	AR
1024	SOKOLOW             	\N	                    	Érica Analía        	\N	DNI 	27318711	27	27318711	7	F	1979-04-06	\N	\N	1024	P	LLAVALLOL	3	2014	5	2023	B	AR
1025	WEINMAN             	\N	                    	Lucia Laura         	\N	DNI 	28735049	27	28735049	5	F	1981-03-11	\N	\N	1025	P	MORON	3	2014	5	2023	B	AR
1026	GUDIÑO BESSONE      	\N	                    	Pablo Ezequiel      	\N	DNI 	28953314	20	28953314	2	M	1981-09-28	\N	\N	1026	P	Carrilobo	3	2014	5	2023	X	AR
1028	GIUSTI              	\N	                    	Patricia Alejandra  	\N	DNI 	17485583	27	17485583	3	F	1965-07-31	\N	\N	1028	P	BUENOS AIRES	3	2014	5	2023	B	AR
1029	CASTRO SERRANO      	\N	                    	Jaime Andres        	\N	DNI 	95075114	20	95075114	3	M	1987-02-26	\N	\N	1029	P	CARTAGENA DE INDIAS	3	2014	5	2023	\N	CO
1022	FILIPELLI           	\N	                    	María José          	\N	DNI 	30888221	27	30888221	2	F	1984-02-14	\N	\N	1022	A	LANUS	3	2014	5	2019	B	AR
1007	CASAS               	\N	                    	Ivana Clara         	\N	DNI 	29280842	27	29280842	4	F	1982-01-26	\N	\N	1007	A	LOMAS DE ZAMORA	2	2014	7	2019	B	AR
1051	DOMINGUEZ           	\N	                    	Julio Ricardo       	\N	DNI 	25251862	20	25251862	3	M	1976-11-07	\N	\N	1051	A	CAPITAL FEDERAL	4	2014	7	2019	C	AR
1660	SINAGRA             	\N	                    	Florencia Lucila    	\N	DNI 	29381312	23	29381312	4	F	1982-01-26	\N	\N	1660	A	QUILMES	11	2015	12	2019	B	AR
998	MARTINEZ            	\N	                    	Matias Ezequiel     	\N	DNI 	32260343	20	32260343	7	M	1986-03-27	\N	\N	998	A	BUENOS AIRES	2	2014	1	2017	B	AR
1060	FERNANDEZ           	\N	                    	Víctor Jorge        	\N	DNI 	11877829	20	11877829	5	M	1955-11-10	\N	\N	1060	P	Avellaneda	4	2014	10	2022	B	AR
1033	SALTI               	\N	                    	Patricia Alejandra  	\N	DNI 	14990842	27	14990842	6	F	1962-09-20	\N	\N	1033	P	Capital Federal	3	2014	10	2022	C	AR
1002	GOMARESCHI          	\N	                    	Maria Lorena        	\N	DNI 	26818456	27	26818456	8	F	1978-08-09	\N	\N	1002	A	QUILMES	2	2014	1	2017	B	AR
1036	VILLAR              	\N	                    	Juan Manuel         	\N	DNI 	31407452	20	31407452	2	M	1984-12-25	\N	\N	1036	A	CAPITAL FEDERAL	3	2014	7	2015	C	AR
1071	GONZALEZ            	\N	                    	Alejandra Adela     	\N	DNI 	12079633	27	12079633	5	F	1958-04-14	\N	\N	1071	A	CAPITAL FEDERAL	4	2014	5	2014	C	AR
1218	CELLERI             	\N	                    	Antonio Luis        	\N	DNI 	11758845	23	11758845	9	M	1955-05-06	\N	\N	1218	A	AVELLANEDA	8	2014	3	2020	B	AR
1048	BALDONEDO           	\N	                    	Rocio Alfonsina     	\N	DNI 	35148672	23	35148672	4	F	1990-03-14	\N	\N	1048	A	CAPITAL FEDERAL	4	2014	11	2021	C	AR
1217	BOLZAN              	\N	                    	Andres Guillermo    	\N	DNI 	14269061	20	14269061	7	M	1960-03-13	\N	\N	1217	P	LA PLATA	8	2014	2	2023	B	AR
1216	LOPEZ GUZMAN        	\N	                    	Lorena              	\N	DNI 	94473036	27	94473036	8	F	1982-03-13	\N	\N	1216	P	Cali, Valle	7	2014	2	2023	\N	CO
1195	SALCEDO             	PEREZ               	                    	Gastón Alejandro    	\N	DNI 	26270674	20	26270674	6	M	1977-10-20	\N	\N	1195	P	Nogoyá	6	2014	2	2023	E	AR
1191	MARTINEZ CATALDI    	CATALDI             	                    	Juan Francisco      	\N	DNI 	28986451	20	28986451	3	M	1981-08-01	\N	\N	1191	P	Ciudad Autónoma de Buenos Aires	6	2014	2	2023	C	AR
1190	REINOSO             	VERA                	                    	Luis Fernando       	\N	DNI 	24704571	20	24704571	7	M	1975-08-14	\N	\N	1190	P	La Plata	6	2014	2	2023	B	AR
1186	HERRERA             	VEGA                	                    	Darío Dante         	\N	DNI 	28709371	20	28709371	4	M	1981-04-09	\N	\N	1186	P	J. M. Ezeiza	6	2014	2	2023	B	AR
1185	REALE               	\N	                    	Federico            	\N	DNI 	30571688	20	30571688	0	M	1984-06-21	\N	\N	1185	P	Alberti	6	2014	2	2023	B	AR
1183	CANAVERO            	\N	                    	Ezequiel Leandro    	\N	DNI 	24481944	20	24481944	4	M	1976-06-30	\N	\N	1183	P	TEMPERLEY	6	2014	2	2023	B	AR
1176	GASPARRI            	\N	                    	Daniel Omar         	\N	DNI 	14095500	20	14095500	1	M	1960-09-11	\N	\N	1176	P	Lanús	6	2014	2	2023	B	AR
1079	DERGUY              	\N	                    	María Rosa          	\N	DNI 	31463211	27	31463211	2	F	1985-06-14	\N	\N	1079	P	GUERNICA	4	2014	2	2023	B	AR
1077	AMOR                	\N	                    	Natalia Lorena      	\N	DNI 	26088480	27	26088480	3	F	1977-07-29	\N	\N	1077	P	Lomas de Zamora	4	2014	2	2023	B	AR
1072	VILLAR              	\N	                    	Marta Alicia        	\N	DNI 	26881068	23	26881068	4	F	1978-10-07	\N	\N	1072	P	Catriel	4	2014	2	2023	R	AR
1069	REGATKY             	\N	                    	Mariela             	\N	DNI 	26000774	27	26000774	8	F	1977-06-21	\N	\N	1069	P	Capital Federal	4	2014	2	2023	C	AR
1061	BADILLOS            	\N	                    	Ana Rosa            	\N	DNI 	17902247	27	17902247	3	F	1965-11-16	\N	\N	1061	P	Capital Federal	4	2014	2	2023	C	AR
1035	PANE                	\N	                    	Lilian Silvina      	\N	DNI 	17051027	27	17051027	0	F	1964-11-07	\N	\N	1035	J	LANUS	3	2014	3	2023	B	AR
993	ZENGOTITA           	\N	                    	Alonso              	\N	DNI 	29433373	20	29433373	9	M	1982-03-12	\N	\N	993	P	CAPITAL FEDERAL	2	2014	5	2023	C	AR
1012	DIAZ                	\N	                    	Ayelen Maiten       	\N	DNI 	33112963	27	33112963	7	F	1987-05-22	\N	\N	1012	P	AVELLANEDA	2	2014	5	2023	B	AR
1030	KEPPLER             	\N	                    	Alejandro Guillermo 	\N	DNI 	25608029	20	25608029	0	M	1976-10-06	\N	\N	1030	P	CORDOBA	3	2014	5	2023	X	AR
1031	CARBONELLI          	\N	                    	Juan Pablo          	\N	DNI 	30198230	20	30198230	6	M	1985-04-04	\N	\N	1031	P	LOMAS DE ZAMORA	3	2014	5	2023	B	AR
1032	KARAGUEZIAN         	\N	                    	Nadia Meline        	\N	DNI 	32091133	27	32091133	3	F	1985-11-15	\N	\N	1032	P	CAPITAL FEDERAL	3	2014	5	2023	C	AR
1034	BRIKMAN             	\N	                    	Denise Yael         	\N	DNI 	33655060	27	33655060	8	F	1988-02-02	\N	\N	1034	P	BUENOS AIRES	3	2014	5	2023	B	AR
1037	PRIOLO              	\N	                    	María Luz           	\N	DNI 	33174121	27	33174121	9	F	1987-06-15	\N	\N	1037	P	CAPITAL FEDERAL	3	2014	5	2023	C	AR
1038	BALO                	\N	                    	Ana Julia           	\N	DNI 	17556385	27	17556385	2	F	1965-08-03	\N	\N	1038	P	MAR DEL PLATA	3	2014	5	2023	B	AR
1039	ALDAY               	\N	                    	Bernardo Federico   	\N	DNI 	26329308	20	26329308	9	M	1977-11-12	\N	\N	1039	P	CAPITAL FEDERAL	3	2014	5	2023	C	AR
1042	NINI                	\N	                    	Alcira Leonor       	\N	DNI 	26532204	27	26532204	8	F	1978-03-04	\N	\N	1042	P	GRAL. PACHECO	3	2014	5	2023	B	AR
1044	TORRES              	\N	                    	Maria Alejandra     	\N	DNI 	16962470	23	16962470	4	F	1964-02-14	\N	\N	1044	P	LANUS	3	2014	5	2023	B	AR
1046	CASA                	\N	                    	Mariana Soledad     	\N	DNI 	32329635	27	32329635	4	F	1986-04-18	\N	\N	1046	P	ROSARIO	4	2014	5	2023	S	AR
1047	NUÑEZ               	\N	                    	Daniela             	\N	DNI 	34203735	27	34203735	1	F	1988-11-28	\N	\N	1047	P	CAPITAL FEDERAL	4	2014	5	2023	C	AR
1049	MELITA              	\N	                    	Mario Daniel        	\N	DNI 	16976753	20	16976753	0	M	1964-03-18	\N	\N	1049	P	BUENOS AIRES	4	2014	5	2023	B	AR
1050	PICO PIÑEYRO        	\N	                    	Joaquín             	\N	DNI 	34721868	20	34721868	6	M	1990-01-25	\N	\N	1050	P	Río Negro	4	2014	5	2023	R	AR
1080	MARTINICORENA       	\N	                    	Fernando Daniel     	\N	DNI 	10526910	20	10526910	3	M	1953-02-23	\N	\N	1080	J	LA PLATA	4	2014	8	2023	B	AR
1089	OTAZUA              	\N	                    	Marcela Fabiana     	\N	DNI 	20420064	27	20420064	0	F	1968-10-17	\N	\N	1089	A	Capital Federal	4	2014	5	2019	C	AR
1076	PETRAGLIA           	\N	                    	Ricardo Nerio       	\N	DNI 	23398302	20	23398302	1	M	1973-10-15	\N	\N	1076	A	Junin	4	2014	5	2019	B	AR
1081	SEMAN               	\N	                    	Claudio Alejandro   	\N	DNI 	14782667	20	14782667	3	M	1962-04-20	\N	\N	1081	A	Monte Grande	4	2014	5	2019	B	AR
1189	LEVY                	\N	                    	Marcelo Julián      	\N	DNI 	26556259	20	26556259	1	M	1978-05-09	\N	\N	1189	A	CAPITAL FEDERAL	6	2014	7	2019	C	AR
996	GAUNA               	\N	                    	Flavia Belen        	\N	DNI 	33135199	27	33135199	2	F	1987-09-20	\N	\N	996	A	SAN VICENTE	2	2014	7	2019	B	AR
1086	KANTZABEDIAN        	\N	                    	Daniel Carlos       	\N	DNI 	21819837	20	21819837	7	M	1970-07-15	\N	\N	1086	A	CAPITAL FEDERAL	4	2014	7	2019	C	AR
1043	DAMONTE             	\N	                    	Tamara              	\N	DNI 	31575332	27	31575332	0	F	1984-10-03	\N	\N	1043	A	BUENOS AIRES	3	2014	12	2019	B	AR
1023	FERNANDEZ           	\N	                    	Juan Angel          	\N	DNI 	16552473	20	16552473	0	M	1964-01-31	\N	\N	1023	A	FORMOSO	3	2014	8	2021	P	AR
1078	MARELLO             	\N	                    	Eduardo Juan        	\N	DNI 	11024464	23	11024464	9	M	1953-05-20	\N	\N	1078	P	Ciudadela	4	2014	1	2018	B	AR
1229	ABALO               	\N	                    	Gladys Graciela     	\N	DNI 	13092465	23	13092465	4	F	1959-02-20	\N	\N	1229	P	BUENOS AIRES	8	2014	10	2022	B	AR
1119	MARTURET            	\N	                    	Hernán Javier       	\N	DNI 	18404061	20	18404061	2	M	1967-11-03	\N	\N	1119	A	CAPITAL FEDERAL	4	2014	5	2019	B	AR
1090	DOMINGUEZ           	\N	                    	Gastón David        	\N	DNI 	28895059	20	28895059	9	M	1981-07-04	\N	\N	1090	A	PERGAMINO	4	2014	5	2019	B	AR
1112	LOPEZ               	\N	                    	Rubén Álvaro        	\N	DNI 	14557149	23	14557149	9	M	1961-04-12	\N	\N	1112	A	Avellaneda	4	2014	5	2019	B	AR
1093	MARTORELLI          	\N	                    	Roberto Ariel       	\N	DNI 	14231373	20	14231373	2	M	1960-12-09	\N	\N	1093	A	Capital Federal	4	2014	5	2019	C	AR
1111	MONTGOMERY          	\N	                    	Yanina Vanesa       	\N	DNI 	31014859	27	31014859	3	F	1984-08-16	\N	\N	1111	A	LANUS	4	2014	5	2019	B	AR
1118	RIVAROLA MARTINEZ   	\N	                    	Norma Gisele        	\N	DNI 	18800804	27	18800804	1	F	1971-07-05	\N	\N	1118	A	ASUNCION	4	2014	5	2019	\N	PY
141	GLAS                	SCHAJRIS            	                    	Gregorio Oscar      	\N	DNI 	4425822	20	4425822	7	M	1943-12-01	\N	\N	141	P	Capital Federal	7	2011	2	2022	C	AR
1073	CORVAGLIA AGUILAR   	\N	                    	Ana Morena          	\N	DNI 	19028178	27	19028178	2	F	1978-11-20	\N	\N	1073	A	Madrid	4	2014	3	2022	\N	ES
1192	CRUZ                	\N	                    	Gastón Ezequiel     	\N	DNI 	29381171	20	29381171	8	M	1982-03-02	\N	\N	1192	A	QUILMES	6	2014	3	2022	B	AR
1084	DIAZ                	\N	                    	Fernanda Daniela    	\N	DNI 	28631552	27	28631552	1	F	1980-12-15	\N	\N	1084	A	TEMPERLEY	4	2014	3	2022	B	AR
1116	TAMBONE             	\N	                    	Marcela Alicia      	\N	DNI 	27861369	27	27861369	6	F	1980-01-11	\N	\N	1116	A	CAPITAL FEDERAL	4	2014	5	2019	C	AR
1223	TAGLIERO            	\N	                    	Carlos Alberto      	\N	DNI 	13486245	23	13486245	9	M	1959-11-01	\N	\N	1223	A	LA PLATA	8	2014	11	2019	B	AR
1101	ASTEASUAIN          	\N	                    	Fernando            	\N	DNI 	26333057	23	26333057	9	M	1977-10-26	\N	\N	1101	A	Bahía Blanca	4	2014	3	2017	B	AR
1239	MAURENTE JAIME      	\N	                    	Ruth                	\N	DNI 	37836627	27	37836627	0	F	1993-08-07	\N	\N	1239	P	FLORENCIA VARELA	9	2014	2	2023	B	AR
1227	CICCONE             	\N	                    	Florencia           	\N	DNI 	23377146	27	23377146	0	F	1973-07-04	\N	\N	1227	P	CAPITAL FEDERAL	8	2014	2	2023	C	AR
1226	COLUCCIO            	\N	                    	Mariela Ana         	\N	DNI 	30860392	27	30860392	5	F	1984-03-02	\N	\N	1226	P	CAPITAL FEDERAL	8	2014	2	2023	\N	\N
1222	LLOYD               	CEBREIRO            	BEER                	Paula Yamila        	\N	DNI 	30653387	27	30653387	3	F	1983-12-18	\N	\N	1222	P	Ciudad Autónoma de Buenos Aires	8	2014	2	2023	C	AR
1220	LUGO                	\N	                    	Carlos Javier       	\N	DNI 	31309796	20	31309796	0	M	1984-11-18	\N	\N	1220	P	Quilmes	8	2014	2	2023	B	AR
1188	MANN                	\N	                    	Marina Inés         	\N	DNI 	26836800	27	26836800	6	F	1978-08-24	\N	\N	1188	P	CAPITAL FEDERAL	6	2014	2	2023	C	AR
1180	BRATT               	\N	MASTRASSO           	Silvia Ines         	\N	DNI 	17103912	27	17103912	1	F	1964-10-24	\N	\N	1180	P	Ciudad Autónoma de Buenos Aires	6	2014	2	2023	C	AR
1157	GHIRARDI            	\N	                    	Débora Carolina     	\N	DNI 	31912698	27	31912698	3	F	1985-10-31	\N	\N	1157	P	LANUS	6	2014	2	2023	B	AR
1155	KOULINKA            	\N	                    	Andrea Lorena       	\N	DNI 	33022574	27	33022574	8	F	1987-07-06	\N	\N	1155	P	Ciudad Autónoma de Buenos Aires	6	2014	2	2023	C	AR
1121	PALACIO             	\N	                    	Carlos Gastón       	\N	DNI 	26481420	20	26481420	1	M	1978-03-15	\N	\N	1121	P	CORDOBA	4	2014	2	2023	X	AR
1114	PEREZ               	\N	                    	María Laura         	\N	DNI 	30393237	27	30393237	8	F	1983-07-21	\N	\N	1114	P	CAPITAL FEDERAL	4	2014	2	2023	C	AR
1113	MORILLO             	\N	                    	Marcelo Alejandro   	\N	DNI 	24623464	20	24623464	8	M	1975-06-08	\N	\N	1113	P	CAPITAL FEDERAL	4	2014	2	2023	C	AR
1106	ARAMBURU            	\N	                    	Jorgelina Marta     	\N	DNI 	24772148	27	24772148	2	F	1975-06-05	\N	\N	1106	P	BAHIA BLANCA	4	2014	2	2023	B	AR
1104	LANZIANO            	\N	                    	Analía Beatriz      	\N	DNI 	28513770	27	28513770	0	F	1981-07-11	\N	\N	1104	P	CAPITAL FEDERAL	4	2014	2	2023	C	AR
1102	CREMONTE            	\N	                    	Ulises Salvador     	\N	DNI 	23706569	20	23706569	8	M	1974-03-21	\N	\N	1102	P	MAR DEL PLATA	4	2014	2	2023	B	AR
1099	SCARONE             	\N	                    	Mariano Alberto     	\N	DNI 	26259556	20	26259556	1	M	1978-01-20	\N	\N	1099	P	Capital Federal	4	2014	2	2023	C	AR
1098	VIVES               	\N	                    	Ana Maria           	\N	DNI 	24588728	27	24588728	6	F	1975-05-07	\N	\N	1098	P	Capital Federal	4	2014	2	2023	C	AR
1096	CERSOSIMO           	\N	                    	Luis Facundo        	\N	DNI 	29041412	20	29041412	2	M	1981-08-01	\N	\N	1096	P	BUENOS AIRES	4	2014	2	2023	B	AR
1091	BARTALINI           	\N	                    	Carolina Cecilia    	\N	DNI 	30926412	27	30926412	1	F	1984-04-22	\N	\N	1091	P	Capital Federal	4	2014	2	2023	C	AR
1088	ROSSI               	\N	                    	Diego Damián        	\N	DNI 	20837301	20	20837301	4	M	1969-06-12	\N	\N	1088	P	San Fernando	4	2014	2	2023	B	AR
1213	LORENZO             	\N	                    	Paula Mercedes      	\N	DNI 	23086403	27	23086403	4	F	1972-12-07	\N	\N	1213	A	CAPITAL FEDERAL	7	2014	6	2023	C	AR
1224	ARRUDA SALES        	\N	                    	Francisco Thiberio  	\N	DNI 	95279103	20	95279103	7	M	1987-09-09	\N	\N	1224	A	SENADOR PAMPEU	8	2014	6	2021	\N	BR
1100	ROMANO              	\N	                    	Verónica Andrea     	\N	DNI 	23516494	27	23516494	4	F	1973-11-28	\N	\N	1100	A	Capital Federal	4	2014	8	2021	C	AR
1125	SORIN               	\N	                    	Jaime Rodolfo       	\N	DNI 	4530103	20	4530103	7	M	1945-11-28	\N	\N	1125	A	Capital Federal	4	2014	9	2022	C	AR
1094	PAEZ                	\N	                    	María Celina        	\N	DNI 	12976914	27	12976914	4	F	1959-04-05	\N	\N	1094	P	Capital Federal	4	2014	10	2022	\N	AR
1095	MARONESE            	\N	                    	Leticia Norma       	\N	DNI 	4864251	27	4864251	4	F	1944-08-18	\N	\N	1095	P	MAR DEL PLATA	4	2014	10	2022	B	AR
1103	SCHANZ              	\N	                    	Mónica Graciela     	\N	DNI 	13554522	27	13554522	3	F	1961-01-11	\N	\N	1103	P	EZEIZA	4	2014	10	2022	B	AR
1108	PIWOWARSKI          	\N	                    	Eva Marta           	\N	DNI 	12563076	27	12563076	1	F	1956-11-13	\N	\N	1108	P	San Martin	4	2014	10	2022	B	AR
1139	BARRAL              	\N	                    	Susana Isabel       	\N	DNI 	14070168	27	14070168	3	F	1960-06-17	\N	\N	1139	P	Avellaneda	5	2014	10	2022	B	AR
1140	LAZARTE             	\N	                    	Susana Alicia       	\N	DNI 	11632909	27	11632909	9	F	1955-03-27	\N	\N	1140	P	San Miguel de Tucumán	5	2014	10	2022	T	AR
1137	BARRIOS             	\N	                    	Walter Horacio      	\N	DNI 	16940644	20	16940644	9	M	1963-12-16	\N	\N	1137	A	CAPITAL FEDERAL	5	2014	5	2019	C	AR
1228	BERTINI             	\N	                    	Sergio Octavio      	\N	DNI 	12096632	20	12096632	5	M	1956-02-08	\N	\N	1228	A	Buenos Aires	8	2014	3	2019	B	AR
1149	BLANCO              	\N	                    	Gustavo Rodolfo     	\N	DNI 	16263153	20	16263153	6	M	1963-03-06	\N	\N	1149	A	CAPITAL FEDERAL	5	2014	5	2019	C	AR
1147	COLOMBO             	\N	                    	Roxana Paula        	\N	DNI 	30664912	23	30664912	4	F	1984-02-28	\N	\N	1147	A	LANUS	5	2014	12	2020	B	AR
1092	MAIDANA SOSA        	\N	                    	Mirtha Elizabeth    	\N	DNI 	18879827	27	18879827	1	F	1968-04-12	\N	\N	1091	A	ASUNCION	4	2014	7	2020	\N	PY
1123	BOUCHT              	SIGNORELLI          	                    	Debora Natalia      	\N	DNI 	28078506	27	28078506	2	F	1980-03-29	\N	\N	1123	A	Ciudad Autónoma de Buenos Aires	4	2014	5	2019	C	AR
1181	BERENC              	\N	                    	Maria Eugenia       	\N	DNI 	30035902	27	30035902	2	F	1982-12-03	\N	\N	1181	A	CAPITAL FEDERAL	6	2014	7	2019	C	AR
1131	LONGHINI            	\N	                    	Iván                	\N	DNI 	22001023	20	22001023	7	M	1971-04-12	\N	\N	1131	A	LOMAS DE ZAMORA	4	2014	5	2019	\N	AR
1162	RUIZ                	\N	                    	Cecilia Virginia    	\N	DNI 	29239560	23	29239560	4	F	1982-03-24	\N	\N	1162	A	Comodoro Rivadavia	6	2014	5	2019	U	AR
1144	SABAZ               	\N	                    	Cristian Pablo      	\N	DNI 	23090486	20	23090486	4	M	1978-01-02	\N	\N	1144	A	LOMAS DE ZAMORA	5	2014	5	2019	B	AR
1053	SMUD                	\N	                    	Martín Hernán       	\N	DNI 	20404878	23	20404878	9	M	1968-12-06	\N	\N	1053	A	BUENOS AIRES	4	2014	5	2019	B	AR
1231	VILLAR              	\N	                    	Violeta Nora        	\N	DNI 	20481862	27	20481862	8	F	1968-12-12	\N	\N	1231	A	AVELLANEDA	8	2014	9	2021	B	AR
1154	ORTIZ               	\N	                    	Héctor Donato       	\N	DNI 	14020214	20	14020214	3	M	1960-05-30	\N	\N	1154	A	TEMPERLEY	5	2014	12	2021	B	AR
1107	BULIT               	\N	                    	Lisandro Jorge      	\N	DNI 	27761541	20	27761541	0	M	1979-12-13	\N	\N	1107	A	Mercedes	4	2014	3	2022	B	AR
1120	BONGIOVANNI         	\N	                    	Claudio Esteban     	\N	DNI 	12825107	20	12825107	4	M	1959-03-08	\N	\N	1120	A	LOMAS DE ZAMORA	4	2014	3	2022	B	AR
1129	CISTERNA            	\N	                    	Cristian Javier     	\N	DNI 	29497157	20	29497157	3	M	1982-04-29	\N	\N	1129	A	CAPITAL FEDERAL	4	2014	3	2022	C	AR
1127	DOMOÑI              	\N	                    	Eliana Denise       	\N	DNI 	38844521	27	38844521	7	F	1995-07-11	\N	\N	1127	A	Quilmes	4	2014	3	2022	B	AR
1097	JOURDAN             	\N	                    	Dafne María de las M	\N	DNI 	26276893	27	26276893	2	F	1978-01-17	\N	\N	1097	A	SANTA FE	4	2014	3	2022	S	AR
1661	QUEIPO              	\N	                    	German Helvio       	\N	DNI 	33552887	20	33552887	6	M	1988-02-20	\N	\N	1661	A	CAPITAL FEDERAL	11	2015	12	2019	C	AR
1138	GONZALEZ FLORES     	\N	                    	Damián              	\N	DNI 	26415705	20	26415705	7	M	1978-02-13	\N	\N	1138	A	COMODORO RIVADAVIA	5	2014	5	2019	U	AR
746	PERERA              	\N	                    	Maria Veronica      	\N	DNI 	20009588	27	20009588	5	F	1968-02-17	\N	\N	746	A	CAPITAL FEDERAL	4	2013	1	2017	C	AR
1136	BRALO CISTERNAS     	\N	                    	Marcos Alfredo      	\N	DNI 	28670611	20	28670611	9	M	1980-12-24	\N	\N	1136	A	LA PLATA	5	2014	10	2015	B	AR
1519	GARCIA CONTI        	\N	                    	Micaela             	\N	DNI 	35043762	27	35043762	8	F	1990-01-29	\N	\N	1519	P	MAR DEL PLATA	7	2015	2	2023	B	AR
1175	PONCE               	\N	                    	Sandra Lorena       	\N	DNI 	31205635	27	31205635	1	F	1984-11-08	\N	\N	1175	P	CAPITAL FEDERAL	6	2014	2	2023	C	AR
1158	MILLAN              	\N	                    	Héctor Daniel       	\N	DNI 	17213027	20	17213027	6	M	1965-02-15	\N	\N	1158	P	CAPITAL FEDERAL	6	2014	2	2023	C	AR
1153	PALMA               	MOLINA              	                    	Javier Esteban      	\N	DNI 	22788296	20	22788296	5	M	1972-10-21	\N	\N	1153	P	San Juan	5	2014	2	2023	J	AR
1152	VIVAS               	\N	                    	Ayelen Rosalía      	\N	DNI 	37041132	27	37041132	3	F	1992-07-08	\N	\N	1152	P	Ciudad Autónoma de Buenos Aires	5	2014	2	2023	C	AR
1150	ARCUSCHIN           	\N	                    	Lara Daniela        	\N	DNI 	31722963	27	31722963	7	F	1985-08-11	\N	\N	1150	P	CAPITAL FEDERAL	5	2014	2	2023	C	AR
1145	FAIAD               	\N	                    	Martha Esther       	\N	DNI 	31059820	27	31059820	3	F	1984-06-26	\N	\N	1145	P	Ciudad Autónoma de Buenos Aires	5	2014	2	2023	C	AR
1142	CARNERO             	\N	                    	Gustavo Omar        	\N	DNI 	17901364	23	17901364	9	M	1966-03-23	\N	\N	1142	P	CAPITAL FEDERAL	5	2014	2	2023	C	AR
1141	CLAVIJO             	\N	                    	Julio Cesar         	\N	DNI 	16492125	20	16492125	6	M	1963-01-19	\N	\N	1141	P	Ciudad Autónoma de Buenos Aires	5	2014	2	2023	C	AR
1134	PELLEGRINI          	\N	                    	Federico Raul       	\N	DNI 	28170616	20	28170616	1	M	1980-05-25	\N	\N	1134	P	QUILMES	4	2014	2	2023	B	AR
1133	BRAT                	\N	                    	Damian              	\N	DNI 	27023465	20	27023465	9	M	1978-12-12	\N	\N	1133	P	LA PLATA	4	2014	2	2023	B	AR
1128	SCHOR LANDMAN       	RUJINSKY            	                    	Clara Irene         	\N	DNI 	11026247	27	11026247	2	F	1953-11-01	\N	\N	1128	J	CAPITAL FEDERAL	4	2014	8	2023	C	AR
484	JUAREZ              	COSSIO              	                    	Dolores Camila      	\N	DNI 	23888528	27	23888528	6	F	1974-05-24	\N	\N	484	A	Ciudad Autónoma de Buenos Aires	5	2012	5	2014	C	AR
1234	SANCHEZ             	\N	                    	Ariel Fernando      	\N	DNI 	33172087	23	33172087	9	M	1988-03-16	\N	\N	1234	A	VILLA MERCEDES	9	2014	8	2018	D	AR
1122	BOFFELLI            	\N	                    	Marco Tupac         	\N	DNI 	24516519	20	24516519	7	M	1975-04-02	\N	\N	1122	A	CAPITAL FEDERAL	4	2014	7	2021	C	AR
1126	CAMPOS              	\N	                    	Maria Fernanda      	\N	DNI 	22156774	27	22156774	4	F	1971-04-06	\N	\N	1126	A	CAPITAL FEDERAL	4	2014	7	2021	C	AR
1201	GONZALEZ            	\N	                    	Daniel Raul         	\N	DNI 	11456223	20	11456223	9	M	1954-06-17	\N	\N	1201	P	CAPITAL FEDERAL	7	2014	10	2022	C	AR
750	LAIÑO               	\N	                    	Maria Marcela       	\N	DNI 	14310221	27	14310221	7	F	1960-09-25	\N	\N	750	A	CAPITAL FEDERAL	4	2013	1	2017	C	AR
326	OCHOA               	MEDINA VEGA         	                    	Pablo Daniel        	\N	DNI 	37432436	20	37432436	6	M	1993-03-14	\N	\N	326	A	Ciudad Autónoma de Buenos Aires	2	2012	1	2017	C	AR
1240	VIOLI               	\N	                    	Ines Noemi          	\N	DNI 	13265005	27	13265005	0	F	1957-02-18	\N	\N	1240	A	CAPITAL FEDERAL	9	2014	12	2020	C	AR
1177	CABRAL              	VAL                 	                    	Yanina Paula        	\N	DNI 	31828175	27	31828175	6	F	1985-08-22	\N	\N	1177	A	Quilmes	6	2014	7	2019	B	AR
1165	CASSINA             	\N	                    	Nora Beatriz        	\N	DNI 	23288503	27	23288503	9	F	1973-06-28	\N	\N	1165	A	Lanús	6	2014	7	2019	B	AR
1196	PEREIRA             	\N	                    	Paola Viviana       	\N	DNI 	20795473	27	20795473	5	M	1969-01-27	\N	\N	1196	A	BUENOS AIRES	6	2014	7	2019	B	AR
1236	FAGALDE             	\N	                    	Alejandro Gustavo   	\N	DNI 	13305886	23	13305886	9	M	1958-10-16	\N	\N	1236	A	Capital Federal	9	2014	11	2019	C	AR
1199	PASCUAL             	\N	                    	Martin              	\N	DNI 	25800894	20	25800894	5	M	1976-08-06	\N	\N	1199	A	Salta	6	2014	8	2019	A	AR
1208	NOLI                	\N	                    	Luciano Augusto     	\N	DNI 	25314501	20	25314501	4	M	1976-07-07	\N	\N	1208	A	LOMAS DE ZAMORA	7	2014	11	2019	B	AR
1207	REPETTO             	PACINI              	                    	Mariela Beatriz     	\N	DNI 	23991950	27	23991950	8	F	1974-06-06	\N	\N	1207	A	San Martín	7	2014	11	2019	B	AR
1230	VILLALONGA          	\N	                    	Gabriela Edith      	\N	DNI 	14699527	27	14699527	1	F	1961-05-24	\N	\N	1230	A	ENSENADA	8	2014	11	2019	B	AR
872	BALDERRAMA          	\N	                    	Maria Carolina      	\N	DNI 	22618511	27	22618511	4	F	1972-08-24	\N	\N	872	A	SANTIAGO DEL ESTERO	9	2013	3	2022	G	AR
534	AGUILAR             	\N	                    	Marcelo Leopoldo    	\N	DNI 	10765521	20	10765521	3	M	1953-03-15	\N	\N	534	J	Ciudad Autónoma de Buenos Aires	7	2012	5	2022	C	AR
1235	MUÑOZ               	\N	                    	Carlos Antenor      	\N	DNI 	8319865	20	8319865	7	M	1950-06-06	\N	\N	1235	J	CAPITAL FEDERAL	9	2014	5	2022	C	AR
1164	DOMINE              	\N	                    	Marcela Alejandra   	\N	DNI 	16891887	27	16891887	4	F	1964-02-07	\N	\N	1164	A	Ciudad Autónoma de Buenos Aires	6	2014	12	2019	C	AR
1211	MARASCA             	\N	                    	Dante               	\N	DNI 	12270064	20	12270064	0	M	1956-10-28	\N	\N	1211	A	CAPITAL FEDERAL	7	2014	5	2017	B	AR
1160	DOMINGUEZ           	\N	                    	Gustavo Alberto     	\N	DNI 	16747970	20	16747970	8	M	1964-03-09	\N	\N	1160	A	QUILMES	6	2014	1	2018	B	AR
1193	BENTOSELA           	\N	                    	Alfredo Flavio      	\N	DNI 	20733142	20	20733142	3	M	1969-03-02	\N	\N	1193	A	WILDE	6	2014	2	2018	B	AR
1243	DOMINGUEZ           	\N	                    	Fernando Emmanuel   	\N	DNI 	33745537	23	33745537	9	M	1988-04-26	\N	\N	1243	P	LA PLATA	9	2014	2	2023	B	AR
1242	FERNANDEZ SOSA      	\N	                    	Alexander           	\N	DNI 	18883012	23	18883012	9	M	1975-07-31	\N	\N	1242	P	Cuba	9	2014	2	2023	\N	CU
1238	ALVAREZ BROZ        	\N	                    	Mariana Carolina    	\N	DNI 	25675420	27	25675420	2	F	1976-11-25	\N	\N	1238	P	CAPITAL FEDERAL	9	2014	2	2023	C	AR
1237	GOMEZ               	\N	                    	Mariel Natalia      	\N	DNI 	28857771	23	28857771	4	F	1981-07-19	\N	\N	1237	P	3 DE FEBRERO	9	2014	2	2023	B	AR
1233	AMSLER              	\N	                    	Eric Augusto        	\N	DNI 	30501989	20	30501989	6	M	1983-12-19	\N	\N	1233	P	SANTA FE	9	2014	2	2023	S	AR
1215	HERRERA FARFAN      	\N	                    	Nicolás Armando     	\N	DNI 	94472965	20	94472965	9	M	1983-04-24	\N	\N	1215	P	NEIVA	7	2014	2	2023	\N	CO
1209	FERREYRA            	\N	                    	Emanuel Javier      	\N	DNI 	35066758	20	35066758	0	M	1990-03-05	\N	\N	1209	P	LANUS	7	2014	2	2023	B	AR
1206	REBOLLEDO VILLARROEL	\N	                    	Tamara Salomé       	\N	DNI 	24364951	27	24364951	5	F	1974-12-03	\N	\N	1206	P	Ciudad Autónoma de Buenos Aires	7	2014	2	2023	C	AR
1205	DUARTE              	\N	                    	Noelia Daniela      	\N	DNI 	32611423	27	32611423	0	F	1986-12-01	\N	\N	1205	P	SARANDI	7	2014	2	2023	B	AR
1200	SALERNO             	\N	BARTOLOME           	Daniel Omar Roberto 	\N	DNI 	22981825	20	22981825	3	M	1972-10-27	\N	\N	1200	P	Ciudad Autónoma de Buenos Aires	7	2014	2	2023	C	AR
1197	GODOY               	\N	                    	Eduardo David       	\N	DNI 	32969361	23	32969361	9	M	1987-04-17	\N	\N	1197	P	QUILMES	6	2014	2	2023	B	AR
1172	LOMAZZI             	MEYER               	                    	Mariano             	\N	DNI 	31438066	20	31438066	6	M	1985-01-11	\N	\N	1172	P	Ciudad Autónoma de Buenos Aires	6	2014	2	2023	C	AR
1167	GIMENEZ ROLDAN      	ROLDAN              	MATEOS              	Judith María        	\N	DNI 	26337806	27	26337806	2	F	1977-11-16	\N	\N	1167	P	Ciudad Autónoma de Buenos Aires	6	2014	2	2023	C	AR
1163	KOVAL               	\N	                    	Martín Ignacio      	\N	DNI 	29988769	20	29988769	4	M	1983-02-22	\N	\N	1163	P	BUENOS AIRES	6	2014	2	2023	B	AR
1161	MENGA               	FERNANDEZ           	                    	Mariana             	\N	DNI 	32243094	27	32243094	4	M	1986-04-11	\N	\N	1161	P	Ciudad Autónoma de Buenos Aires	6	2014	2	2023	C	AR
1156	LOPEZ PIÑEYRO       	PIÑEYRO             	LOPEZ REY           	Hernán Ignacio      	\N	DNI 	30364412	20	30364412	2	M	1983-07-30	\N	\N	1156	P	Lanús	6	2014	2	2023	B	AR
1151	LAGO MILLAN         	\N	                    	Juan Pablo          	\N	DNI 	30210835	20	30210835	9	M	1983-05-12	\N	\N	1151	P	SAN MARTIN	5	2014	2	2023	B	AR
1225	VILLALBA            	\N	                    	Rocio Soledad       	\N	DNI 	36026805	27	36026805	0	F	1991-08-29	\N	\N	1225	A	ITUZAINGO	8	2014	8	2023	W	AR
1210	RODRIGUEZ           	VALDES              	ESPOSITO            	Graciela Beatriz    	\N	DNI 	16215325	27	16215325	6	F	1962-11-26	\N	\N	1210	A	Wilde, Avellaneda	7	2014	8	2023	B	AR
1052	PEREZ               	\N	                    	Roxana Anahi        	\N	DNI 	36066278	27	36066278	6	F	1991-11-02	\N	\N	1052	A	AVELLANEDA	4	2014	8	2021	B	AR
355	PEREIRA             	RODRÍGUEZ           	GUBIA               	Natalia Nazarena    	\N	DNI 	25867777	27	25867777	9	F	1977-05-12	\N	\N	355	A	San Francisco Solano	2	2012	9	2019	B	AR
1268	DELLEA              	\N	                    	María Constanza     	\N	DNI 	21738407	27	21738407	4	F	1970-08-05	\N	\N	1268	A	LANUS	10	2014	11	2019	B	AR
1275	LEGASPI             	\N	                    	Ana Jimena          	\N	DNI 	31298108	23	31298108	4	F	1984-11-09	\N	\N	1275	A	\N	10	2014	11	2019	\N	\N
1253	MOYANO              	\N	                    	Bárbara Noelia      	\N	DNI 	28384249	27	28384249	0	F	1980-08-29	\N	\N	1253	A	CAPITAL FEDERAL	9	2014	11	2019	C	AR
1272	TAUBE               	\N	                    	Maria Laura         	\N	DNI 	28937031	27	28937031	0	F	1981-06-18	\N	\N	1272	A	\N	10	2014	11	2019	\N	\N
1247	ICAZA               	TROPEA              	                    	Carlos Isidro       	\N	DNI 	31470928	20	31470928	5	M	1985-05-01	\N	\N	1247	A	Ciudad Autónoma de Buenos Aires	9	2014	11	2019	C	AR
1258	MACIEL              	ROSSETTI            	MONTAÑEZ            	María Fernanda      	\N	DNI 	20593310	27	20593310	2	F	1968-12-08	\N	\N	1258	A	Morón	9	2014	11	2019	B	AR
1266	MENGONI             	\N	                    	Claudio Alejandro   	\N	DNI 	16680778	20	16680778	7	M	1964-02-05	\N	\N	1266	A	WILDE AVELLENDA	10	2014	12	2019	B	AR
1249	MANCINI             	\N	                    	María Julia         	\N	DNI 	27235938	24	27235938	1	F	1979-04-06	\N	\N	1249	A	LA PLATA	9	2014	2	2022	B	AR
1260	LANNES              	\N	                    	Pablo Luciano       	\N	DNI 	28176798	20	28176798	5	M	1980-05-14	\N	\N	1260	A	LOMAS DE ZAMORA	9	2014	1	2022	B	AR
1274	DI BAJA             	\N	                    	Florencia           	\N	DNI 	27089267	27	27089267	7	F	1979-02-20	\N	\N	1274	A	CAPITAL FEDERAL	10	2014	3	2022	C	AR
1278	DIAZ                	\N	                    	Elena Graciela      	\N	DNI 	26855219	27	26855219	2	F	1971-02-11	\N	\N	1278	A	LANUS	11	2014	3	2022	B	AR
1251	MERCADANTE          	\N	                    	María Fernanda      	\N	DNI 	24127577	27	24127577	4	F	1974-08-20	\N	\N	1251	A	CAPITAL FEDERAL	9	2014	5	2022	C	AR
1264	ORTIZ               	ALVEZ               	                    	Martha Cecilia      	\N	DNI 	26359143	20	26359143	8	F	1977-12-01	\N	\N	1264	A	Lanús	10	2014	5	2022	B	AR
760	KIPER               	\N	                    	Eduardo Raul        	\N	DNI 	10306235	20	10306235	8	M	1952-02-02	\N	\N	760	J	CAPITAL FEDERAL	5	2013	5	2022	C	AR
1267	TUCCI               	\N	                    	María Cristina      	\N	DNI 	13223103	27	13223103	1	F	1959-02-09	\N	\N	1267	A	Ciudad Autónoma de Buenos Aires	10	2014	6	2022	C	AR
1312	ZANLUNGO            	\N	                    	Federico            	\N	DNI 	32641660	20	32641660	7	M	1986-10-20	\N	\N	1312	P	Quilmes	3	2015	2	2023	B	AR
1301	MEDINA              	\N	                    	Alejandra Fabiana   	\N	DNI 	27084801	27	27084801	5	F	1978-12-15	\N	\N	1301	P	CAPITAL FEDERAL	3	2015	2	2023	C	AR
1297	JORGE               	\N	                    	Silvia Beatriz      	\N	DNI 	17899837	23	17899837	4	F	1967-11-09	\N	\N	1297	P	SAN MARTIN	3	2015	2	2023	B	AR
1295	ROMERO              	\N	                    	Alejandro Maria     	\N	DNI 	14565465	20	14565465	4	M	1961-08-24	\N	\N	1295	P	CAPITAL FEDERAL	2	2015	2	2023	C	AR
1293	SCHOENLE            	\N	                    	Ludmila             	\N	DNI 	34155529	27	34155529	4	F	1988-10-12	\N	\N	1293	P	BUENOS AIRES	1	2015	2	2023	B	AR
1291	CELI                	\N	                    	Pablo Ignacio       	\N	DNI 	34108577	20	34108577	3	M	1988-12-14	\N	\N	1291	P	CAPITAL FEDERAL	12	2014	2	2023	C	AR
1285	SOTO                	\N	                    	Juan Francisco Numa 	\N	DNI 	28201213	20	28201213	9	M	1980-07-06	\N	\N	1285	P	CORRIENTES	11	2014	2	2023	W	AR
1283	VILA                	\N	                    	Marcela Soledad     	\N	DNI 	30230396	27	30230396	2	F	1983-05-10	\N	\N	1283	P	VALENTIN ALSINA	11	2014	2	2023	B	AR
1282	OTTAVIANO           	\N	                    	Lorena              	\N	DNI 	20567170	27	20567170	1	F	1968-10-28	\N	\N	1282	P	CAPITAL FEDERAL	11	2014	2	2023	C	AR
1281	HAMILTON            	\N	                    	Carina Marcela      	\N	DNI 	21612345	27	21612345	5	F	1970-06-25	\N	\N	1281	P	CORDOBA	11	2014	2	2023	X	AR
1279	FONTE               	\N	                    	Mariano Miguel      	\N	DNI 	26010175	20	26010175	8	M	1977-08-15	\N	\N	1279	P	AVELLANEDA	11	2014	2	2023	B	AR
1276	ROMERO              	MACHUCA RIVAS       	                    	Natalia Analía      	\N	DNI 	26734107	27	26734107	4	F	1978-06-22	\N	\N	1276	P	Ciudad Autónoma de Buenos Aires	11	2014	2	2023	C	AR
1270	GENOVESI            	\N	                    	Laura               	\N	DNI 	18404180	23	18404180	4	F	1967-12-01	\N	\N	1270	P	BUENOS AIRES	10	2014	2	2023	B	AR
1265	PEREZ FAGONDE       	\N	                    	Gustavo             	\N	DNI 	14106623	20	14106623	5	F	1961-01-15	\N	\N	1265	P	CAPITAL FEDERAL	10	2014	2	2023	C	AR
1262	REDCHUK             	CISTERNA            	RODRIGUEZ           	Andrés              	\N	DNI 	17917776	20	17917776	6	M	1966-10-31	\N	\N	1262	P	Almte. Brown	10	2014	2	2023	B	AR
1261	LA CHIESA           	\N	                    	Silvana Andrea      	\N	DNI 	23261028	27	23261028	5	F	1973-01-25	\N	\N	1261	P	QUILMES	9	2014	2	2023	B	AR
1257	JARDON              	\N	                    	Marcelo  Fernando   	\N	DNI 	32831977	20	32831977	3	M	1987-03-04	\N	\N	1257	P	AVELLANEDA	9	2014	2	2023	B	AR
1255	LOBOS               	DE BARRIOS          	                    	Liana Andrea        	\N	DNI 	22147155	27	22147155	0	F	1971-03-24	\N	\N	1255	P	Ciudad Autónoma de Buenos Aires	9	2014	2	2023	C	AR
1250	MONTESANO           	\N	                    	María Marta         	\N	DNI 	25556862	27	25556862	6	F	1976-10-02	\N	\N	1250	P	CAPITAL FEDERAL	9	2014	2	2023	C	AR
1212	ESQUIVEL            	\N	                    	Jorge Fidel         	\N	DNI 	25889741	20	25889741	3	M	1977-05-05	\N	\N	1212	P	FORMOSA	7	2014	2	2023	P	AR
1204	D´ATRI              	\N	                    	Ariel Pablo         	\N	DNI 	26558569	20	26558569	9	M	1978-01-15	\N	\N	1204	P	Quilmes	7	2014	2	2023	B	AR
1379	COLONA              	\N	                    	Lucia               	\N	DNI 	26317471	27	26317471	8	F	1977-11-12	\N	\N	1379	P	CAPITAL FEDERAL	5	2015	5	2023	C	AR
1263	KAPLAN              	\N	                    	Gloria Elina        	\N	DNI 	10043399	27	10043399	6	F	1955-03-02	\N	\N	1263	J	Santiago del Estero	10	2014	6	2023	G	AR
1269	PEIRO APARISI       	\N	                    	Marina Edith        	\N	DNI 	22029213	23	22029213	4	F	1971-02-04	\N	\N	1269	A	LA PLATA	10	2014	8	2023	B	AR
1248	LOPEZ               	\N	                    	Andrea Fabiana      	\N	DNI 	17824025	27	17824025	6	F	1966-01-02	\N	\N	1248	A	SARANDI, AVELLANEDA	9	2014	8	2023	B	AR
1298	VIDAL               	\N	                    	Gabriela Natalia    	\N	DNI 	26282602	27	26282602	9	F	1978-01-22	\N	\N	1298	A	CAPITAL FEDERAL	3	2015	8	2018	C	AR
1305	KARP                	\N	                    	Maria               	\N	DNI 	29133571	27	29133571	9	F	1981-11-03	\N	\N	1305	A	CAPITAL FEDERAL	3	2015	9	2017	C	AR
1289	PRINCIPE            	\N	                    	Luis Martín         	\N	DNI 	28687254	23	28687254	9	M	1981-05-18	\N	\N	1289	A	AVELLANEDA	12	2014	7	2017	B	AR
1317	LOPEZ               	\N	                    	Karina Liliana      	\N	DNI 	26230158	27	26230158	9	F	1977-08-30	\N	\N	1317	P	BANFIELD	3	2015	7	2017	B	AR
1256	LAGOSTENA           	RIVAS               	                    	Juan Pablo          	\N	DNI 	30911912	20	30911912	7	M	1984-04-13	\N	\N	1256	A	Quilmes	9	2014	10	2020	B	AR
1287	FERNANDEZ           	\N	                    	Oscar Adolfo        	\N	DNI 	8011371	20	8011371	5	M	1950-02-01	\N	\N	1287	P	OLIVOS	11	2014	10	2022	B	AR
1246	ALONSO              	\N	                    	Daniela Debora      	\N	DNI 	24549489	27	24549489	6	F	1975-06-04	\N	\N	1246	A	LANUS	9	2014	11	2019	B	AR
1259	LAMAS               	\N	                    	Juanita Leonarda    	\N	DNI 	18430502	27	18430502	5	F	1967-10-09	\N	\N	1259	A	HUMAHUACA	9	2014	11	2019	Y	AR
1319	AMBROSIO            	\N	                    	Maria Laura         	\N	DNI 	31747433	23	31747433	4	F	1984-01-15	\N	\N	1319	A	MAIPU	3	2015	12	2019	M	AR
1304	CABRAL              	\N	                    	Yamila Alejandra    	\N	DNI 	25186231	27	25186231	7	F	1976-05-04	\N	\N	1304	A	MORENO	3	2015	12	2019	B	AR
1300	ABELEDO             	\N	                    	Agustin Maria Benito	\N	DNI 	31752748	23	31752748	9	M	1985-08-15	\N	\N	1300	A	CAPITAL FEDERAL	3	2015	8	2018	C	AR
1290	VALCARCE            	\N	                    	Guillermo Ramon     	\N	DNI 	7704792	20	7704792	2	M	1949-03-31	\N	\N	1290	A	CAPITAL FEDERAL	12	2014	9	2021	C	AR
1306	ALVAREZ             	\N	                    	Nestor Adolfo       	\N	DNI 	14557421	20	14557421	9	M	1961-06-19	\N	\N	1306	A	CAPITAL FEDERAL	3	2015	12	2021	C	AR
1316	RAPETTI             	\N	                    	Angel Carlos        	\N	DNI 	10266731	20	10266731	0	M	1952-07-21	\N	\N	1316	A	CAPITAL FEDERAL	3	2015	2	2022	C	AR
1252	DIAZ                	\N	                    	Federico            	\N	DNI 	30234174	20	30234174	6	M	1983-07-19	\N	\N	1252	A	VICENTE LOPEZ	9	2014	3	2022	B	AR
271	TOMSIC              	FATUR               	                    	Viviana Beatriz     	\N	DNI 	17149285	27	17149285	3	F	1965-05-30	\N	\N	271	P	Avellaneda	12	2011	4	2015	B	AR
1309	RAMOS               	\N	                    	Juan Marcelo        	\N	DNI 	23723991	20	23723991	2	M	1974-10-14	\N	\N	1309	A	AVELLANEDA	3	2015	8	2021	B	AR
1015	ALBORNOZ            	\N	                    	Carla Daniela       	\N	DNI 	37977269	27	37977269	8	F	1993-11-03	\N	\N	1015	A	QUILMES	2	2014	3	2017	B	AR
1318	KOMENDAT            	\N	                    	Francisco Martin    	\N	DNI 	13092244	23	13092244	9	M	1958-11-25	\N	\N	1318	P	CAPITAL FEDERAL	3	2015	12	2022	C	AR
2002	KOPELOVICH          	\N	                    	Pablo               	\N	DNI 	32313290	23	32313290	9	M	1986-05-24	\N	\N	2002	P	La Plata	5	2018	2	2023	B	AR
1386	FLORES              	\N	                    	Diego Nicolás       	\N	DNI 	31367928	20	31367928	5	M	1985-03-26	\N	\N	1386	P	Capitán Bermúdez	5	2015	2	2023	S	AR
1385	HORTAS              	Castellarin         	                    	Fabiana             	\N	DNI 	16587702	27	16587702	6	F	1963-05-07	\N	\N	1385	P	Banfield	5	2015	2	2023	B	AR
1369	ESCOBARI            	\N	                    	Nicolás Macario     	\N	DNI 	17957334	20	17957334	3	M	1966-03-03	\N	\N	1369	P	Capital Federal	4	2015	2	2023	C	AR
1367	BARROS              	\N	                    	Virginia Natalia    	\N	DNI 	32341445	27	32341445	4	F	1986-06-10	\N	\N	1367	P	CAPITAL FEDERAL	4	2015	2	2023	C	AR
1365	LINIETSKY           	Grinschpun          	                    	Paula               	\N	DNI 	25295582	27	25295582	3	F	1976-04-18	\N	\N	1365	P	CAPITAL FEDERAL	4	2015	2	2023	B	AR
1348	MORETTI             	\N	                    	Lucas Martín        	\N	DNI 	25917581	20	25917581	0	M	1977-05-07	\N	\N	1348	P	Córdoba Capital	4	2015	2	2023	X	AR
1342	SEGOVIA             	\N	                    	Sebastian           	\N	DNI 	29287753	20	29287753	7	M	1982-08-06	\N	\N	1342	P	VILLA REGINA	4	2015	2	2023	R	AR
1341	RODRIGUEZ           	\N	                    	Carina Fernanda     	\N	DNI 	26670611	27	26670611	7	F	1978-06-11	\N	\N	1341	P	QUILMES	4	2015	2	2023	B	AR
1340	CIGLIANO            	\N	                    	Alejandro           	\N	DNI 	34502768	20	34502768	9	M	1989-05-15	\N	\N	1340	P	Capital Federal	4	2015	2	2023	C	AR
1334	RIVA                	\N	                    	Ramiro              	\N	DNI 	31973856	20	31973856	9	M	1985-11-14	\N	\N	1334	P	La Plata	4	2015	2	2023	B	AR
1333	DALMASSO            	\N	                    	Maria Carolina      	\N	DNI 	25766162	27	25766162	3	F	1977-02-10	\N	\N	1333	P	MENDOZA	4	2015	2	2023	M	AR
1332	SOLARI              	\N	                    	Juan Pablo          	\N	DNI 	24610483	20	24610483	3	M	1975-07-26	\N	\N	1332	P	BENITO JUAREZ	4	2015	2	2023	B	AR
1324	MOREIRA             	\N	                    	Micaela Fernanda    	\N	DNI 	29038413	27	29038413	9	F	1981-07-30	\N	\N	1324	P	CAPITAL FEDERAL	3	2015	2	2023	C	AR
1322	ROMAN               	\N	                    	Andrea Viviana      	\N	DNI 	20473232	27	20473232	4	F	1968-11-29	\N	\N	1322	P	WILDE AVELLENDA	3	2015	2	2023	B	AR
1321	DI PAOLO            	\N	                    	Lucía Ana           	\N	DNI 	31685302	27	31685302	7	F	1985-06-25	\N	\N	1321	P	Capital Federal	3	2015	2	2023	C	AR
1320	D'AQUINO            	\N	                    	Silvana Beatriz     	\N	DNI 	18215068	27	18215068	7	F	1966-12-23	\N	\N	1320	P	CAPITAL FEDERAL	3	2015	2	2023	C	AR
1314	HERRERA             	\N	                    	Maite               	\N	DNI 	33034241	27	33034241	8	F	1987-05-09	\N	\N	1314	P	SAN CARLOS DE BARILOCHE	3	2015	2	2023	R	AR
1299	VAISTIJ             	\N	                    	Natalia             	\N	DNI 	34214776	27	34214776	9	F	1988-11-05	\N	\N	1299	P	CAPITAL FEDERAL	3	2015	2	2023	C	AR
1294	MACIGNANI           	\N	                    	Vicente Horacio     	\N	DNI 	17610314	20	17610314	1	M	1965-04-03	\N	\N	1294	P	BUENOS AIRES	1	2015	2	2023	B	AR
1292	CAROL               	\N	                    	Camila Belen        	\N	DNI 	39665221	27	39665221	3	F	1996-02-14	\N	\N	1292	P	BERNAL	12	2014	2	2023	B	AR
1288	NASSER              	\N	                    	Diego Pablo         	\N	DNI 	23906266	20	23906266	1	M	1974-03-10	\N	\N	1288	P	LOMAS DE ZAMORA	12	2014	2	2023	C	AR
979	CASCO               	\N	                    	María Victoria      	\N	DNI 	30742666	27	30742666	3	F	1984-01-08	\N	\N	979	P	Capital Federal	1	2014	5	2023	C	AR
1310	MAITA               	\N	                    	Daniela Natalia     	\N	DNI 	32321856	27	32321856	6	F	1986-05-10	\N	\N	1310	A	LOMAS DE ZAMORA	3	2015	8	2023	B	AR
299	BRITEZ              	YEGROS              	                    	Hector Ramon        	\N	DNI 	20863879	20	20863879	4	M	1969-08-23	\N	\N	299	A	Ciudad Autónoma de Buenos Aires	1	2012	12	2017	C	AR
1339	LASORSA             	\N	                    	Claudio Daniel      	\N	DNI 	17391737	20	17391737	7	M	1965-07-31	\N	\N	1339	A	Capital Federal	4	2015	4	2017	C	AR
1337	VARGAS              	\N	                    	Raul Agustin        	\N	DNI 	22497090	20	22497090	1	M	1971-09-14	\N	\N	1337	A	Lanús	4	2015	3	2019	B	AR
1347	BELUCCI             	\N	                    	Gustavo Adrian      	\N	DNI 	18149183	20	18149183	4	M	1967-03-16	\N	\N	1347	A	CAPITAL FEDERAL	4	2015	12	2019	C	AR
1383	OCHOA               	Kanobel             	                    	Carla Alejandra     	\N	DNI 	34230835	27	34230835	5	F	1988-12-26	\N	\N	1383	A	Avellaneda	5	2015	12	2019	B	AR
1351	MIGUEL              	\N	                    	Estefanía Soledad   	\N	DNI 	32811557	27	32811557	9	F	1986-12-26	\N	\N	1351	A	Lanús	4	2015	10	2020	B	AR
1368	CUESTA              	\N	                    	Samanta Anabela     	\N	DNI 	30098449	27	30098449	0	F	1983-03-05	\N	\N	1368	A	Avellaneda	4	2015	12	2019	B	AR
1343	PIZZANI             	\N	                    	Maximiliano Ezequiel	\N	DNI 	37200833	20	37200833	5	M	1993-01-22	\N	\N	1343	A	Avellaneda	4	2015	7	2017	B	AR
1330	ESPECHE             	\N	                    	Malena              	\N	DNI 	36400407	27	36400407	4	F	1991-07-14	\N	\N	1330	A	CAPITAL FEDERAL	4	2015	12	2017	C	AR
1355	CHOQUE              	\N	                    	Jorge Alberto       	\N	DNI 	11837107	20	11837107	1	M	1955-02-22	\N	\N	1355	A	CAPITAL FEDERAL	4	2015	4	2016	C	AR
1668	RODRIGUEZ           	\N	                    	Juan Enrique        	\N	DNI 	18211738	20	18211738	3	M	1967-02-25	\N	\N	1668	A	Merlo	11	2015	8	2022	B	AR
1366	TERZANO BOUZON      	\N	                    	Maria Gabriela      	\N	DNI 	14745455	23	14745455	4	F	1961-06-10	\N	\N	1366	P	ROSARIO	4	2015	10	2022	S	AR
1329	BORON               	\N	                    	Atilio Alberto      	\N	LE  	4415354	20	4415354	9	M	1943-07-01	\N	\N	1329	J	BUENOS AIRES	4	2015	5	2022	B	AR
1331	ZITO LEMA           	\N	                    	Camila              	\N	DNI 	34142834	27	34142834	9	F	1988-09-28	\N	\N	1331	A	CAPITAL FEDERAL	4	2015	9	2021	B	AR
1345	PLASTINA            	\N	                    	Miguel Angel        	\N	DNI 	10729703	20	10729703	1	M	1953-04-22	\N	\N	1345	J	Avellaneda	4	2015	5	2022	B	AR
1395	STRADA RODRIGUEZ    	\N	                    	Julia               	\N	DNI 	34408403	27	34408403	9	F	1989-05-26	\N	\N	1395	A	Rosario	5	2015	12	2019	S	AR
1344	MIGLIOLI            	\N	                    	Viviana Graciela    	\N	DNI 	12728586	27	12728586	7	M	1957-03-12	\N	\N	1344	A	CAPITAL FEDERAL	4	2015	6	2021	C	AR
1404	LUGO                	\N	                    	Fernando Gabriel    	\N	DNI 	12917023	23	12917023	9	M	1957-03-11	\N	\N	1404	A	LANUS	5	2015	12	2019	B	AR
1409	LUACES              	\N	                    	Fernando Roberto    	\N	DNI 	16524071	20	16524071	6	M	1963-07-14	\N	\N	1409	A	Capital Federal	5	2015	12	2019	C	AR
1413	AMIGO               	\N	                    	Diego               	\N	DNI 	28693579	20	28693579	7	M	1981-01-16	\N	\N	1413	A	Capital federal	5	2015	12	2019	C	AR
1418	CATANI              	\N	                    	Enrique             	\N	DNI 	22532944	20	22532944	4	M	1972-08-10	\N	\N	1418	A	La Plata	5	2015	12	2019	B	AR
1393	GOMEZ               	\N	                    	Maria del Carmen    	\N	DNI 	24502537	27	24502537	3	F	1974-12-17	\N	\N	1393	A	SAN MARTIN	5	2015	12	2019	B	AR
1394	LETCHER             	\N	                    	Hernan Gabriel      	\N	DNI 	25863344	20	25863344	0	F	1977-05-02	\N	\N	1394	A	BUENOS AIRES	5	2015	12	2019	B	AR
1353	CAMPO               	\N	                    	Ibis Cristina       	\N	DNI 	13625406	27	13625406	0	F	1957-08-05	\N	\N	1353	J	Capital Federal	4	2015	12	2022	C	AR
1352	SQUASSINI           	\N	                    	Gabriela Maria      	\N	DNI 	14526770	27	14526770	1	F	1961-12-01	\N	\N	1352	J	CAPITAL FEDERAL	4	2015	12	2022	C	AR
1662	TALES               	\N	                    	Juan Pablo          	\N	DNI 	26363164	20	26363164	2	M	1977-12-24	\N	\N	1662	P	CAPITAL FEDERAL	11	2015	2	2023	C	AR
1427	PICCONE             	\N	                    	Maria Veronica      	\N	DNI 	23688967	27	23688967	5	F	1973-11-26	\N	\N	1427	P	ENSENADA	5	2015	2	2023	B	AR
1420	LASA                	\N	                    	Cecilia Evangelina  	\N	DNI 	31530760	27	31530760	6	F	1985-07-06	\N	\N	1420	P	9 De Julio	5	2015	2	2023	B	AR
1412	LORENTTI DEBORTOLI  	\N	                    	Matias Javier       	\N	DNI 	38322315	20	38322315	7	M	1994-05-06	\N	\N	1412	P	CABA	5	2015	2	2023	C	AR
1410	ALDAO               	\N	                    	Martin Maria        	\N	DNI 	27580380	20	27580380	5	M	1979-11-16	\N	\N	1410	P	USHUAIA	5	2015	2	2023	V	AR
1408	MLINAROVITZ         	\N	                    	Pablo Rodolfo       	\N	DNI 	22347721	20	22347721	7	M	1971-08-24	\N	\N	1408	P	TEMPERLEY	5	2015	2	2023	B	AR
1407	FERRERO             	\N	                    	José Luis           	\N	DNI 	20241072	20	20241072	4	M	1968-08-27	\N	\N	1407	P	Las Rosas	5	2015	2	2023	S	AR
1406	TOSSO               	\N	                    	Raul Alberto        	\N	DNI 	10588749	20	10588749	4	M	1953-02-19	\N	\N	1406	P	AVELLANEDA	5	2015	2	2023	B	AR
1403	RONCONI             	\N	                    	Liliana Mabel       	\N	DNI 	28627692	27	28627692	5	F	1981-10-21	\N	\N	1403	P	LARROQUE	5	2015	2	2023	E	AR
1402	CANUHE              	\N	                    	Gabriela Noemi      	\N	DNI 	29780787	27	29780787	6	F	1982-11-10	\N	\N	1402	P	CAPITAL FEDERAL	5	2015	2	2023	\N	\N
1399	CARUSO              	\N	                    	Antonio Hugo        	\N	DNI 	7746889	20	7746889	8	M	1944-06-12	\N	\N	1399	P	Avellaneda	5	2015	2	2023	B	AR
1398	GONZALEZ TAGLIANI   	\N	                    	Maria Daniela       	\N	DNI 	35726470	27	35726470	2	F	1991-02-04	\N	\N	1398	P	CAPITAL FEDERAL	5	2015	2	2023	C	AR
1396	SCHIAVI             	\N	                    	Marcos              	\N	DNI 	27589465	20	27589465	7	M	1979-08-14	\N	\N	1396	P	Quilmes	5	2015	2	2023	B	AR
1392	MILLAN ARTEAGA      	\N	                    	Luis Enrique        	\N	DNI 	95412264	20	95412264	7	M	1970-04-12	\N	\N	1392	P	CARACAS	5	2015	2	2023	\N	VE
1391	CORAGGIO            	\N	                    	Pablo Daniel        	\N	DNI 	30778822	20	30778822	6	M	1984-02-18	\N	\N	1391	P	Avellaneda	5	2015	2	2023	B	AR
1389	STANZIONI           	\N	                    	Diana               	\N	DNI 	95416614	27	95416614	2	F	1982-12-27	\N	\N	1389	P	BRASILIA	5	2015	2	2023	\N	BR
1380	CASTRO              	\N	                    	Luciana Estela      	\N	DNI 	32242993	27	32242993	8	F	1986-04-07	\N	\N	1380	P	Capital Federal	5	2015	2	2023	C	AR
1364	MORENO              	\N	                    	Juan Cruz           	\N	DNI 	24417271	20	24417271	8	M	1975-05-04	\N	\N	1364	P	TRES ARROYOS	4	2015	2	2023	B	AR
1405	FERRARO             	\N	                    	Nicolás Pablo       	\N	DNI 	29248721	20	29248721	6	M	1981-12-25	\N	\N	1405	A	Capital Federal	5	2015	6	2023	C	AR
1358	MACHADO             	\N	                    	Marianela Soledad   	\N	DNI 	35233534	27	35233534	2	F	1990-06-03	\N	\N	1358	A	Lomas de Zamora	4	2015	12	2019	B	AR
1422	MARTINEZ            	\N	                    	Cecilia Gabriela    	\N	DNI 	29099748	27	29099748	3	F	1981-10-19	\N	\N	1422	A	Vicente Lopez	5	2015	2	2020	B	AR
1363	BUSQUIER            	\N	                    	Christian M.        	\N	DNI 	23102677	20	23102677	1	M	1973-01-19	\N	\N	1363	A	CAPITAL FEDERAL	4	2015	3	2020	B	AR
1360	SCILINGUO           	\N	                    	Gabriela Susana     	\N	DNI 	31898834	27	31898834	5	F	1985-08-17	\N	\N	1360	A	Buenos Aires	4	2015	9	2020	B	AR
1387	CIFFONI             	Berretta            	                    	Nelson Adrian       	\N	DNI 	16777509	20	16777509	9	M	1964-04-08	\N	\N	1387	A	CAPITAL FEDERAL	5	2015	12	2019	C	AR
1417	GALLEGO VILLALBA    	\N	                    	Fernando Damian     	\N	DNI 	32841818	20	32841818	6	M	1978-03-23	\N	\N	1417	A	LOMAS DE ZAMORA	5	2015	12	2019	B	AR
1419	GATTONI             	\N	                    	Walter Marcelo      	\N	DNI 	22963679	20	22963679	1	M	1972-10-10	\N	\N	1419	A	Capital Federal	5	2015	12	2019	B	AR
1401	HEREDIA             	\N	                    	Ana Tamara          	\N	DNI 	23847131	27	23847131	7	F	1974-09-02	\N	\N	1401	A	Capital Federal	5	2015	12	2019	C	AR
1416	KLACHKO             	\N	                    	Paula Karina        	\N	DNI 	22411845	27	22411845	2	F	1972-03-23	\N	\N	1416	A	Lomas de Zamora	5	2015	12	2019	B	AR
1421	CABRAL              	\N	                    	Sandra Ines         	\N	DNI 	17103133	27	17103133	3	F	1964-05-11	\N	\N	1421	A	Bernal	5	2015	12	2019	B	AR
1411	MOREYRA             	\N	                    	Carlos Alberto      	\N	DNI 	28994061	20	28994061	9	M	1981-07-22	\N	\N	1411	A	Capital Federal	5	2015	9	2022	C	AR
1323	FERNANDEZ LAMELA    	\N	                    	Pablo Manuel        	\N	DNI 	25187694	20	25187694	1	M	1976-04-01	\N	\N	1323	P	Capital Federal	3	2015	11	2015	C	AR
1338	MAYER               	\N	                    	Roberto Osvaldo     	\N	DNI 	13436195	20	13436195	7	M	1959-03-17	\N	\N	1338	A	AVELLANEDA	4	2015	3	2022	B	AR
1350	CARDOZO SERGIO      	\N	                    	Oribe               	\N	DNI 	92290786	20	92290786	3	M	1952-08-17	\N	\N	1350	J	Montevideo	4	2015	5	2022	\N	UY
396	NEGRI               	VIUDEZ              	                    	Ciro Guillermo      	\N	DNI 	27479718	20	27479718	6	M	1979-07-07	\N	\N	396	A	Adrogué	3	2012	10	2018	B	AR
1462	MIRSKI              	\N	                    	Claudia Fanny       	\N	DNI 	13213749	27	13213749	3	F	1957-10-31	\N	\N	1462	A	Capital Federal	5	2015	12	2019	C	AR
1475	CONFORTI            	\N	                    	Silvina Isabel      	\N	DNI 	27536285	27	27536285	4	F	1979-08-06	\N	\N	1475	A	CAPITAL FEDERAL	6	2015	12	2019	C	AR
1440	LAGÜES OBREGON      	\N	                    	Oscar Felipe        	\N	DNI 	18866241	20	18866241	3	M	1980-11-22	\N	\N	1440	A	SANTIAGO DE CHILE	5	2015	12	2019	\N	CL
1434	CARDELLI            	\N	                    	Mariano             	\N	DNI 	24041451	20	24041451	2	M	1974-11-04	\N	\N	1434	A	LA PLATA	5	2015	12	2019	B	AR
1444	OCHOA               	\N	                    	Maria Paloma        	\N	DNI 	24957940	27	24957940	3	F	1976-02-23	\N	\N	1444	A	CAPITAL FEDERAL	5	2015	12	2019	C	AR
1447	ROSENZWEIG          	\N	                    	Sebastian Alejo     	\N	DNI 	25146359	20	25146359	0	M	1976-01-30	\N	\N	1447	A	CAPITAL FEDERAL	5	2015	12	2019	C	AR
1429	AGÜERO              	\N	                    	Alejandro           	\N	DNI 	31917008	20	31917008	2	M	1985-09-09	\N	\N	1429	A	Capital Federal	5	2015	12	2019	C	AR
1431	BENGLER             	\N	                    	Fernando            	\N	DNI 	33504982	23	33504982	9	M	1988-03-22	\N	\N	1431	A	CAPITAL FEDERAL	5	2015	12	2019	C	AR
1432	BIGOZZI             	\N	                    	Maria Fernanda      	\N	DNI 	30999958	23	30999958	4	F	1984-06-25	\N	\N	1432	A	CAPITAL FEDERAL	5	2015	12	2019	C	AR
1425	DE ANGELO           	\N	                    	Silvia Susana       	\N	DNI 	12403688	27	12403688	2	F	1958-02-07	\N	\N	1425	A	AVELLANEDA	5	2015	12	2019	B	AR
1454	DEVOTO              	\N	                    	Andres Martin       	\N	DNI 	20831999	20	20831999	0	M	1968-08-11	\N	\N	1454	A	LOMAS DE ZAMORA	5	2015	12	2019	B	AR
1426	HEFFES              	\N	                    	Omar Darío          	\N	DNI 	21668277	20	21668277	8	M	1970-06-04	\N	\N	1426	A	Capital Federal	5	2015	2	2020	C	AR
1457	LARA CORREA         	\N	                    	Edgardo Walter      	\N	DNI 	27592892	20	27592892	6	M	1979-06-19	\N	\N	1457	A	CAPITAL FEDERAL	5	2015	12	2019	C	AR
1485	CUBURU              	\N	                    	Maria Florencia     	\N	DNI 	30251395	27	30251395	9	F	1983-08-28	\N	\N	1485	P	ITUZAINGO	6	2015	2	2023	B	AR
1476	GALLO               	\N	                    	Leonardo Gabriel    	\N	DNI 	26234352	23	26234352	9	M	1977-11-22	\N	\N	1476	P	TORTUGUITAS	6	2015	2	2023	B	AR
1452	SZARANGOWICZ        	\N	                    	Gustavo Alejandro   	\N	DNI 	25096244	20	25096244	5	M	1975-12-20	\N	\N	1452	P	CAPITAL FEDERAL	5	2015	2	2023	C	AR
1449	SEGHEZZO            	\N	                    	Gabriela            	\N	DNI 	29316095	27	29316095	9	F	1982-01-17	\N	\N	1449	P	Capital Federal	5	2015	2	2023	C	AR
1448	SCHEINKMAN          	\N	                    	Lucia               	\N	DNI 	31660046	27	31660046	3	F	1985-05-19	\N	\N	1448	P	CAPITAL FEDERAL	5	2015	2	2023	C	AR
1446	RIERA               	\N	                    	Ramiro              	\N	DNI 	29503885	20	29503885	4	M	1982-05-15	\N	\N	1446	P	CAPITAL FEDERAL	5	2015	2	2023	C	AR
1443	MUÑOZ               	\N	                    	Sebastian Julio A   	\N	DNI 	21708496	20	21708496	3	M	1970-10-10	\N	\N	1443	P	SAN MARTIN	5	2015	2	2023	B	AR
1439	HERNANDEZ RODRIGUEZ 	\N	                    	Milena              	\N	DNI 	95416842	27	95416842	0	F	1986-11-26	\N	\N	1439	P	LA HABANA	5	2015	2	2023	\N	CU
1438	GUARDIA             	\N	                    	Lucas Ezequiel Mateo	\N	DNI 	28669893	20	28669893	0	M	1981-07-08	\N	\N	1438	P	TANDIL	5	2015	2	2023	B	AR
1433	BORGNIA             	\N	                    	Hector Federico     	\N	DNI 	27689156	20	27689156	2	M	1979-10-20	\N	\N	1433	P	BUENOS AIRES	5	2015	2	2023	B	AR
1430	MONTENEGRO          	\N	                    	Cintia Fernanda     	\N	DNI 	31151646	27	31151646	4	F	1985-01-01	\N	\N	1430	P	Puan	5	2015	2	2023	B	AR
1428	LOMBARDO            	\N	                    	Maria Fernanda      	\N	DNI 	30219600	27	30219600	7	F	1983-04-30	\N	\N	1428	P	CAPITAL FEDERAL	5	2015	2	2023	C	AR
1424	VALLES              	\N	                    	Sergio Esteban      	\N	DNI 	23873134	20	23873134	9	M	1973-12-20	\N	\N	1424	P	AVELLANEDA	5	2015	2	2023	B	AR
1423	COSSIO PEREZ        	\N	                    	Rodrigo             	\N	DNI 	94000150	20	94000150	2	M	1993-04-18	\N	\N	1423	P	Sao Jose	5	2015	2	2023	\N	BR
1415	LAINO SANCHIS       	\N	                    	Fabricio Andres     	\N	DNI 	32852502	20	32852502	0	M	1987-01-19	\N	\N	1415	P	Capital Federal	5	2015	2	2023	C	AR
1397	CORMICK             	\N	                    	Federico            	\N	DNI 	25361102	20	25361102	3	M	1976-06-19	\N	\N	1397	P	Capital Federal	5	2015	2	2023	B	AR
535	CEGARRA             	\N	                    	Marcelo Ignacio     	\N	DNI 	14952315	20	14952315	5	M	1962-04-02	\N	\N	535	A	Ciudad Autónoma de Buenos Aires	7	2012	2	2017	C	AR
703	MARTINEZ ALCANTARA  	\N	                    	Virginia            	\N	DNI 	20252653	27	20252653	0	F	1968-03-29	\N	\N	703	A	LA PLATA	3	2013	6	2022	B	AR
1463	MOTTA               	\N	                    	Gustavo Ruben       	\N	DNI 	13285547	20	13285547	2	M	1957-05-05	\N	\N	1463	P	Capital Federal	5	2015	10	2022	C	AR
1499	MENSI               	\N	                    	Maria del Carmen    	\N	DNI 	6542929	27	6542929	8	F	1950-10-16	\N	\N	1499	P	SAN MARTIN	6	2015	10	2022	B	AR
162	ALVAREZ             	PAZ                 	                    	Ramiro Alejandro    	\N	DNI 	24490553	20	24490553	7	M	1975-02-26	\N	\N	162	A	José C. Paz	8	2011	2	2017	B	AR
706	HERMIDA             	\N	                    	Carlos Nahuel       	\N	DNI 	32765683	20	32765683	0	M	1986-12-16	\N	\N	706	A	Lomas de Zamora	3	2013	2	2017	B	AR
917	CAPURRO             	\N	                    	Antonela            	\N	DNI 	33104900	27	33104900	5	F	1987-12-10	\N	\N	917	A	LOS TOLDOS	11	2013	10	2017	B	AR
1484	MERCADO             	\N	                    	Ana Belen           	\N	DNI 	34224309	27	34224309	1	F	1988-11-09	\N	\N	1484	A	CABA	6	2015	9	2017	C	AR
1390	POZZETTI            	\N	                    	Gerardo Javier      	\N	DNI 	20893151	20	20893151	3	M	1969-06-13	\N	\N	1390	A	Capital Federal	5	2015	9	2021	C	AR
1445	RAYES               	\N	                    	Milagros            	\N	DNI 	32528240	27	32528240	7	F	1987-03-22	\N	\N	1445	A	BAHIA BLANCA	5	2015	3	2022	B	AR
1464	COMOLI              	\N	                    	Gustavo Eduardo     	\N	DNI 	18163413	20	18163413	9	M	1966-11-30	\N	\N	1464	A	Capital Federal	5	2015	1	2022	C	AR
1467	GERONIMO            	\N	                    	Mauro Javier        	\N	DNI 	35270491	20	35270491	2	M	1990-07-20	\N	\N	1467	A	CAPITAL FEDERAL	6	2015	3	2022	C	AR
1382	ALVAREZ DO BOMFIM   	\N	                    	María Fernanda      	\N	DNI 	31010343	27	31010343	3	F	1984-06-09	\N	\N	1382	P	Capital Federal	5	2015	4	2022	C	AR
1435	CIFRE PUIG          	\N	                    	Agustin Tupac       	\N	DNI 	29417791	20	29417791	5	M	1982-09-05	\N	\N	1435	P	TRENQUE LAUQUEN	5	2015	4	2022	B	AR
1441	REBAGLIATI          	\N	                    	Lucas Esteban       	\N	DNI 	28951785	20	28951785	6	M	1981-07-04	\N	\N	1441	P	QUILMES	5	2015	4	2022	B	AR
1458	LARRAINZAR          	\N	                    	Patricia Amanda     	\N	DNI 	10762170	27	10762170	4	F	1953-07-01	\N	\N	1458	J	AVELLANEDA	5	2015	5	2022	B	AR
1505	IGLESIAS            	\N	                    	Tomas Bautista      	\N	DNI 	37053997	23	37053997	9	M	1993-07-07	\N	\N	1505	A	QUILMES	6	2015	12	2017	B	AR
1492	LOPEZ               	\N	                    	Federico Mario      	\N	DNI 	34566431	23	34566431	9	M	1988-11-30	\N	\N	1492	A	QUILMES	6	2015	4	2019	B	AR
1473	FEIJOO              	\N	                    	Maria Cecilia       	\N	DNI 	25144025	27	25144025	0	F	1976-04-13	\N	\N	1473	A	VICENTE LOPEZ	6	2015	12	2019	B	AR
1308	IBARRA              	\N	                    	Norma Alicia        	\N	DNI 	20214725	27	20214725	4	F	1968-03-19	\N	\N	1308	A	CAPITAL FEDERAL	3	2015	8	2021	C	AR
1436	CORMICK             	\N	                    	Diego Martin        	\N	DNI 	25838111	20	25838111	5	M	1977-02-03	\N	\N	1436	A	CAPITAL FEDERAL	5	2015	7	2021	C	AR
1472	MARINO              	\N	                    	German Matias       	\N	DNI 	31958528	20	31958528	2	M	1985-12-04	\N	\N	1472	A	MAR DEL PLATA	6	2015	12	2019	B	AR
1465	PODHAJCER           	\N	                    	Adil Paola          	\N	DNI 	18827196	27	18827196	6	F	1979-03-12	\N	\N	1465	A	Beersheva	5	2015	12	2019	\N	IL
1498	DAVIDOVICH          	\N	                    	Gisela Paola        	\N	DNI 	27860712	27	27860712	2	F	1979-12-29	\N	\N	1498	A	Capital Federal	6	2015	12	2019	C	AR
1483	DUQUELSKY GOMEZ     	\N	                    	Diego Javier        	\N	DNI 	20493147	20	20493147	0	M	1968-10-01	\N	\N	1483	A	CAPITAL FEDERAL	6	2015	12	2019	C	AR
1486	GONZALEZ OJEDA      	\N	                    	Fernando Andres     	\N	DNI 	26967344	20	26967344	4	M	1978-10-29	\N	\N	1486	A	Capital Federal	6	2015	12	2019	C	AR
1495	FREDES              	\N	                    	Silvana Alicia      	\N	DNI 	17906927	27	17906927	5	F	1966-02-16	\N	\N	1495	A	Capital Federal	6	2015	9	2020	C	AR
1479	MARICHELAR          	\N	                    	Alicia Pilar        	\N	DNI 	6718085	27	6718085	8	F	1951-06-26	\N	\N	1479	A	CAPITAL FEDERAL	6	2015	12	2019	C	AR
1469	MAZZINI             	\N	                    	Patricia Viviana    	\N	DNI 	16105543	27	16105543	9	F	1963-01-07	\N	\N	1469	A	CAPITAL FEDERAL	6	2015	12	2019	C	AR
1459	SALINI              	\N	                    	Melisa Edith        	\N	DNI 	34270286	23	34270286	4	F	1988-12-23	\N	\N	1459	A	Capital Federal	5	2015	12	2019	C	AR
1517	ELIZECHE            	\N	                    	Miguel Angel        	\N	DNI 	16402895	20	16402895	0	M	1963-07-26	\N	\N	1517	P	CAPITAL FEDERAL	7	2015	2	2023	C	AR
1514	MEDICI              	\N	                    	Mora                	\N	DNI 	33023538	27	33023538	7	F	1987-05-07	\N	\N	1514	P	CAPITAL FEDERAL	7	2015	2	2023	C	AR
1506	CUSTEAU             	\N	                    	Ana Carolina        	\N	DNI 	27582636	27	27582636	2	F	1979-09-04	\N	\N	1506	P	TEMPERLEY	6	2015	2	2023	B	AR
1503	MAGLIANO            	\N	                    	Alejandro Germán    	\N	DNI 	17492424	20	17492424	5	M	1964-09-27	\N	\N	1503	P	Capital Federal	6	2015	2	2023	C	AR
1500	MUSICCO             	\N	                    	Cecilia Laura       	\N	DNI 	27860516	27	27860516	2	F	1979-12-30	\N	\N	1500	P	CAPITAL FEDERAL	6	2015	2	2023	C	AR
1493	MERA ALBA           	\N	                    	Maria Carolina      	\N	DNI 	18353564	27	18353564	7	F	1967-08-16	\N	\N	1493	P	SALTA	6	2015	2	2023	A	AR
1491	DRUETTO             	\N	                    	Federico            	\N	DNI 	25488088	20	25488088	5	M	1976-08-09	\N	\N	1491	P	LANUS	6	2015	2	2023	B	AR
1490	FERNANDEZ           	\N	                    	Pedro Gustavo       	\N	DNI 	14817085	20	14817085	2	M	1962-02-16	\N	\N	1490	P	Capital Federal	6	2015	2	2023	C	AR
1489	MEISSINGER          	\N	                    	Sergio Luciano      	\N	DNI 	33798424	20	33798424	0	M	1987-11-27	\N	\N	1489	P	EL TALAR DE PACHECO	6	2015	2	2023	\N	AR
1488	ARAMAYO             	\N	                    	Gonzalo             	\N	DNI 	40112900	27	40112900	1	M	1997-02-09	\N	\N	1488	P	SALTA CAPITAL	6	2015	2	2023	A	AR
1482	MIRALLES DE IMPERIAL	PUJOL               	                    	Julia               	\N	DNI 	95073294	27	95073294	1	F	1988-09-18	\N	\N	1482	P	Barcelona	6	2015	2	2023	\N	ES
1480	IRIGOYEN            	\N	                    	Gladys Beatriz      	\N	DNI 	22638593	27	22638593	8	F	1972-05-04	\N	\N	1480	P	Lomas de Zamora	6	2015	2	2023	B	AR
1477	FERRERA             	\N	                    	Carlos Roberto      	\N	DNI 	17303707	20	17303707	5	M	1965-01-08	\N	\N	1477	P	Capital Federal	6	2015	2	2023	C	AR
1501	LOPEZ               	\N	                    	Claudia Gabriela    	\N	DNI 	17587410	27	17587410	6	F	1966-02-17	\N	\N	1501	A	LOMAS DE ZAMORA	6	2015	8	2023	B	AR
1511	CEBALLOS            	\N	                    	Pablo               	\N	DNI 	26095797	20	26095797	0	M	1977-07-09	\N	\N	1511	A	Buenos Aires	6	2015	6	2015	B	AR
1453	MENDOLA             	\N	                    	Guillermo Eduardo   	\N	DNI 	8447088	20	8447088	1	M	1950-09-01	\N	\N	1453	P	CAPITAL FEDERAL	5	2015	10	2022	C	AR
178	ZELARAYAN           	\N	                    	Carlos Alberto      	\N	DNI 	16932639	20	16932639	9	M	1964-07-21	\N	\N	178	A	San Miguel de Tucumán	8	2011	6	2022	T	AR
3	FOGLIAZZA           	\N	                    	Luis Ernesto        	\N	DNI 	7650167	20	7650167	0	M	1949-03-11	\N	\N	3	P	\N	2	2011	11	2015	\N	\N
2020	OVEJERO             	\N	                    	Debora Daniela      	\N	DNI 	31263067	27	31263067	8	F	1984-11-15	\N	\N	2020	A	BUENOS AIRES	6	2018	12	2021	B	AR
1014	GONZALEZ            	\N	                    	German Gabriel      	\N	DNI 	37561064	20	37561064	8	M	1993-05-08	\N	\N	1014	P	AVELLANEDA	2	2014	12	2021	B	AR
1203	MILLAN PEREZ        	\N	                    	Jose Roberto        	\N	DNI 	94929725	20	94929725	0	M	1985-07-07	\N	\N	1203	A	VENEZUELA	7	2014	2	2022	\N	VE
1497	CHOUZA VILLAFLOR    	\N	                    	Sergio Ariel        	\N	DNI 	33193560	20	33193560	4	M	1987-08-14	\N	\N	1497	A	Quilmes	6	2015	1	2022	B	AR
1481	BURGOS              	\N	                    	Mauricio Martin     	\N	DNI 	30449452	20	30449452	3	M	1983-08-22	\N	\N	1481	A	CAPITAL FEDERAL	6	2015	3	2022	C	AR
1516	PUCCIO              	\N	                    	Adolfo Emilio       	\N	DNI 	20728044	20	20728044	6	M	1969-02-05	\N	\N	1516	A	Capital Federal	7	2015	3	2022	C	AR
1451	SOTO MORENO         	\N	                    	Laura Juliana       	\N	DNI 	94517875	27	94517875	8	F	1988-01-25	\N	\N	1451	P	BOGOTA	5	2015	4	2022	\N	CO
1470	MAURI               	\N	                    	Marcelo Gabriel     	\N	DNI 	17726150	20	17726150	6	F	1966-04-15	\N	\N	1470	A	CAPITAL FEDERAL	6	2015	5	2022	C	AR
1538	BANCALA             	\N	                    	Laura Elena         	\N	DNI 	22717004	27	22717004	8	F	1972-08-19	\N	\N	1538	A	Buenos Aires	8	2015	2	2018	B	AR
1535	DIAZ                	\N	                    	Julian Ignacio      	\N	DNI 	36736219	20	36736219	8	M	1992-04-28	\N	\N	1535	A	AVELLANEDA	8	2015	7	2021	B	AR
130	TULIAN              	\N	                    	Aldana Yael         	\N	DNI 	29246467	27	29246467	9	F	1981-12-04	\N	\N	130	P	Capital Federal	7	2011	6	2017	C	AR
233	URQUIZA             	PERALTA             	                    	Angela Soledad      	\N	DNI 	32964592	23	32964592	4	F	1987-04-13	\N	\N	233	A	Avellaneda	10	2011	12	2016	B	AR
1542	YASENZA             	\N	                    	Conrado Adrian      	\N	DNI 	18244288	20	18244288	8	M	1967-08-19	\N	\N	1542	A	LANUS	8	2015	12	2019	B	AR
1527	IGLESIAS            	\N	                    	Silvana Beatriz     	\N	DNI 	14277837	27	14277837	3	F	1960-05-05	\N	\N	1527	A	QUILMES	7	2015	12	2019	B	AR
1543	SCHEINES            	\N	                    	Ramon Pablo         	\N	DNI 	31694471	20	31694471	0	M	1985-06-01	\N	\N	1543	A	CAPITAL FEDERAL	9	2015	12	2019	C	AR
1515	BOSISIO             	\N	                    	Alcides Daniel      	\N	DNI 	18474356	20	18474356	7	M	1967-12-29	\N	\N	1515	A	La Plata	7	2015	12	2019	B	AR
1672	VESPERTINO KOENIG   	\N	                    	Marcelo Christian   	\N	DNI 	18793276	23	18793276	9	M	1965-02-28	\N	\N	1672	A	SAN PABLO	12	2015	12	2019	\N	BR
1663	BEDIN               	\N	                    	Victoria            	\N	DNI 	30902078	27	30902078	8	F	1984-04-01	\N	\N	1663	A	TRENQUE LAUQUEN	11	2015	12	2019	B	AR
1546	SUAREZ              	\N	                    	Ignacio Fabian      	\N	DNI 	33522101	20	33522101	0	M	1988-03-22	\N	\N	1546	P	LOBOS	9	2015	2	2023	B	AR
1545	MOLOCZNIK           	\N	                    	Maximiliano Augusto 	\N	DNI 	22589257	20	22589257	2	M	1971-12-10	\N	\N	1545	P	CABA	9	2015	2	2023	C	AR
1539	RODRIGUEZ           	\N	                    	María Gisele        	\N	DNI 	34089405	27	34089405	2	F	1988-09-14	\N	\N	1539	P	Avellaneda	8	2015	2	2023	B	AR
1532	ODRIA               	\N	                    	Gustavo Angel       	\N	DNI 	20962297	20	20962297	2	M	1969-08-02	\N	\N	1532	P	LANUS	7	2015	2	2023	B	AR
1531	GUTIERREZ           	\N	                    	Lucia               	\N	DNI 	32187365	27	32187365	6	F	1986-03-17	\N	\N	1531	P	CAPITAL FEDERAL	7	2015	2	2023	C	AR
1529	BOISBEHERE          	\N	                    	Gabriela Gimena     	\N	DNI 	33024760	27	33024760	1	F	1987-03-26	\N	\N	1529	P	AVELLANEDA	7	2015	2	2023	B	AR
1528	RODRIGUEZ USE       	\N	                    	Jeronimo Jose       	\N	DNI 	31407699	20	31407699	1	M	1985-01-03	\N	\N	1528	P	CAPITAL FEDERAL	7	2015	2	2023	C	AR
1525	REISENMAN           	\N	                    	Brian Ivan          	\N	DNI 	35324516	20	35324516	4	M	1990-08-10	\N	\N	1525	P	CAPITAL FEDERAL	7	2015	2	2023	C	AR
1524	ALAMO URBINA        	\N	                    	Mayari Yuraima      	\N	DNI 	95413100	27	95413100	4	F	1972-04-19	\N	\N	1524	P	CARACAS	7	2015	2	2023	\N	VE
1521	LOPEZ               	\N	                    	Gimena Malen        	\N	DNI 	34630230	27	34630230	0	F	1989-06-27	\N	\N	1521	P	CAPITAL FEDERAL	7	2015	2	2023	C	AR
1518	SCIU                	\N	                    	Maria Paula         	\N	DNI 	24389820	27	24389820	5	F	1974-12-10	\N	\N	1518	P	AVELLANEDA	7	2015	2	2023	B	AR
1513	DE PIERO            	\N	                    	Lorena Beatriz      	\N	DNI 	32071712	23	32071712	4	F	1986-03-30	\N	\N	1513	P	CAPITAL FEDERAL	6	2015	2	2023	C	AR
1510	CASTILLO RIOS       	\N	                    	Maria Liliana       	\N	DNI 	26357737	27	26357737	5	F	1978-04-30	\N	\N	1510	P	Burzaco	6	2015	2	2023	B	AR
1509	HERNANDEZ           	\N	                    	Fabian Oscar        	\N	DNI 	17710214	20	17710214	9	M	1966-01-27	\N	\N	1509	P	Don Bosco	6	2015	2	2023	B	AR
1508	RODRIGUEZ           	\N	                    	Debora Analia       	\N	DNI 	28631803	27	28631803	2	F	1981-02-25	\N	\N	1508	P	TEMPERLEY	6	2015	2	2023	B	AR
1507	SOSA                	\N	                    	Maria Cecilia       	\N	DNI 	20493232	27	20493232	3	F	1968-10-09	\N	\N	1507	P	CAPITAL FEDERAL	6	2015	2	2023	C	AR
1494	FOLE                	\N	                    	Florencia Ayelen    	\N	DNI 	36825974	27	36825974	3	F	1993-12-17	\N	\N	1494	P	CIUDADELA	6	2015	2	2023	B	AR
775	MAROTIAS            	\N	                    	Ana Silvia          	\N	DNI 	22981568	27	22981568	2	F	1972-10-11	\N	\N	775	P	Capital Federal	5	2013	2	2023	C	AR
1148	AVOLA               	ESCALANTE           	GAUNA               	Patricia Alicia     	\N	DNI 	20206721	27	20206721	8	F	1968-03-09	\N	\N	1148	P	Ciudad Autónoma de Buenos Aires	5	2014	2	2023	C	AR
1109	MORALI              	\N	                    	Marcela Alejandra   	\N	DNI 	17103975	23	17103975	4	F	1964-09-27	\N	\N	1109	P	Avellaneda	4	2014	2	2023	B	AR
1004	ISERTE              	\N	                    	Francisco Javier    	\N	DNI 	33626922	23	33626922	9	M	1988-03-07	\N	\N	1004	P	CAPITAL FEDERAL	2	2014	5	2023	C	AR
1526	TORRES              	\N	                    	Noelia Ximena       	\N	DNI 	33898196	27	33898196	7	M	1988-08-24	\N	\N	1526	A	CAPITAL FEDERAL	7	2015	8	2023	C	AR
1560	IRUZUN              	\N	                    	Leda Mabel          	\N	DNI 	20048632	27	20048632	9	F	1968-02-05	\N	\N	1560	A	Carmen de Patagones	9	2015	9	2015	B	AR
1541	FONTAN              	\N	                    	Diego Daniel        	\N	DNI 	25418622	20	25418622	9	M	1976-09-30	\N	\N	1541	A	Lanús	8	2015	4	2017	B	AR
1573	TIRINATO            	\N	                    	Mariela Daniela     	\N	DNI 	31431845	27	31431845	0	F	1985-02-05	\N	\N	1573	A	FLORENCIO VARELA	9	2015	8	2018	B	AR
1578	SEGOVIA             	\N	                    	Sabrina Jazmin      	\N	DNI 	29796052	20	29796052	1	F	1982-09-15	\N	\N	1578	A	SAN VICENTE	9	2015	2	2016	B	AR
1594	LOPEZ MORALES       	\N	                    	Gimena Paola        	\N	DNI 	38305018	27	38305018	4	F	1994-05-22	\N	\N	1594	A	CAPITAL FEDERAL	9	2015	11	2018	C	AR
873	VILLAMAYOR          	\N	                    	Andrea Marina       	\N	DNI 	23078876	27	23078876	1	F	1973-02-15	\N	\N	873	A	MONTE GRANDE	9	2013	11	2021	B	AR
1567	LABAQUI             	\N	                    	Juan Fermin         	\N	DNI 	23786378	20	23786378	0	M	1974-04-05	\N	\N	1567	A	BRAGADO	9	2015	6	2022	B	AR
331	GUIDI               	TORRES              	DI LORENZO          	Graciela            	\N	LC  	3975833	23	3975833	4	F	1940-12-15	\N	\N	331	J	Ciudad Autónoma de Buenos Aires	2	2012	5	2022	C	AR
1537	LAPENDA             	\N	                    	Maria Eugenia       	\N	DNI 	20481128	27	20481128	3	F	1968-10-05	\N	\N	1537	J	AVELLANEDA	8	2015	5	2022	B	AR
1575	GONZALEZ            	\N	                    	Rodolfo Gustavo     	\N	DNI 	18469770	20	18469770	0	M	1967-12-10	\N	\N	1575	A	SALTA CAPITAL	9	2015	12	2019	A	AR
1586	MARTELLI            	\N	                    	Carla               	\N	DNI 	22533593	27	22533593	7	F	1972-01-13	\N	\N	1586	A	CAPITAL FEDERAL	9	2015	12	2019	C	AR
1559	MENDOZA             	\N	                    	Mariana             	\N	DNI 	22128220	27	22128220	0	F	1971-03-25	\N	\N	1559	A	CAPITAL FEDERAL	9	2015	12	2019	C	AR
1552	NEGRETE             	\N	                    	Evelina Patricia    	\N	DNI 	11863681	27	11863681	9	F	1958-01-15	\N	\N	1552	A	RIO GALLEGOS	9	2015	12	2019	Z	AR
1551	NIBORSKI            	\N	                    	Maite Lucila        	\N	DNI 	32069080	27	32069080	9	F	1985-12-18	\N	\N	1551	A	Capital Federal	9	2015	12	2019	C	AR
1558	MISSART HACLE       	\N	                    	Julieta             	\N	DNI 	33665141	27	33665141	2	F	1988-03-21	\N	\N	1558	A	Capital Federal	9	2015	7	2021	C	AR
1549	SCHOPPERLE          	\N	                    	Eduardo Silvio      	\N	DNI 	20568944	20	20568944	4	M	1968-12-18	\N	\N	1549	A	CABA	9	2015	12	2019	C	AR
1562	VALLEJOS            	\N	                    	Silvia Analia       	\N	DNI 	28750807	27	28750807	2	F	1981-02-20	\N	\N	1562	A	CAPITAL FEDERAL	9	2015	12	2019	C	AR
1553	BENAVENTE           	\N	                    	Maria Isabel        	\N	DNI 	13810480	27	13810480	5	F	1960-12-02	\N	\N	1553	A	RIO TURBIO	9	2015	12	2019	Z	AR
1580	POLOTNIANKA         	\N	                    	Claudia Elisa       	\N	DNI 	18004784	27	18004784	6	F	1967-02-14	\N	\N	1580	A	Avellaneda	9	2015	12	2019	B	AR
1556	CATALDO             	\N	                    	Sergio Marcelo      	\N	DNI 	22781778	20	22781778	0	M	1972-06-08	\N	\N	1556	A	Capital Federal	9	2015	12	2019	C	AR
1548	BARRERAS            	\N	                    	Luis Hector Amaranto	\N	DNI 	25206859	20	25206859	8	M	1976-04-02	\N	\N	1548	A	CARLSO CASARES	9	2015	12	2020	B	AR
1550	CHEMELLI            	\N	                    	Florencia           	\N	DNI 	31618172	23	31618172	4	F	1985-06-26	\N	\N	1550	A	LOMAS DE ZAMORA	9	2015	12	2020	B	AR
1544	LAGO                	\N	                    	Aurora Noemi        	\N	DNI 	11755894	27	11755894	6	F	1955-12-30	\N	\N	1544	A	CAPITAL FEDERAL	9	2015	12	2019	C	AR
1564	LEVY                	\N	                    	Elias Guillermo     	\N	DNI 	18781221	20	18781221	7	M	1967-11-10	\N	\N	1564	A	New York	9	2015	12	2019	\N	US
1600	PEARSON             	\N	                    	Luis Fernando       	\N	DNI 	21953288	20	21953288	2	M	1971-02-12	\N	\N	1600	A	CAPITAL FEDERAL	9	2015	10	2015	C	AR
1629	DIAZ                	\N	                    	Carla Marina        	\N	DNI 	27119226	27	27119226	1	F	1979-01-09	\N	\N	1629	P	Capital Federal	10	2015	2	2023	C	AR
1615	TALARICO            	\N	                    	Andrea Vanesa       	\N	DNI 	22134199	27	22134199	1	F	1971-06-02	\N	\N	1615	P	CAPITAL FEDERAL	10	2015	2	2023	C	AR
1609	ESPONDA             	\N	                    	Leslie Geraldine    	\N	DNI 	36066623	27	36066623	4	F	1992-03-24	\N	\N	1609	P	Bernal	10	2015	2	2023	B	AR
1606	LAVIGNE             	\N	                    	Carolina Laura      	\N	DNI 	18379863	23	18379863	4	F	1967-06-13	\N	\N	1606	P	Temperley	10	2015	2	2023	B	AR
1604	CASTILLO CABEZAS    	\N	                    	Javier Alejandro    	\N	DNI 	92449007	20	92449007	2	M	1974-06-03	\N	\N	1604	P	Santiago de Chile	9	2015	2	2023	\N	CL
1599	ROVERA              	\N	                    	Cintia Eliana       	\N	DNI 	32969255	27	32969255	3	F	1987-05-04	\N	\N	1599	P	AVELLANEDA	9	2015	2	2023	B	AR
1597	ARMECHINO           	\N	                    	Emmanuel Leonardo   	\N	DNI 	35122642	20	35122642	1	M	1989-12-31	\N	\N	1597	P	\N	9	2015	2	2023	\N	\N
1595	BORELLI             	\N	                    	Johanna Brigida     	\N	DNI 	36161543	27	36161543	9	F	1991-04-05	\N	\N	1595	P	CAPITAL FEDERAL	9	2015	2	2023	C	AR
1590	GOMEZ               	\N	                    	Gloria Ramona       	\N	DNI 	6272379	27	6272379	9	F	1950-01-09	\N	\N	1590	P	SAN MIGUEL DE TUCUMAN	9	2015	2	2023	T	AR
1576	RULLI               	\N	                    	Micaela             	\N	DNI 	31060916	27	31060916	7	F	1984-05-30	\N	\N	1576	P	CAPITAL FEDERAL	9	2015	2	2023	C	AR
1571	RESA                	\N	                    	Andres Ignacio      	\N	DNI 	22899516	23	22899516	9	M	1972-07-24	\N	\N	1571	P	PERGAMINO	9	2015	2	2023	B	AR
1569	NUÑEZ               	\N	                    	Eliana Yamila       	\N	DNI 	33401264	27	33401264	1	F	1987-11-09	\N	\N	1569	P	LANUS	9	2015	2	2023	B	AR
1566	LANNIA              	\N	                    	Beatriz Libertad    	\N	DNI 	16275690	27	16275690	2	F	1962-11-28	\N	\N	1566	P	AVELLANEDA	9	2015	2	2023	B	AR
1565	REY                 	\N	                    	Sebastian Alejandro 	\N	DNI 	28860019	20	28860019	9	M	1981-04-29	\N	\N	1565	P	CAPITAL FEDERAL	9	2015	2	2023	C	AR
1561	RULLI               	\N	                    	Tatiana             	\N	DNI 	32033505	27	32033505	7	F	1985-11-19	\N	\N	1561	P	CAPITAL FEDERAL	9	2015	2	2023	C	AR
1547	CAMARERO            	\N	                    	Maria Gladys        	\N	DNI 	30535815	27	30535815	6	F	1984-04-02	\N	\N	1547	P	Avellaneda	9	2015	2	2023	B	AR
1504	AHMAD               	\N	                    	Claudia Fernanda    	\N	DNI 	20987519	27	20987519	0	F	1969-06-11	\N	\N	1504	P	Capital Federal	6	2015	2	2023	C	AR
1584	GONZALEZ            	\N	                    	Claudia Mariana     	\N	DNI 	27505986	27	27505986	8	F	1979-06-05	\N	\N	1584	A	Ramos Mejia	9	2015	8	2023	B	AR
1568	LANDETCHEVERRY      	\N	                    	Herve Guido         	\N	DNI 	30132496	24	30132496	7	M	1983-01-31	\N	\N	1568	A	REMEDIOS DE ESCALADA	9	2015	8	2023	B	AR
1587	D'ANDREA            	\N	                    	Jose Norberto       	\N	LE  	4555702	20	4555702	3	M	1946-08-24	\N	\N	1587	P	CAPITAL FEDERAL	9	2015	12	2016	C	AR
1607	TOLEDO              	\N	                    	Leonel Raul         	\N	DNI 	24753330	20	24753330	4	M	1975-07-25	\N	\N	1607	A	Capital Federal	10	2015	12	2019	C	AR
1605	MONTANARO           	\N	                    	Andres              	\N	DNI 	28717565	20	28717565	6	M	1981-03-05	\N	\N	1605	A	LOMAS DE ZAMORA	10	2015	12	2019	B	AR
1634	OTERO               	\N	                    	Viviana Delia       	\N	DNI 	16967106	27	16967106	6	F	1964-05-20	\N	\N	1634	A	MORON	10	2015	12	2019	C	AR
1635	ROLDAN              	\N	                    	Graciana            	\N	DNI 	30919732	27	30919732	7	F	1984-07-24	\N	\N	1635	A	San Miguel de Tucuman	10	2015	12	2019	T	AR
1572	HIRALDE VEGA        	\N	                    	German Diego        	\N	DNI 	27495127	20	27495127	4	M	1979-07-05	\N	\N	1572	A	Moreno	9	2015	11	2021	B	AR
1555	IBARRA              	\N	                    	Mariela Judith      	\N	DNI 	20236790	27	20236790	4	F	1969-03-31	\N	\N	1555	A	Puerto Madryn	9	2015	2	2022	U	AR
1626	KREIMER             	\N	                    	Santiago            	\N	DNI 	18552997	20	18552997	6	M	1967-08-14	\N	\N	1626	A	CAPITAL FEDERAL	10	2015	12	2019	C	AR
1608	ARIAS               	\N	                    	Cecilia Alejandra N.	\N	DNI 	30282261	27	30282261	7	F	1983-05-09	\N	\N	1608	A	Florencio Varela	10	2015	7	2021	B	AR
1613	BERNABO             	\N	                    	Alicia Maria Cecilia	\N	DNI 	11450981	27	11450981	2	F	1954-11-03	\N	\N	1613	A	CABA	10	2015	7	2021	C	AR
1617	MARQUEZ             	\N	                    	Normando Gabriel    	\N	DNI 	18525867	20	18525867	0	M	1967-07-15	\N	\N	1617	A	CAPITAL FEDERAL	10	2015	12	2019	C	AR
1603	PLANA               	\N	                    	Monica Mabel        	\N	DNI 	17917594	27	17917594	6	F	1966-04-19	\N	\N	1603	A	Lomas de Zamora	9	2015	12	2019	B	AR
1620	MURIEL              	\N	                    	Fernando José       	\N	DNI 	28411546	20	28411546	6	M	1980-10-24	\N	\N	1620	A	CAPITAL FEDERAL	10	2015	12	2019	C	AR
1602	GAWRYLUK            	\N	                    	Camila              	\N	DNI 	37926316	27	37926316	5	F	1993-08-25	\N	\N	1602	A	QUILMES	9	2015	10	2020	B	AR
379	LOZANO              	RONALD              	                    	Federico            	\N	DNI 	29394830	20	29394830	6	M	1982-03-10	\N	\N	379	A	Ciudad Autónoma de Buenos Aires	2	2012	12	2015	C	AR
153	DE GREGORIO         	LAGO                	                    	Hugo Oscar          	\N	DNI 	37368119	23	37368119	9	M	1993-03-10	\N	\N	153	P	Lanús	7	2011	12	2015	B	AR
630	ARENAS              	BENITEZ             	                    	Lilia Nahir         	\N	DNI 	37249935	23	37249935	4	F	1993-03-29	\N	\N	630	P	BUENOS AIRES	12	2012	1	2016	B	AR
71	GONZALEZ            	\N	                    	Jose Luis           	\N	DNI 	17617720	23	17617720	9	M	1965-07-24	\N	\N	71	A	Moreno	6	2011	1	2017	B	AR
1588	DE LA VEGA          	\N	                    	Valeria Ines        	\N	DNI 	22156914	27	22156914	3	F	1971-04-09	\N	\N	1588	A	CAPITAL FEDERAL	9	2015	2	2017	C	AR
1570	DENTI               	\N	                    	Nicolas Javier      	\N	DNI 	31256823	20	31256823	4	M	1984-09-24	\N	\N	1570	A	AVELLANEDA	9	2015	4	2017	B	AR
1651	OTERO               	\N	                    	Elizabeth Ingrid    	\N	DNI 	18156145	27	18156145	4	F	1967-02-15	\N	\N	1651	A	CAPITAL FEDERAL	11	2015	6	2017	C	AR
1632	SANCHEZ             	\N	                    	Gustavo Alberto     	\N	DNI 	11960911	23	11960911	9	M	1958-04-10	\N	\N	1632	A	CAPITAL FEDERAL	10	2015	12	2016	C	AR
1689	MONTERUBBIANESI     	\N	                    	Osvaldo Jorge       	\N	DNI 	12034831	20	12034831	1	M	1958-08-25	\N	\N	1689	A	GRAL. SAN MARTIN	2	2016	2	2016	B	AR
1669	GARCIA LAVEZZARI    	\N	                    	Alejandra Andrea    	\N	DNI 	18257963	27	18257963	2	F	1967-07-01	\N	\N	1669	P	Capital Federal	11	2015	12	2022	C	AR
1686	ALMEIDA             	\N	                    	Griselda Elizabeth  	\N	DNI 	20986773	27	20986773	2	F	1969-10-27	\N	\N	1686	P	BUENOS AIRES	1	2016	2	2023	B	AR
1682	MACERA              	\N	                    	Rodolfo Manuel      	\N	DNI 	18238832	20	18238832	8	M	1967-11-08	\N	\N	1682	P	BUENOS AIRES	12	2015	2	2023	B	AR
1679	ARRIETA             	\N	                    	Raul Osvaldo        	\N	DNI 	21738139	20	21738139	9	M	1970-05-12	\N	\N	1679	P	Lanús	12	2015	2	2023	B	AR
1675	POGONZA             	\N	                    	Julián Patricio     	\N	DNI 	29865752	20	29865752	0	M	1982-09-28	\N	\N	1675	P	Capital Federal	12	2015	2	2023	C	AR
1646	BACHMANN            	\N	                    	Norma Elizabeth     	\N	DNI 	22486452	27	22486452	9	F	1972-01-26	\N	\N	1646	P	FORMOSA	10	2015	2	2023	P	AR
1644	TERRANOVA           	\N	                    	Francisco Javier    	\N	DNI 	31913351	20	31913351	9	M	1985-10-23	\N	\N	1644	P	MORON	10	2015	2	2023	B	AR
1643	MARANGONI           	\N	                    	Agustina Belen      	\N	DNI 	35271046	27	35271046	1	F	1990-07-16	\N	\N	1643	P	CAPITAL FEDERAL	10	2015	2	2023	C	AR
1636	HERSZENBAUN         	\N	                    	Miguel Alejandro    	\N	DNI 	30495309	20	30495309	9	M	1983-09-08	\N	\N	1636	P	CAPITAL FEDERAL	10	2015	2	2023	C	AR
1630	BORAO               	\N	                    	Guillermo Adrian    	\N	DNI 	16900588	20	16900588	6	M	1964-05-30	\N	\N	1630	P	CAPITAL FEDERAL	10	2015	2	2023	C	AR
1625	SCARAMUTTI          	\N	                    	Maria Isabel        	\N	DNI 	17569959	27	17569959	2	F	1965-10-14	\N	\N	1625	P	LA PLATA	10	2015	2	2023	B	AR
1624	COSOY               	\N	                    	Gabriel Adrian      	\N	DNI 	12753458	20	12753458	7	M	1958-12-20	\N	\N	1624	P	CAPITAL FEDERAL	10	2015	2	2023	C	AR
1622	RODRIGUEZ           	\N	                    	Carlos Raul         	\N	DNI 	5513834	20	5513834	7	M	1947-07-25	\N	\N	1622	P	CARHUE	10	2015	2	2023	B	AR
1621	PICCO PLENCOVICH    	\N	                    	Pablo Horacio       	\N	DNI 	28060334	20	28060334	2	M	1980-03-28	\N	\N	1621	P	PERGAMINO	10	2015	2	2023	B	AR
1619	SEGOVIA             	\N	                    	Javier Ricardo      	\N	DNI 	25487824	20	25487824	4	M	1976-11-20	\N	\N	1619	P	Adrogué	10	2015	2	2023	B	AR
1612	CORDOBA             	\N	                    	Claudia Silvina     	\N	DNI 	17964943	27	17964943	3	F	1967-03-11	\N	\N	1612	P	MORON	10	2015	2	2023	B	AR
1611	CEBALLOS            	\N	                    	Sergio Daniel       	\N	DNI 	21455643	20	21455643	0	M	1970-03-24	\N	\N	1611	P	AVELLANEDA	10	2015	2	2023	B	AR
1583	OZINO CALIGARIS     	\N	                    	Ricardo Alfredo     	\N	DNI 	4515257	20	4515257	0	M	1945-03-04	\N	\N	1583	P	Capital Federal	9	2015	2	2023	C	AR
691	FONTAU              	\N	                    	Mariano Nicolás     	\N	DNI 	37752712	20	37752712	8	M	1993-06-08	\N	\N	691	P	LANUS	3	2013	2	2023	B	AR
1202	FONTENLA            	\N	                    	Lucía               	\N	DNI 	30654986	27	30654986	9	F	1983-12-05	\N	\N	1202	P	CAPITAL FEDERAL	7	2014	2	2023	C	AR
2006	MOLINA              	\N	                    	Marisa Alejandra    	\N	DNI 	25182558	27	25182558	6	F	1976-02-16	\N	\N	2006	A	Capital Federal	6	2018	8	2023	C	AR
701	DROZD               	\N	                    	Andrea Alejandra    	\N	DNI 	25642954	27	25642954	9	F	1974-10-31	\N	\N	701	A	CAPITAL FEDERAL	3	2013	1	2016	C	AR
852	BERRETTA            	\N	                    	Silvia Alicia       	\N	DNI 	14106776	27	14106776	7	F	1961-03-02	\N	\N	852	A	WILDE	8	2013	2	2016	B	AR
1664	GORALI              	\N	                    	Marina              	\N	DNI 	20567637	27	20567637	1	F	1968-11-06	\N	\N	1664	A	CABA	11	2015	12	2019	C	AR
1641	KETTMAYER           	\N	                    	Sergio Marcos       	\N	DNI 	22589269	20	22589269	6	M	1972-01-29	\N	\N	1641	A	CAPITAL FEDERAL	10	2015	12	2019	C	AR
1674	VISMARA             	\N	                    	Juan Pablo          	\N	DNI 	29375921	23	29375921	9	M	1982-03-26	\N	\N	1674	A	Balcarce	12	2015	12	2019	B	AR
1678	ZULETA              	\N	                    	Martin Enrique      	\N	DNI 	31295354	20	31295354	5	M	1984-10-31	\N	\N	1678	A	Capital Federal	12	2015	12	2019	C	AR
1618	TORO                	\N	                    	Linda Azucena       	\N	DNI 	24588484	27	24588484	8	F	1975-04-30	\N	\N	1618	A	Capital Federal	10	2015	8	2022	C	AR
1616	ARDILES             	\N	                    	Lidia Rita          	\N	DNI 	17219412	27	17219412	0	F	1964-10-16	\N	\N	1616	A	Simoca	10	2015	9	2022	T	AR
1684	BOISBEHERE          	\N	                    	Liliana Marta       	\N	DNI 	22016626	27	22016626	6	F	1971-01-18	\N	\N	1684	A	AVELLANEDA	1	2016	10	2022	B	AR
1645	SECO                	\N	                    	Mirta Elena         	\N	DNI 	14264106	27	14264106	8	F	1960-11-30	\N	\N	1645	P	TUCUMAN	10	2015	10	2022	T	AR
1633	TERRILES            	\N	                    	Alejandro Anibal    	\N	DNI 	17754549	20	17754549	0	M	1966-04-20	\N	\N	1633	A	CAPITAL FEDERAL	10	2015	9	2021	C	AR
1650	MORFU               	\N	                    	Adrian Carlos       	\N	DNI 	23060010	20	23060010	5	M	1972-10-05	\N	\N	1650	P	LANUS ESTE	11	2015	11	2021	B	AR
1596	LAVOLPE             	\N	                    	Francisco           	\N	DNI 	13876541	20	13876541	6	M	1959-07-26	\N	\N	1596	A	Avellaneda	9	2015	2	2022	B	AR
798	VELAZQUEZ           	\N	                    	Maria del Carmen    	\N	DNI 	26282902	27	26282902	8	M	1978-03-02	\N	\N	798	A	CAPITAL FEDERAL	6	2013	12	2021	C	AR
1450	GARCIA              	\N	                    	Diego Hernan        	\N	DNI 	28493989	20	28493989	2	M	1981-02-01	\N	\N	1450	A	FLORENCIO VARELA	5	2015	3	2022	B	AR
1627	GALANTE             	\N	                    	Oscar Horacio       	\N	DNI 	8499821	20	8499821	5	M	1951-09-02	\N	\N	1627	J	Chivilcoy	10	2015	5	2022	B	AR
1640	HAMAWI              	\N	                    	Jacobo Rodolfo      	\N	DNI 	11632500	20	11632500	5	M	1954-10-09	\N	\N	1640	A	CAPITAL FEDERAL	10	2015	5	2022	C	AR
1648	GONZALES VELASQUEZ  	\N	                    	Juan Freddy         	\N	DNI 	92519763	20	92519763	8	M	1961-11-12	\N	\N	1648	A	CONCEPCION	10	2015	12	2019	\N	PE
1593	CASTELLANO          	\N	                    	Carlos Alberto      	\N	DNI 	11456163	20	11456163	1	M	1954-11-03	\N	\N	1593	A	CAPITAL FEDERAL	9	2015	7	2021	C	AR
1642	ROMERO MONTERO      	\N	                    	Giancarlo           	\N	DNI 	94330423	20	94330423	9	M	1971-11-18	\N	\N	1642	A	BOGOTA	10	2015	12	2019	\N	CO
1254	URETA               	\N	                    	Hector Raul         	\N	DNI 	25233070	20	25233070	5	M	1977-10-22	\N	\N	1254	A	NEUQUEN	9	2014	12	2019	Q	AR
1676	SGRAZUTTI           	\N	                    	Cecilia Mariana     	\N	DNI 	28079753	27	28079753	2	F	1980-04-10	\N	\N	1676	A	CAPITAL FEDERAL	12	2015	12	2019	C	AR
1677	MORALES             	\N	                    	Diego Ramón         	\N	DNI 	22887767	20	22887767	1	M	1972-07-29	\N	\N	1677	A	Buenos Aires	12	2015	12	2019	B	AR
1647	VARELA VIERA        	\N	                    	Lucas Santiago      	\N	DNI 	33978855	20	33978855	4	M	1989-04-10	\N	\N	1647	A	SAN MIGUEL DE TUCUMAN	10	2015	12	2019	T	AR
1670	FERNANDEZ           	\N	                    	Elsa Evelia         	\N	DNI 	18049221	27	18049221	1	F	1964-10-13	\N	\N	1670	A	AVELLANEDA	12	2015	12	2020	B	AR
1694	MASTROPIETRO        	\N	                    	Marcelo Daniel      	\N	DNI 	21594312	20	21594312	8	M	1970-06-05	\N	\N	1694	A	CAPITAL FEDERAL	3	2016	3	2016	C	AR
1130	PRIMANTE            	\N	                    	Victoria Soledad    	\N	DNI 	33362963	27	33362963	7	F	1987-10-31	\N	\N	1130	A	CAPITAL FEDERAL	4	2014	6	2016	C	AR
1706	FORTUNATO           	\N	                    	Damian Marcelo      	\N	DNI 	36395683	20	36395683	2	M	1991-08-21	\N	\N	1706	A	Quilmes	3	2016	8	2018	B	AR
16	PALLAROLA           	CASAS               	                    	Ruben Daniel        	\N	DNI 	18155235	20	18155235	3	M	1967-03-07	\N	\N	16	A	CAPITAL FEDERAL	3	2011	7	2017	C	AR
964	PODESTA             	\N	                    	María Florencia     	\N	DNI 	31782840	27	31782840	9	F	1985-08-07	\N	\N	964	A	AVELLANEDA	12	2013	3	2019	B	AR
1687	MASELLI             	\N	                    	Roxana              	\N	DNI 	16703914	27	16703914	1	F	1965-04-30	\N	\N	1687	A	Córdoba	2	2016	4	2019	X	AR
1719	ESTEBANEZ           	Lazcano             	                    	Micaela Carolina    	\N	DNI 	34138843	27	34138843	6	F	1988-12-15	\N	\N	1719	P	TRES ARROYOS	4	2016	2	2023	B	AR
1717	DI GIOIA            	\N	                    	Sergio Dario        	\N	DNI 	13213360	20	13213360	4	M	1957-12-31	\N	\N	1717	P	CABA	4	2016	2	2023	C	AR
1715	MONTEAGUDO          	\N	                    	Maria del Pilar     	\N	DNI 	36739020	23	36739020	4	F	1991-12-27	\N	\N	1715	P	Capital Federal	4	2016	2	2023	C	AR
1713	ACOSTA              	\N	                    	Eduardo Carlos      	\N	DNI 	22226136	20	22226136	9	M	1971-11-28	\N	\N	1713	P	BUENOS AIRES	4	2016	2	2023	B	AR
1711	CORREA              	\N	                    	Marcelo Adrian      	\N	DNI 	28950247	20	28950247	6	M	1981-07-07	\N	\N	1711	P	AVELLANEDA	4	2016	2	2023	B	AR
1707	GANDULFO            	\N	                    	Maria Zulema        	\N	DNI 	6221556	27	6221556	4	F	1949-12-01	\N	\N	1707	P	CAPITAL FEDERAL	3	2016	2	2023	C	AR
1704	FLORES KEMEC        	\N	                    	Gonzalo             	\N	DNI 	31812444	20	31812444	3	M	1985-09-26	\N	\N	1704	P	MENDOZA	3	2016	2	2023	M	AR
1697	ZARENCHANSKY        	\N	                    	Gladys Irene        	\N	DNI 	20965181	27	20965181	0	F	1969-11-01	\N	\N	1697	P	CAPITAL FEDERAL	3	2016	2	2023	\N	\N
1688	PEREZ IBAÑEZ        	\N	                    	Javier Ignacio      	\N	DNI 	34304885	20	34304885	9	M	1989-02-20	\N	\N	1688	P	CAPITAL FEDERAL	2	2016	2	2023	C	AR
1461	GIMENEZ             	\N	                    	Cecilia Alicia      	\N	DNI 	12535613	27	12535613	9	F	1956-05-03	\N	\N	1461	P	Capital Federal	5	2015	2	2023	C	AR
1311	POMI                	\N	                    	Ignacio             	\N	DNI 	27757248	20	27757248	7	M	1979-12-01	\N	\N	1311	P	Burzaco	3	2015	2	2023	B	AR
1708	NAJMIAS             	\N	                    	Carolina            	\N	DNI 	28639951	27	28639951	2	F	1980-12-14	\N	\N	1708	A	Capital Federal	3	2016	7	2023	C	AR
394	CALVELO             	CABO                	                    	Laura Ines          	\N	DNI 	20568782	27	20568782	9	F	1968-12-10	\N	\N	394	A	Capital Federal	3	2012	9	2023	C	AR
1692	HOUGASSIAN          	\N	                    	Eduardo             	\N	DNI 	11816203	20	11816203	0	M	1956-01-11	\N	\N	1692	A	CAPITAL FEDERAL	3	2016	2	2020	C	AR
1691	FRANCO              	\N	                    	Lucia               	\N	DNI 	34767496	27	34767496	1	F	1989-10-11	\N	\N	1691	A	CABA	3	2016	1	2022	C	AR
1681	CARAMELO DIAZ       	\N	                    	Gustavo Daniel      	\N	DNI 	16336350	20	16336350	0	M	1963-02-23	\N	\N	1681	A	C.A.B.A	12	2015	11	2021	B	AR
1698	NEUMAYER            	\N	                    	María Elena         	\N	DNI 	14310441	27	14310441	4	F	1960-04-18	\N	\N	1698	A	ARGENTINA	3	2016	1	2022	B	AR
1695	ALONSO              	\N	                    	Analia Veronica     	\N	DNI 	25071770	27	25071770	4	F	1976-02-28	\N	\N	1695	A	Avellaneda	3	2016	1	2022	B	AR
1729	FERRARO             	\N	                    	Marcelo Rubén       	\N	DNI 	20493778	20	20493778	9	M	1968-12-16	\N	\N	1729	A	Capital Federal	4	2016	1	2022	C	AR
1690	GOMBINSKY           	\N	                    	Daniel Pedro        	\N	DNI 	10096367	20	10096367	2	M	1951-08-05	\N	\N	1690	P	CABA	2	2016	10	2022	C	AR
1718	NORIEGA             	\N	                    	Julia Jazmin        	\N	DNI 	30940092	27	30940092	0	F	1984-08-03	\N	\N	1718	A	ALMIRANTE BROWN	4	2016	9	2022	B	AR
1699	ROMERO              	Romero              	                    	Sandra Jesica       	\N	DNI 	30720722	27	30720722	8	F	1983-10-26	\N	\N	1699	A	Mar del Plata	3	2016	1	2022	B	AR
1700	D´AMATO             	\N	                    	Juan Luis           	\N	DNI 	22667296	20	22667296	7	M	1972-05-22	\N	\N	1700	A	CABA	3	2016	1	2022	C	AR
916	GALLO               	\N	                    	Catalina Isabel     	\N	DNI 	14090652	27	14090652	8	F	1960-06-21	\N	\N	916	A	BERNAL	11	2013	3	2022	B	AR
1359	GARCIA              	\N	                    	Oscar Gregorio      	\N	DNI 	29842293	20	29842293	0	M	1982-11-25	\N	\N	1359	A	Capital Federal	4	2015	3	2022	C	AR
1724	IBARRA              	\N	                    	Rosa Elina          	\N	DNI 	20468205	23	20468205	4	F	1968-10-13	\N	\N	1724	A	CAPITAL FEDERAL	4	2016	8	2021	C	AR
1041	MONTERO NIEVA       	\N	                    	Laura Alicia        	\N	DNI 	35957616	27	35957616	7	F	1991-03-04	\N	\N	1041	A	BUENOS AIRES	3	2014	3	2020	B	AR
1710	KESTELBOIM MARCOS   	\N	                    	Mariano             	\N	DNI 	18788480	20	18788480	3	M	1977-09-23	\N	\N	1710	A	MEXICO DF	4	2016	3	2020	\N	MX
1702	CONTRERAS RAMIREZ   	\N	                    	Sandra Ines         	\N	DNI 	18855696	27	18855696	0	F	1969-11-16	\N	\N	1702	A	Santiago de Chile	3	2016	6	2020	\N	CL
446	ESCRIBANO           	SUÁREZ              	                    	Leonel Javier       	\N	DNI 	36821330	20	36821330	7	M	1992-12-05	\N	\N	446	A	Avellaneda	3	2012	10	2020	B	AR
511	ZALTSMAN            	SAIEG               	                    	Karina Gabriela     	\N	DNI 	32069368	27	32069368	9	F	1986-01-13	\N	\N	511	A	Ciudad Autónoma de Buenos Aires	6	2012	4	2016	C	AR
1737	RIOS                	\N	                    	Elías Daniel        	\N	DNI 	36065950	20	36065950	0	M	1991-04-29	\N	\N	1737	A	Quilmes	4	2016	4	2016	B	AR
1739	PINILLOS            	\N	                    	Diego Marcelo       	\N	DNI 	24434737	20	24434737	2	M	1975-03-30	\N	\N	1739	A	AVELLANEDA	4	2016	4	2016	B	AR
1750	SICLARI             	\N	                    	Fernando            	\N	DNI 	21587046	20	21587046	5	M	1970-04-09	\N	\N	1750	A	CAPITAL FEDERAL	5	2016	5	2016	C	AR
319	SOLARI              	TABOADA             	                    	Virginia Gisela     	\N	DNI 	28802317	23	28802317	4	F	1981-04-13	\N	\N	319	A	Ciudad Autónoma de Buenos Aires	2	2012	10	2017	C	AR
1759	LIEBER              	\N	                    	Herman Bernando     	\N	DNI 	16037031	23	16037031	9	M	1962-04-21	\N	\N	1759	A	Capital Federal	6	2016	6	2016	C	AR
1761	PICOTTI             	\N	                    	Claudio Victor      	\N	DNI 	14807652	23	14807652	9	M	1961-08-22	\N	\N	1761	A	CAPITAL FEDERAL	6	2016	6	2016	C	AR
1757	BENZA SOLARI        	\N	                    	Gabriela Marisa     	\N	DNI 	19026175	27	19026175	7	F	1975-01-09	\N	\N	1757	P	Lima	5	2016	2	2023	\N	PE
1754	ESPINOZA            	\N	                    	Cesar Jesus         	\N	DNI 	31046068	20	31046068	1	M	1984-08-25	\N	\N	1754	P	CABA	5	2016	2	2023	\N	\N
1753	SINGER              	\N	                    	Andrés Eduardo      	\N	DNI 	29846531	20	29846531	1	M	1982-11-11	\N	\N	1753	P	Buenos Aires	5	2016	2	2023	B	AR
1748	CORVALAN MOYA       	\N	                    	Carolina del Huerto 	\N	DNI 	26722868	27	26722868	5	F	1978-08-21	\N	\N	1748	P	Tucumán	4	2016	2	2023	T	AR
1747	GADO                	\N	                    	Patrick Anthony     	\N	DNI 	92542999	20	92542999	7	M	1973-04-19	\N	\N	1747	P	Florida	4	2016	2	2023	\N	US
1746	BUS                 	\N	                    	Juliana Antonela    	\N	DNI 	35497979	27	35497979	4	F	1991-08-03	\N	\N	1746	P	Avellaneda	4	2016	2	2023	B	AR
1743	ZAFFUTO             	\N	                    	German              	\N	DNI 	35947658	20	35947658	3	M	1991-02-25	\N	\N	1743	P	Quilmes	4	2016	2	2023	B	AR
1742	RODRIGUEZ           	\N	                    	Cintia Alejandra    	\N	DNI 	33457265	27	33457265	5	F	1987-11-15	\N	\N	1742	P	Capital Federal	4	2016	2	2023	C	AR
1741	CENTANNI            	\N	                    	Emiliano            	\N	DNI 	26967216	20	26967216	2	M	1978-10-23	\N	\N	1741	P	CAPITAL FEDERAL	4	2016	2	2023	C	AR
1736	CASTILLO CASANOVA   	\N	                    	Laura               	\N	DNI 	95432438	27	95432438	4	F	1974-02-10	\N	\N	1736	P	\N	4	2016	2	2023	\N	\N
1733	QUIROGA             	\N	                    	Omar Orlando        	\N	DNI 	17392448	20	17392448	9	M	1964-11-07	\N	\N	1733	P	Avellaneda	4	2016	2	2023	B	AR
1730	ROMERO              	\N	                    	Catalino Baltazar   	\N	DNI 	30016655	20	30016655	6	M	1983-01-06	\N	\N	1730	P	Buenos Aires	4	2016	2	2023	B	AR
1725	CHAVEZ              	\N	                    	Christian Omar      	\N	DNI 	25530168	20	25530168	4	M	1976-09-11	\N	\N	1725	P	CABA	4	2016	2	2023	C	AR
1414	MACCHI              	\N	                    	Virginia de los A.  	\N	DNI 	29846217	27	29846217	1	F	1982-10-26	\N	\N	1414	P	BUENOS AIRES	5	2015	2	2023	B	AR
825	SCIACCA             	\N	                    	Fernando            	\N	DNI 	21441009	20	21441009	6	M	1970-02-17	\N	\N	825	P	RAMOS MEJIA	7	2013	2	2023	B	AR
1693	DIZ VEGA            	\N	                    	Isabel Adela        	\N	DNI 	13741661	27	13741661	7	F	1960-04-19	\N	\N	1693	A	CAPITAL FEDERAL	3	2016	6	2023	C	AR
1721	DEMIRYI             	\N	                    	Federico            	\N	DNI 	33669467	20	33669467	2	M	1988-03-01	\N	\N	1721	A	C.A.B.A	4	2016	6	2023	C	AR
1712	DUBINSKY            	\N	                    	Manuel              	\N	DNI 	25100527	20	25100527	4	M	1975-12-15	\N	\N	1712	A	CAPITAL FEDERAL	4	2016	6	2023	C	AR
1720	CONSTANTINO         	\N	                    	Enzo Armando        	\N	DNI 	36054205	20	36054205	0	M	1991-04-14	\N	\N	1720	A	San Pedro	4	2016	9	2023	B	AR
1727	LALANNE             	\N	                    	Liliana Mercedes    	\N	DNI 	16677370	27	16677370	4	F	1963-11-25	\N	\N	1727	A	CAPITAL FEDERAL	4	2016	8	2023	C	AR
1703	BADALOVICH          	\N	                    	Claudio Fabian      	\N	DNI 	16397589	20	16397589	1	M	1963-04-28	\N	\N	1703	A	RAMOS MEJIA	3	2016	1	2022	B	AR
1744	LOVROVIC            	\N	                    	Alexis Iván         	\N	DNI 	26966335	23	26966335	9	M	1978-09-19	\N	\N	1744	A	C.A.B.A	4	2016	2	2022	C	AR
1728	ALSINA              	CANELLO             	                    	Silvia Natacha      	\N	DNI 	26315807	27	26315807	0	F	1977-10-22	\N	\N	1728	A	CAPITAL FEDERAL	4	2016	1	2022	C	AR
678	ESTEVEZ             	PEREZ               	                    	Leticia Mariela     	\N	DNI 	29523708	27	29523708	8	F	1982-06-08	\N	\N	678	A	LANUS	2	2013	2	2022	B	AR
1701	GARCIA              	IULIANO             	                    	Renato Andrés       	\N	DNI 	32700032	20	32700032	3	M	1986-12-18	\N	\N	1701	A	GRAL.BELGRANO	3	2016	2	2022	B	AR
1610	BEVEGNI             	\N	                    	Angel Pablo         	\N	DNI 	28196597	20	28196597	3	M	1980-04-14	\N	\N	1610	A	AVELLANEDA	10	2015	3	2022	B	AR
1680	VERA                	\N	                    	Aida Teresa         	\N	DNI 	16533148	27	16533148	1	F	1962-12-17	\N	\N	1680	A	AVELLANEDA	12	2015	9	2022	B	AR
1734	NERCESIAN           	\N	                    	Inés                	\N	DNI 	19000971	27	19000971	3	F	1980-05-25	\N	\N	1734	A	Estados Unidos	4	2016	8	2022	\N	US
1723	BORGOGNO            	Dietsch             	                    	Ezequiel Luis       	\N	DNI 	30531488	23	30531488	9	M	1983-11-18	\N	\N	1723	A	Buenos Aires	4	2016	3	2022	B	AR
1751	GIANSANTE           	\N	                    	Gerardo Raúl        	\N	DNI 	25788517	20	25788517	9	M	1977-02-08	\N	\N	1751	A	Capital Federal	5	2016	3	2022	C	AR
1752	PERTICA             	\N	                    	Marcelo Adrian      	\N	DNI 	26953740	20	26953740	0	M	1979-04-28	\N	\N	1752	A	LANUS	5	2016	3	2022	B	AR
1740	MATALONE            	\N	                    	Noelia Veronica     	\N	DNI 	32187216	27	32187216	1	F	1986-02-27	\N	\N	1740	A	C.A.B.A	4	2016	2	2020	C	AR
1771	MARIN               	\N	                    	Homero              	\N	DNI 	13285674	20	13285674	6	M	1957-05-23	\N	\N	1771	A	CAPITAL FEDERAL	8	2016	8	2016	C	AR
1774	WALDMAN             	\N	                    	Ezequiel            	\N	DNI 	29945507	20	29945507	7	M	1982-12-19	\N	\N	1774	A	AVELLANEDA	8	2016	8	2016	\N	\N
737	BELLISSIMO          	\N	                    	Mauro Ezequiel      	\N	DNI 	35864285	20	35864285	4	M	1991-09-10	\N	\N	737	A	LANUS OESTE	4	2013	3	2017	B	AR
1523	HEIS                	\N	                    	Olga Susana         	\N	DNI 	18387552	27	18387552	9	F	1967-10-30	\N	\N	1523	A	Avellaneda	7	2015	11	2017	B	AR
1762	DAVALOS             	\N	                    	Natalia Elizabeth   	\N	DNI 	31651047	27	31651047	2	F	1985-06-02	\N	\N	1762	A	La Boca	6	2016	8	2018	C	AR
94	MURUA               	RUBIALES            	                    	Carina Paola        	\N	DNI 	28379752	27	28379752	5	F	1980-10-10	\N	\N	94	A	Adrogué	7	2011	8	2018	B	AR
1788	ORTEGA              	\N	                    	Roberto Javier      	\N	DNI 	21909450	20	21909450	8	M	1971-03-22	\N	\N	1788	A	Mar del Plata	8	2016	8	2016	B	AR
1789	MINGUILLON          	\N	                    	Roberto Fernando    	\N	DNI 	28365261	20	28365261	1	M	1980-08-07	\N	\N	1789	A	Quilmes	8	2016	8	2016	B	AR
1808	OSTUNI              	\N	                    	Fernando Martin     	\N	DNI 	26967191	20	26967191	3	M	1978-05-08	\N	\N	1808	A	Capital Federal	9	2016	9	2016	C	AR
1799	NEGRI               	\N	                    	Gabriel Oscar       	\N	DNI 	17291133	20	17291133	2	M	1965-05-07	\N	\N	1799	A	\N	9	2016	9	2016	\N	\N
1829	GOROSITO            	\N	                    	Pablo Germán        	\N	DNI 	38369260	20	38369260	2	M	1994-11-09	\N	\N	1829	A	Avellaneda	12	2016	5	2018	B	AR
266	BEER                	\N	                    	David               	\N	DNI 	13211110	20	13211110	4	M	1959-02-11	\N	\N	266	A	Ciudad Autónoma de Buenos Aires	12	2011	7	2021	C	AR
1790	CASAL               	\N	                    	Paula Soledad       	\N	DNI 	26653666	27	26653666	1	F	1978-09-12	\N	\N	1790	A	Capital Federal	8	2016	7	2021	C	AR
1773	SFEIR               	\N	                    	María Alejandra     	\N	DNI 	33154245	27	33154245	3	F	1987-08-05	\N	\N	1772	A	Capital Federal	8	2016	11	2021	C	AR
1755	GIROUSSENS          	\N	                    	Mariana             	\N	DNI 	17212933	27	17212933	7	F	1965-02-12	\N	\N	1755	A	CAPITAL FEDERAL	5	2016	1	2022	C	AR
1793	FRASCHINA           	\N	                    	Juan Santiago       	\N	DNI 	25563455	20	25563455	1	M	1977-01-14	\N	\N	1793	A	Ciudadela	9	2016	2	2022	B	AR
1804	PEREZ ROIG          	\N	                    	Diego               	\N	DNI 	92594780	20	92594780	7	M	1983-11-11	\N	\N	1804	P	Montevideo	9	2016	2	2023	\N	UY
1795	ZUBIRI              	\N	                    	Nicolas             	\N	DNI 	27138680	20	27138680	0	M	1979-03-27	\N	\N	1795	P	HUGHES	9	2016	2	2023	S	AR
1791	POLVERINO           	\N	                    	Daniela             	\N	DNI 	24127993	27	24127993	1	F	1974-10-23	\N	\N	1791	P	CAPITAL FEDERAL	8	2016	2	2023	C	AR
1787	FREDDO              	\N	                    	Nestor Dario        	\N	DNI 	14694553	20	14694553	9	M	1961-10-18	\N	\N	1787	P	Buenos Aires	8	2016	2	2023	B	AR
1786	FUENTES             	\N	                    	Wilson Cesar        	\N	DNI 	27930247	20	27930247	9	M	1980-04-24	\N	\N	1786	P	Capital Federal	8	2016	2	2023	C	AR
1784	PICASSO ACHAVAL     	\N	                    	Clara María         	\N	DNI 	25641467	27	25641467	3	F	1977-01-01	\N	\N	1784	P	\N	8	2016	2	2023	\N	\N
1780	RAYES               	\N	                    	Agustina            	\N	DNI 	30229883	27	30229883	7	F	1983-06-30	\N	\N	1780	P	Bahía Blanca	8	2016	2	2023	B	AR
1779	MANGALO             	\N	                    	Matias Ariel        	\N	DNI 	36065996	20	36065996	9	M	1991-05-14	\N	\N	1779	P	Quilmes	8	2016	2	2023	B	AR
1778	MURACA              	\N	                    	Matias              	\N	DNI 	24546220	20	24546220	5	M	1975-08-23	\N	\N	1778	P	LA PLATA	8	2016	2	2023	B	AR
1765	FARINA              	\N	                    	Federico Luis       	\N	DNI 	33106268	20	33106268	6	M	1987-03-10	\N	\N	1765	P	Florencio Varela	6	2016	2	2023	B	AR
1763	LOGIOVINE           	\N	                    	Sabrina Emilce      	\N	DNI 	30073499	27	30073499	0	F	1983-03-07	\N	\N	1763	P	CAPITAL FEDERAL	6	2016	2	2023	C	AR
1325	DE LUCA             	\N	                    	María Sol           	\N	DNI 	39095564	27	39095564	8	F	1995-10-05	\N	\N	1325	P	Remedios de Escalada	4	2015	2	2023	B	AR
1731	GARCIA TIBOCHA      	\N	                    	Danna Valentyna     	\N	DNI 	19031509	27	19031509	1	F	1976-12-21	\N	\N	1731	A	Colombia	4	2016	8	2023	\N	CO
1785	SIERRA              	\N	                    	María Fernanda      	\N	DNI 	25129051	27	25129051	8	F	1976-02-08	\N	\N	1785	A	Capital Federal	8	2016	3	2023	C	AR
1732	CRUDO               	\N	                    	Domingo Antonio     	\N	DNI 	11304452	20	11304452	8	M	1954-09-01	\N	\N	1732	J	Capital Federal	4	2016	6	2023	C	AR
1738	CANDIS              	\N	                    	Jorge Daniel        	\N	DNI 	11492181	20	11492181	6	M	1954-08-02	\N	\N	1738	J	NEUQUEN	4	2016	8	2023	Q	AR
1770	RETA                	\N	                    	Eduardo Rene        	\N	DNI 	16376272	20	16376272	3	M	1963-10-29	\N	\N	1770	A	MENDOZA	8	2016	1	2022	M	AR
1792	DE GIANO            	\N	                    	Daniel Esteban      	\N	DNI 	32243043	20	32243043	5	M	1986-04-07	\N	\N	1792	A	Capital Federal	8	2016	1	2022	C	AR
1820	IÑIGUEZ             	\N	                    	Alfredo Alberto     	\N	DNI 	18135746	20	18135746	1	M	1967-01-06	\N	\N	1820	A	LA PLATA	10	2016	1	2022	B	AR
1796	PAGOTTO             	\N	                    	Maria Alejandra     	\N	DNI 	28434666	27	28434666	7	F	1980-09-20	\N	\N	1796	A	Quilmes	9	2016	1	2022	B	AR
1797	ENDELLI             	\N	                    	Jorge Rodolfo       	\N	DNI 	18204787	20	18204787	3	M	1967-03-16	\N	\N	1797	A	CAPITAL FEDERAL	9	2016	1	2022	\N	\N
1803	CRIVELLI            	\N	                    	Marcelo Alberto     	\N	DNI 	14515557	20	14515557	7	M	1961-12-06	\N	\N	1803	A	CAPITAL FEDERAL	9	2016	9	2022	C	AR
1766	SUAREZ PORTO DE M   	\N	                    	Agueda Cecilia      	\N	DNI 	11314922	27	11314922	7	F	1954-09-30	\N	\N	1766	P	Bahía Blanca	6	2016	10	2022	B	AR
1781	LONGONI             	\N	                    	Lucas Emilio        	\N	DNI 	22395988	20	22395988	2	M	1972-02-01	\N	\N	1781	A	Moron	8	2016	5	2022	B	AR
1767	ACCATTOLI ROMAN     	\N	                    	Mauro               	\N	DNI 	38606853	20	38606853	5	M	1995-03-22	\N	\N	1767	A	Mar del Plata	7	2016	6	2022	B	AR
1814	PEREZ CANDREVA      	\N	                    	Leonardo Francisco  	\N	DNI 	23788621	20	23788621	7	M	1974-08-19	\N	\N	1814	A	LA PLATA	10	2016	10	2016	B	AR
1802	ESTEVEZ             	\N	                    	Eduardo Ramon       	\N	DNI 	16453698	20	16453698	0	M	1962-09-01	\N	\N	1802	A	CAPITAL FEDERAL	9	2016	10	2016	C	AR
1825	BOCACCIA            	\N	                    	Pablo Ernesto       	\N	DNI 	17588765	20	17588765	3	M	1966-02-17	\N	\N	1825	A	LOMAS DE ZAMORA	11	2016	11	2016	B	AR
1827	KUNIK               	\N	                    	Dario               	\N	DNI 	22822530	20	22822530	5	M	1972-05-17	\N	\N	1827	A	Argentina	12	2016	12	2016	B	AR
1830	FORMOSO             	\N	                    	Horacio Ariel       	\N	DNI 	32261957	20	32261957	0	M	1986-04-22	\N	\N	1830	A	Avellaneda	12	2016	6	2017	B	AR
172	AGUILERA            	PEREYRA             	                    	Diego Dario         	\N	DNI 	21887073	20	21887073	3	M	1970-11-02	\N	\N	172	A	Capital Federal	8	2011	1	2017	C	AR
805	ALBARENGA           	\N	                    	Esteban Fabian      	\N	DNI 	34964238	20	34964238	8	M	1989-08-02	\N	\N	805	A	FLORENCIO VARELA	6	2013	1	2017	B	AR
1214	GUEVARA             	\N	VARGAS              	Raul Alfredo        	\N	DNI 	11643626	20	11643626	5	M	1954-11-24	\N	\N	1214	A	Ciudad Autónoma de Buenos Aires	7	2014	5	2019	C	AR
1460	LARSEN              	\N	                    	Matias Jose         	\N	DNI 	28768177	20	28768177	2	M	1981-03-20	\N	\N	1460	A	La Plata	5	2015	12	2019	B	AR
1349	NUÑEZ               	\N	                    	Enrique Javier      	\N	DNI 	16599562	20	16599562	8	M	1963-11-24	\N	\N	1349	A	CIUDADELA	4	2015	12	2019	B	AR
148	BETTANIN            	LUCHETTI            	                    	Cristina Ines       	\N	DNI 	25727666	27	25727666	5	F	1977-01-16	\N	\N	148	A	Rosario	7	2011	1	2017	S	AR
1782	ALVAREZ             	\N	                    	Alejandro Julian    	\N	DNI 	28963217	20	28963217	5	M	1981-08-05	\N	\N	1782	A	Lomas de Zamora	8	2016	2	2020	B	AR
1806	BOLSTER             	\N	                    	Eduardo Arturo      	\N	DNI 	20410145	20	20410145	1	M	1968-08-06	\N	\N	1806	A	CAPITAL FEDERAL	9	2016	7	2021	C	AR
1777	VAZQUEZ             	\N	                    	Jorge Alberto       	\N	DNI 	12350001	20	12350001	7	M	1955-12-30	\N	\N	1777	A	AVELLANEDA	8	2016	9	2021	B	AR
1810	WILK                	\N	                    	Pablo Ezequiel      	\N	DNI 	26927554	20	26927554	6	M	1978-11-29	\N	\N	1810	A	Quilmes	9	2016	9	2021	B	AR
1815	BOSCO SOTO          	\N	                    	Sofía               	\N	DNI 	32766274	27	32766274	6	F	1987-01-05	\N	\N	1815	A	Morón	10	2016	1	2022	B	AR
262	AGUILERA            	LARA                	MATOS               	Maria Yarela        	\N	DNI 	28285191	27	28285191	7	F	1980-11-14	\N	\N	262	P	Morón	11	2011	2	2023	B	AR
318	ARGALAS             	\N	LIGRESTI            	Maria Florencia     	\N	DNI 	30027875	27	30027875	8	F	1983-02-08	\N	\N	318	P	Quilmes	2	2012	2	2023	B	AR
1826	TREACY              	\N	                    	Guillermo Fabio     	\N	DNI 	18141982	20	18141982	3	M	1966-06-13	\N	\N	1826	P	Capital Federal	11	2016	2	2023	C	AR
1823	ENCINAS ESQUIVEL    	\N	                    	Verónica Andrea     	\N	DNI 	28445990	23	28445990	3	F	1981-07-14	\N	\N	1823	P	General San Martin	10	2016	2	2023	B	AR
1821	REGHENZANI          	\N	                    	Maria Elisa         	\N	DNI 	20497958	20	20497958	9	F	1968-11-24	\N	\N	1821	P	Lomas de Zamora	10	2016	2	2023	B	AR
1819	GRUMBERG            	\N	                    	Carolina            	\N	DNI 	25795757	27	25795757	3	F	1977-03-08	\N	\N	1819	P	Capital Federal	10	2016	2	2023	C	AR
1812	ZAFFARONI           	\N	                    	Eugenio Raul        	\N	DNI 	4299533	23	4299533	9	M	1940-01-07	\N	\N	1812	P	Capital Federal	10	2016	2	2023	C	AR
1809	HERRERA             	\N	                    	Cecilia Griselda    	\N	DNI 	25912829	27	25912829	9	F	1977-03-22	\N	\N	1809	P	San Justo	9	2016	2	2023	B	AR
1801	SUAREZ              	\N	                    	Pablo Matias Nahuel 	\N	DNI 	28189285	20	28189285	2	M	1980-04-29	\N	\N	1801	P	Martinez	9	2016	2	2023	B	AR
1745	ABRAM LUJAN         	\N	                    	Jose Maria          	\N	DNI 	17786903	20	17786903	2	M	1965-10-25	\N	\N	1745	P	Capital Federal	4	2016	2	2023	C	AR
500	FERNANDEZ           	\N	                    	Diego Martin        	\N	DNI 	22922136	20	22922136	2	M	1972-12-15	\N	\N	500	P	Provincia de Buenos Aires	6	2012	2	2023	B	AR
634	CHINCHILLA          	LAMAS               	                    	Leonardo Aristoteles	\N	DNI 	23637166	20	23637166	3	M	1973-12-14	\N	\N	634	P	JUJUY	12	2012	2	2023	Y	AR
697	BLANCO              	\N	                    	Maria Fernanda      	\N	DNI 	28573251	23	28573251	4	F	1980-04-14	\N	\N	697	P	AVELLANEDA	3	2013	2	2023	\N	AR
823	ANTENUCCI           	\N	                    	Nestor              	\N	DNI 	21545809	20	21545809	2	M	1969-11-08	\N	\N	823	P	ROSARIO	7	2013	2	2023	S	AR
1182	RODRIGUEZ MARTINEZ  	\N	                    	Analia              	\N	DNI 	29115483	27	29115483	8	F	1982-01-06	\N	\N	1182	P	CAPITAL FEDERAL	6	2014	2	2023	C	AR
1772	FALCON              	\N	                    	Juan Pablo          	\N	DNI 	27099490	20	27099490	4	M	1979-01-13	\N	\N	1772	A	LA PLATA	8	2016	3	2023	B	AR
1040	CARAMUTO            	\N	                    	Sebastian Raul      	\N	DNI 	28399687	20	28399687	6	M	1980-11-09	\N	\N	1040	P	SAN LORENZO	3	2014	5	2023	S	AR
1794	DIZ                 	\N	                    	Maria Luisa         	\N	DNI 	29051271	27	29051271	4	F	1981-10-04	\N	\N	1794	A	CAPITAL FEDERAL	9	2016	8	2023	C	AR
1816	PETRINA             	\N	                    	Alberto Andres      	\N	DNI 	4516139	20	4516139	1	M	1945-02-22	\N	\N	1816	J	CAPITAL FEDERAL	10	2016	8	2023	C	AR
1244	ALCARAZ             	\N	                    	Maria del Carmen    	\N	DNI 	14434471	27	14434471	0	F	1961-08-19	\N	\N	1244	A	LOMAS DE ZAMORA	9	2014	12	2021	B	AR
1818	ANDRADE             	\N	                    	Marcelo Anibal      	\N	DNI 	17486219	20	17486219	3	M	1965-06-06	\N	\N	1818	A	La Plata	10	2016	1	2022	B	AR
1805	SHIBUYA             	\N	                    	Manuel Takashi      	\N	DNI 	34519451	20	34519451	8	M	1989-04-22	\N	\N	1805	A	CAPITAL FEDERAL	9	2016	1	2022	C	AR
1822	ROS                 	\N	                    	Aldana Florencia    	\N	DNI 	35350915	27	35350915	8	F	1990-08-15	\N	\N	1822	A	Remedios de Escalada	10	2016	1	2022	B	AR
1768	PACHO               	\N	                    	Ignacio Hernán      	\N	DNI 	23672501	20	23672501	5	M	1974-02-07	\N	\N	1768	A	Capital Federal	7	2016	2	2022	C	AR
896	AMIUNE              	\N	                    	Jose Miguel Jorge   	\N	DNI 	6043129	23	6043129	9	M	1941-08-31	\N	\N	896	P	Santa Fe	10	2013	10	2022	S	AR
1807	CABRERA             	\N	                    	Analia              	\N	DNI 	24805916	27	24805916	3	F	1975-11-04	\N	\N	1807	A	Capital Federal	9	2016	5	2022	C	AR
1813	LITVACK             	\N	                    	Nicolás             	\N	DNI 	25919680	23	25919680	9	M	1977-07-23	\N	\N	1813	A	Córdoba	10	2016	3	2020	X	AR
46	CABRERA             	\N	                    	Maria Claudia       	\N	DNI 	20271196	27	20271196	6	F	1968-04-28	\N	\N	46	A	Capital Federal	6	2011	1	2017	C	AR
150	URDIROZ DIP         	DIP                 	                    	Maria Jose          	\N	DNI 	35142709	23	35142709	4	F	1990-01-23	\N	\N	150	A	Capital Federal	7	2011	1	2017	C	AR
781	SWISTUN             	\N	                    	Debora Alejandra    	\N	DNI 	26072589	27	26072589	6	F	1977-11-09	\N	\N	781	A	AVELLANEDA	5	2013	1	2017	B	AR
575	MONTI               	\N	SBACO               	Roxana Analia       	\N	DNI 	18650011	27	18650011	9	F	1967-03-23	\N	\N	575	A	Lomas de Zamora	9	2012	1	2017	B	AR
181	AMICA               	AREOSA              	                    	Guillermo Sebastian 	\N	DNI 	23416098	20	23416098	3	M	1973-05-22	\N	\N	181	A	Capital Federal	8	2011	2	2017	C	AR
398	ARQUEROS MEJICA     	\N	                    	Maria Soledad       	\N	DNI 	28509745	27	28509745	8	F	1981-08-23	\N	\N	398	A	Ushuaia	3	2012	3	2018	V	AR
1848	LOPEZ               	\N	                    	Lorena Leticia      	\N	DNI 	28467454	27	28467454	0	F	1980-11-25	\N	\N	1848	A	Lomas de Zamora	3	2017	8	2018	B	AR
1840	PINTO               	\N	                    	Myriam Marcela      	\N	DNI 	16765855	27	16765855	0	F	1964-04-10	\N	\N	1840	A	CAPITAL FEDERAL	3	2017	3	2017	C	AR
1833	SOLIS               	\N	                    	Marina Laura        	\N	DNI 	27815089	27	27815089	0	F	1980-04-19	\N	\N	1833	A	ENSENADA	2	2017	3	2017	B	AR
1836	LAISSUE             	\N	                    	Marta Susana        	\N	DNI 	12299531	27	12299531	9	F	1955-08-05	\N	\N	1836	A	SAN MARTIN	3	2017	3	2017	B	AR
1841	PAPAGNO             	\N	                    	Augusto Luis        	\N	DNI 	23471583	20	23471583	7	M	1973-10-10	\N	\N	1841	A	CAPITAL FEDERAL	3	2017	3	2017	C	AR
1838	MARINO              	\N	                    	Pablo Ignacio       	\N	DNI 	17993030	20	17993030	8	M	1966-07-10	\N	\N	1838	A	BERISSO	3	2017	3	2017	B	AR
1554	BALIERO             	\N	                    	Maria De Los Angeles	\N	DNI 	10463654	27	10463654	9	F	1952-11-30	\N	\N	1554	A	Capital Federal	9	2015	12	2019	C	AR
1638	CACERES             	\N	                    	Silvia Noemi        	\N	DNI 	22922561	27	22922561	3	F	1973-07-08	\N	\N	1638	A	Lanus Oeste	10	2015	12	2019	B	AR
1839	LARDIES             	\N	                    	Juan Jose           	\N	DNI 	17572802	20	17572802	4	M	1965-12-04	\N	\N	1839	A	CAPITAL FEDERAL	3	2017	3	2017	C	AR
1846	IGUERATEGUI         	\N	                    	Fernando Alfredo    	\N	DNI 	21623925	20	21623925	4	M	1970-07-28	\N	\N	1846	A	Tapalqué	3	2017	2	2020	B	AR
1863	MELGAREJO           	\N	                    	Pablo Alberto       	\N	DNI 	28909456	20	28909456	4	M	1981-06-19	\N	\N	1863	A	CAPITAL FEDERAL	4	2017	3	2020	C	AR
1837	CESAR               	\N	                    	Carlos Horacio      	\N	DNI 	23642029	23	23642029	9	M	1973-10-02	\N	\N	1837	A	SAN MARTIN	3	2017	3	2020	B	AR
603	MORENO              	CAPONE              	                    	Martin Roque        	\N	DNI 	25646386	20	25646386	6	M	1977-04-09	\N	\N	603	A	Ciudad Autónoma de Buenos Aires	10	2012	3	2020	C	AR
2009	FERNANDEZ           	\N	                    	Norma Beatriz       	\N	DNI 	20057854	27	20057854	1	F	1968-05-28	\N	\N	2009	A	AVELLANEDA	6	2018	12	2020	B	AR
1861	BELLISSIMO          	\N	                    	Martin Emanuel      	\N	DNI 	38837705	20	38837705	5	M	1995-03-21	\N	\N	1861	A	BUENOS AIRES	4	2017	7	2021	B	AR
1589	MAITIA              	\N	                    	Paula Elisa         	\N	DNI 	22992124	27	22992124	5	F	1972-11-08	\N	\N	1589	A	Capital Federal	9	2015	11	2020	C	AR
1824	ZANINOVICH          	\N	                    	Agustin Daniel      	\N	DNI 	31533394	20	31533394	7	M	1985-03-18	\N	\N	1824	A	Capital Federal	11	2016	9	2021	C	AR
1849	LOPEZ               	\N	                    	Ananquel            	\N	DNI 	33234050	27	33234050	1	F	1987-12-30	\N	\N	1849	P	San Juan	3	2017	2	2023	J	AR
1843	WAHREN              	\N	                    	Pablo               	\N	DNI 	34445336	20	34445336	6	M	1989-03-10	\N	\N	1843	P	Capital Federal	3	2017	2	2023	C	AR
1835	BALDINI             	\N	                    	Carolina            	\N	DNI 	29994177	27	29994177	4	F	1983-04-19	\N	\N	1835	P	LA PLATA	3	2017	2	2023	B	AR
1832	FIGUERA             	\N	                    	Leticia Inés        	\N	DNI 	30816162	27	30816162	0	F	1984-04-03	\N	\N	1832	P	Capital Federal	2	2017	2	2023	C	AR
1769	SUAREZ              	\N	                    	Damian Pablo        	\N	DNI 	26952864	20	26952864	9	M	1978-10-15	\N	\N	1769	P	Capital Federal	7	2016	2	2023	C	AR
635	ZALESKI ELIA        	\N	                    	Abel Angel del Sol  	\N	DNI 	34407879	20	34407879	4	M	1989-06-19	\N	\N	635	P	Punilla	12	2012	2	2023	X	AR
22	ALBERTI             	Guida               	                    	Maria Laura         	\N	DNI 	30505433	27	30505433	5	F	1983-10-23	\N	\N	22	A	Lanús	6	2011	3	2023	B	AR
834	BARONE              	\N	                    	Romina Paula        	\N	DNI 	27086605	27	27086605	6	F	1979-01-29	\N	\N	834	A	CAPITAL FEDERAL	7	2013	5	2023	C	AR
1811	CHUGAR ROJAS        	\N	                    	Raul Enrique        	\N	DNI 	21565409	20	21565409	6	M	1970-04-25	\N	\N	1811	A	SAN ISIDRO	10	2016	6	2023	B	AR
1851	BERNER              	\N	                    	Norberto Carlos     	\N	DNI 	26157218	20	26157218	5	M	1977-08-23	\N	\N	1851	A	Capital Federal	3	2017	6	2023	C	AR
431	ACUÑA SCHENK        	SCHENK              	IBARRA              	Maria Ofelia        	\N	DNI 	28844059	27	28844059	5	F	1981-07-10	\N	\N	431	A	Ciudad Autónoma de Buenos Aires	3	2012	8	2023	C	AR
1105	ANDREOLA            	\N	                    	Gustavo Jose        	\N	DNI 	23060294	20	23060294	9	M	1972-11-28	\N	\N	1105	A	LANUS	4	2014	8	2023	B	AR
1834	CHIELENS            	\N	                    	Juan Pablo          	\N	DNI 	24227480	20	24227480	7	M	1974-10-01	\N	\N	1834	A	CAPITAL FEDERAL	3	2017	1	2022	C	AR
1844	ASIAIN              	\N	                    	Andrés Pablo        	\N	DNI 	27087129	20	27087129	2	M	1979-01-02	\N	\N	1844	A	Capital Federal	3	2017	2	2022	C	AR
1842	PARADISO            	\N	                    	Juan Carlos         	\N	DNI 	11955597	20	11955597	4	M	1956-03-05	\N	\N	1842	A	Capital Federal	3	2017	1	2022	C	AR
376	STEFANONI ZANI      	ZANI                	                    	Marcelo Agustin     	\N	DNI 	10809400	20	10809400	2	M	1953-11-14	\N	\N	376	P	Ciudad Autónoma de Buenos Aires	2	2012	10	2022	C	AR
358	BAREILLE            	BAREILLE            	PRIETO              	Patricia Monica     	\N	DNI 	16024970	27	16024970	1	F	1962-02-11	\N	\N	358	J	Avellaneda	2	2012	11	2022	B	AR
61	DI BUCCIO           	\N	                    	Maria Teresa        	\N	DNI 	5965871	27	5965871	4	F	1948-11-21	\N	\N	61	J	Olivos	6	2011	5	2022	B	AR
1869	GUTIERREZ           	\N	                    	Miguel Angel        	\N	DNI 	13852580	20	13852580	6	M	1960-06-13	\N	\N	1869	A	CAPITAL FEDERAL	4	2017	8	2018	C	AR
1898	MOREYRA             	\N	                    	Cesar Alberto       	\N	DNI 	35041926	20	35041926	9	M	1990-02-19	\N	\N	1898	A	CAPITAL FEDERAL	7	2017	8	2018	C	AR
1887	SAAVEDRA            	\N	                    	Rita Viviana        	\N	DNI 	31060771	27	31060771	7	F	1984-07-24	\N	\N	1887	A	CAPITAL FEDERAL	5	2017	10	2018	C	AR
1871	REDRUELLO           	\N	                    	Gregorio Oscar      	\N	DNI 	16462930	23	16462930	9	M	1963-05-21	\N	\N	1871	A	MERLO	4	2017	4	2017	B	AR
1878	NISSEN              	\N	                    	Ricardo Augusto     	\N	DNI 	10390762	20	10390762	5	M	1952-05-10	\N	\N	1878	A	CAPITAL FEDERAL	4	2017	4	2017	C	AR
1179	CECCONI             	DI MENNA            	URRESTI             	Sofía Beatriz       	\N	DNI 	24821069	27	24821069	4	F	1975-08-19	\N	\N	1179	A	Ciudad Autónoma de Buenos Aires	6	2014	6	2019	C	AR
1000	LEDEMBUZ            	\N	                    	Maria Elizabeth     	\N	DNI 	26522575	27	26522575	1	F	1978-06-01	\N	\N	1000	A	CAPITAL FEDERAL	2	2014	12	2019	C	AR
1886	VACCAREZZA          	\N	                    	Federico Luis       	\N	DNI 	25024105	20	25024105	5	M	1975-11-18	\N	\N	1886	A	CAPITAL FEDERAL	5	2017	3	2020	C	AR
1855	SIRI                	\N	                    	Gabriela Soledad    	\N	DNI 	30435625	27	30435625	7	F	1983-08-24	\N	\N	1855	A	BUENOS AIRES	4	2017	12	2020	B	AR
1868	BOIDO               	\N	                    	Gaston Pablo        	\N	DNI 	28679740	20	28679740	8	M	1981-03-21	\N	\N	1868	A	LOMAS DE ZAMORA	4	2017	7	2021	B	AR
1864	CAPUTO              	\N	                    	Diego Christian     	\N	DNI 	21115098	20	21115098	0	M	1969-10-12	\N	\N	1864	A	CAPITAL FEDERAL	4	2017	7	2021	C	AR
1873	VERON               	\N	                    	Mariel              	\N	DNI 	37142727	27	37142727	4	F	1992-11-20	\N	\N	1873	A	CABA	4	2017	7	2021	C	AR
1875	GONZALEZ            	\N	                    	Miguel Angel        	\N	DNI 	8479030	20	8479030	4	M	1950-09-23	\N	\N	1875	J	CAPITAL FEDERAL	4	2017	8	2021	C	AR
1891	ROVITO              	\N	                    	Pablo Luis          	\N	DNI 	16335868	23	16335868	9	M	1962-10-12	\N	\N	1891	A	CAPITAL FEDERAL	6	2017	3	2022	C	AR
1879	BONANNO             	\N	                    	Gabriel Alejandro   	\N	DNI 	32480636	23	32480636	9	M	1986-07-02	\N	\N	1879	A	CAPITAL FEDERAL	4	2017	3	2022	C	AR
1889	CAUSSE              	\N	                    	Federico Javier     	\N	DNI 	17717880	20	17717880	3	M	1965-06-23	\N	\N	1889	A	CAPITAL FEDERAL	5	2017	3	2022	C	AR
1852	DIEZ                	\N	                    	Gloria Susana       	\N	DNI 	10510442	27	10510442	7	F	1953-04-06	\N	\N	1852	A	Venado Tuerto	3	2017	3	2022	S	AR
1876	SACCO               	\N	                    	Eva Florencia       	\N	DNI 	30202198	27	30202198	3	F	1983-06-05	\N	\N	1876	A	Capital Federal	4	2017	3	2022	C	AR
1901	BASSO OLZAMO        	\N	                    	Nicolas Daniel      	\N	DNI 	40916707	20	40916707	2	M	1998-01-07	\N	\N	1901	P	Remedios de Escalada	8	2017	2	2023	B	AR
1900	CASTILLO ROMERO     	\N	                    	Yvo Jose            	\N	DNI 	95311993	20	95311993	6	M	1983-08-22	\N	\N	1900	P	CARACAS	8	2017	2	2023	\N	VE
1896	OTEGUI BANNO        	\N	                    	Juan Emiliano       	\N	DNI 	32104844	20	32104844	8	M	1986-04-15	\N	\N	1896	P	MAR DEL PLATA	7	2017	2	2023	B	AR
1894	MERELAS             	\N	                    	Yanina Mariela      	\N	DNI 	35995401	27	35995401	3	F	1991-11-24	\N	\N	1894	P	LOMAS DE ZAMORA	7	2017	2	2023	B	AR
1892	PAIVA               	\N	                    	Leticia Raquel      	\N	DNI 	17316186	27	17316186	2	F	1965-03-07	\N	\N	1892	P	AVELLENEDA	6	2017	2	2023	B	AR
1888	KASPARIAN           	\N	                    	Denise Romina       	\N	DNI 	31763024	27	31763024	2	F	1985-09-02	\N	\N	1888	P	CAPITAL FEDERAL	5	2017	2	2023	C	AR
1883	FUENTES CUIÑAS      	\N	                    	Ana Alejandra       	\N	DNI 	27000219	27	27000219	1	F	1978-11-27	\N	\N	1883	P	Florida	5	2017	2	2023	B	AR
1872	GUIDO               	\N	                    	Sebastian Emanuel   	\N	DNI 	30306451	20	30306451	7	M	1983-07-22	\N	\N	1872	P	BUENOS AIRES	4	2017	2	2023	B	AR
1862	STORNELLI           	\N	                    	Maria Paula         	\N	DNI 	27939157	27	27939157	3	F	1980-01-14	\N	\N	1862	P	Capital Federal	4	2017	2	2023	C	AR
1857	PITTALUGA           	\N	                    	Matias Ivan         	\N	DNI 	35969372	23	35969372	9	M	1991-03-02	\N	\N	1857	P	CAPITAL FEDERAL	4	2017	2	2023	C	AR
1860	TRYFON              	\N	                    	Gabriel Nicolás     	\N	DNI 	37608763	20	37608763	9	M	1993-05-25	\N	\N	1860	A	Capital Federal	4	2017	6	2023	C	AR
1831	PERCZYK             	\N	                    	Jaime               	\N	DNI 	17030695	20	17030695	4	M	1964-01-21	\N	\N	1831	P	\N	1	2017	2	2023	\N	\N
1866	RAMAYON             	\N	                    	Maria               	\N	DNI 	29119611	27	29119611	5	F	1981-10-16	\N	\N	1866	A	Capital Federal	4	2017	6	2023	C	AR
1890	NITTI               	\N	                    	Leonardo Hector     	\N	DNI 	26000400	20	26000400	0	M	1977-07-04	\N	\N	1890	A	CAPITAL FEDERAL	6	2017	3	2023	C	AR
1865	CLAVELL             	\N	                    	Maria Soledad       	\N	DNI 	29105681	23	29105681	4	F	1981-09-21	\N	\N	1865	A	SAN ISIDRO	4	2017	8	2023	B	AR
1885	BUGALLO             	\N	                    	Marcelo Ruben       	\N	DNI 	32236678	20	32236678	8	M	1986-03-08	\N	\N	1885	A	CAPITAL FEDERAL	5	2017	8	2023	C	AR
1858	MECH                	\N	                    	Andrea Natalia      	\N	DNI 	23864073	27	23864073	9	F	1974-02-27	\N	\N	1858	A	CAPITAL FEDERAL	4	2017	8	2023	C	AR
1882	CARDOSO             	\N	                    	Raul Horacio        	\N	DNI 	13687943	20	13687943	0	M	1960-03-31	\N	\N	1882	A	CAPITAL FEDERAL	5	2017	8	2023	C	AR
1880	FERNANDEZ           	\N	                    	Patricia Raquel     	\N	DNI 	18515646	27	18515646	5	M	1967-10-01	\N	\N	1880	A	CAPITAL FEDERAL	4	2017	3	2022	C	AR
1895	LEFKOVICS           	\N	                    	Andres              	\N	DNI 	13132113	23	13132113	9	M	1957-07-15	\N	\N	1895	P	CAPITAL FEDERAL	7	2017	10	2022	C	AR
1905	QUINTEROS GVAY      	\N	                    	Laura               	\N	DNI 	37928835	27	37928835	4	F	1993-10-01	\N	\N	1905	A	Adrogué	8	2017	3	2018	B	AR
717	RESNIK              	\N	                    	Pamela              	\N	DNI 	28115466	23	28115466	4	F	1980-04-13	\N	\N	717	A	CIUDAD DE CORDOBA	4	2013	10	2017	X	AR
1914	SIPES               	\N	                    	Viviana Marcela     	\N	DNI 	17743031	27	17743031	0	F	1965-09-22	\N	\N	1914	A	Avellaneda	9	2017	9	2017	B	AR
321	SCALONE             	BABANTI             	                    	Viviana Edith       	\N	DNI 	14922629	27	14922629	5	F	1962-06-21	\N	\N	321	A	Ciudad Autónoma de Buenos Aires	2	2012	10	2017	C	AR
1918	GOLDWASER YANKELEVIC	\N	                    	Nathalie Romina     	\N	DNI 	18845667	27	18845667	2	F	1982-04-13	\N	\N	1918	A	MEDELLIN	9	2017	4	2018	\N	CO
1912	PAVAN               	\N	                    	Marcelo Luciano     	\N	DNI 	13308981	20	13308981	1	M	1957-02-22	\N	\N	1912	A	Capital Federal	9	2017	9	2017	C	AR
595	DALL´ OSSO          	ARREDONDO           	                    	Miguel Orlando      	\N	DNI 	23766243	20	23766243	2	M	1974-01-16	\N	\N	595	A	Ciudad Autónoma de Buenos Aires	10	2012	10	2017	C	AR
1919	GRAJALES            	\N	                    	Amos Arturo         	\N	DNI 	21054254	20	21054254	0	M	1969-09-25	\N	\N	1919	A	LA PLATA	9	2017	9	2017	B	AR
1931	OBEID               	\N	                    	Alejandro           	\N	DNI 	28695609	20	28695609	3	M	1981-02-06	\N	\N	1931	A	CAPITAL FEDERAL	10	2017	10	2017	C	AR
1929	BOTTINELLI          	\N	                    	Edgardo Javier      	\N	DNI 	20775381	20	20775381	6	M	1969-04-30	\N	\N	1929	A	Ciudad de Buenos Aires	10	2017	10	2017	C	AR
1903	USACH               	\N	                    	Cristian            	\N	DNI 	34748541	20	34748541	2	M	1979-12-24	\N	\N	1903	A	Mendoza	8	2017	3	2019	M	AR
1923	SGUR                	\N	                    	Juan Manuel         	\N	DNI 	37367894	20	37367894	6	M	1993-06-07	\N	\N	1923	A	Buenos Aires	9	2017	9	2019	B	AR
1933	OSORIO              	\N	                    	Diego Alcides       	\N	DNI 	33489735	20	33489735	5	M	1988-01-14	\N	\N	1933	A	BUENOS AIRES	10	2017	10	2017	B	AR
1936	ABAN BURGOS         	\N	                    	Guillermo Martin    	\N	DNI 	29403187	20	29403187	2	M	1982-03-11	\N	\N	1936	A	LA PLATA	11	2017	11	2017	B	AR
1904	MORENO              	\N	                    	Maria Graciela Del V	\N	DNI 	13339901	27	13339901	7	F	1957-09-19	\N	\N	1904	A	San Martin De Tucuman	8	2017	8	2021	T	AR
1922	LANG                	\N	                    	Ludmila Maricel     	\N	DNI 	36109063	27	36109063	8	F	1991-03-31	\N	\N	1922	A	Buenos Aires	9	2017	8	2021	B	AR
202	MARIÑO              	RICOY               	POUTAYS             	Gabriela Cecilia    	\N	DNI 	25997667	27	25997667	2	F	1977-07-06	\N	\N	202	A	Ciudad Autónoma de Buenos Aires	9	2011	12	2017	C	AR
1943	VIAZZI              	\N	                    	Luciano Ezequiel    	\N	DNI 	37052775	20	37052775	0	M	1992-09-11	\N	\N	1943	A	BUENOS AIRES	12	2017	12	2017	B	AR
1906	SANTORO             	\N	                    	Alejandra Noemi     	\N	DNI 	16747742	27	16747742	4	F	1963-09-28	\N	\N	1906	A	LANUS	9	2017	1	2022	B	AR
1940	BONAVETTI           	\N	                    	Ricardo Martin      	\N	DNI 	18098531	20	18098531	0	M	1966-09-25	\N	\N	1940	A	CAPITAL FEDERAL	12	2017	3	2022	C	AR
1941	CURA                	\N	                    	Veronica            	\N	DNI 	22990273	27	22990273	9	F	1972-09-03	\N	\N	1941	A	CAPITAL FEDERAL	12	2017	3	2022	C	AR
1916	DOZO                	\N	                    	Gaston              	\N	DNI 	23792452	20	23792452	6	M	1974-02-10	\N	\N	1916	A	Buenos Aires	9	2017	3	2022	B	AR
1913	ESPINOZA TORRES     	\N	                    	Carlos Aurelio      	\N	DNI 	19002575	20	19002575	7	M	1982-03-27	\N	\N	1913	A	Chimbote	9	2017	3	2022	\N	PE
1911	FERRADAS            	\N	                    	Jessica             	\N	DNI 	26382723	27	26382723	1	F	1977-11-11	\N	\N	1911	A	AVELLENEDA	9	2017	3	2022	B	AR
1944	OZAN                	\N	                    	Maria Laura         	\N	DNI 	32661102	27	32661102	1	F	1985-11-19	\N	\N	1944	A	Lanús	12	2017	12	2017	B	AR
1934	GONZALEZ BONORINO   	\N	                    	Cecilia             	\N	DNI 	35753601	23	35753601	4	F	1989-11-09	\N	\N	1934	P	BUENOS AIRES	10	2017	2	2023	B	AR
1926	CORMICK             	\N	                    	Claudio Javier      	\N	DNI 	31541502	20	31541502	1	M	1985-03-13	\N	\N	1926	P	ESCOBAR	10	2017	2	2023	B	AR
1924	NESPRIAS            	\N	                    	Francisco Jose      	\N	DNI 	25797441	20	25797441	4	M	1977-04-28	\N	\N	1924	P	Ciudad de Buenos Aires	9	2017	2	2023	C	AR
1921	CHIURAZZI           	\N	                    	Karina Laura        	\N	DNI 	28283698	27	28283698	5	F	1980-09-19	\N	\N	1921	P	LANUS	9	2017	2	2023	B	AR
1917	HANKOVITS           	\N	                    	Francisco Agustin   	\N	DNI 	20316375	20	20316375	5	M	1969-02-04	\N	\N	1917	P	Buenos Aires	9	2017	2	2023	B	AR
1910	CURTI               	\N	                    	Patricio            	\N	DNI 	24549895	20	24549895	1	M	1975-05-21	\N	\N	1910	P	Buenos Aires	9	2017	2	2023	B	AR
1909	ARBOL               	\N	                    	Martin Alejandro    	\N	DNI 	22964287	20	22964287	2	M	1972-10-21	\N	\N	1909	P	Buenos Aires	9	2017	2	2023	B	AR
1907	MELLACE             	\N	                    	Sandra Karina       	\N	DNI 	22656454	27	22656454	9	F	1972-05-06	\N	\N	1907	P	CAPITAL FEDERAL	9	2017	2	2023	C	AR
1902	DEL BUENO DESCHAMPS 	\N	                    	Guido               	\N	DNI 	35405937	20	35405937	2	M	1991-01-30	\N	\N	1902	P	ALBERTI	8	2017	2	2023	B	AR
1867	JOAQUIN             	\N	                    	Cristian Leandro    	\N	DNI 	26643834	20	26643834	7	M	1978-03-17	\N	\N	1867	A	EZEIZA	4	2017	3	2023	B	AR
1935	PISANI DIAZ         	\N	                    	Javier Andres       	\N	DNI 	18146705	20	18146705	4	M	1966-12-14	\N	\N	1935	A	Ciudad de Buenos Aires	11	2017	6	2023	C	AR
1915	FERNANDEZ           	\N	                    	Marina Luz          	\N	DNI 	37754762	23	37754762	4	F	1993-07-05	\N	\N	1915	A	Ciudad de Buenos Aires	9	2017	6	2023	C	AR
1925	DIAS                	\N	                    	Adrian Eduardo      	\N	DNI 	29174078	20	29174078	3	M	1981-12-20	\N	\N	1925	A	BUENOS AIRES	10	2017	6	2023	B	AR
1897	RODRIGUEZ           	\N	                    	Marcelo Fabian      	\N	DNI 	17327005	20	17327005	5	M	1964-12-14	\N	\N	1897	A	BUENOS AIRES	7	2017	7	2023	B	AR
1937	LEDESMA             	\N	                    	Luis Mariano        	\N	DNI 	32789964	20	32789964	4	M	1987-04-05	\N	\N	1937	A	CAPITAL FEDERAL	11	2017	8	2023	C	AR
1938	ALMEIDA             	\N	                    	Daniel Jorge        	\N	DNI 	11957208	20	11957208	9	M	1955-12-25	\N	\N	1938	A	CAPITAL FEDERAL	11	2017	8	2023	C	AR
1930	LIEBANA             	\N	                    	Juan Carlos         	\N	DNI 	7828964	20	7828964	4	M	1949-06-21	\N	\N	1930	P	TRES ARROYOS	10	2017	10	2022	B	AR
1946	ALVAREZ             	\N	                    	Silvia Alicia       	\N	DNI 	6700020	27	6700020	5	F	1951-01-31	\N	\N	1946	P	San Juan	2	2018	10	2022	J	AR
101	OLMOS ALVAREZ       	ALVAREZ             	                    	Ana Lucia           	\N	DNI 	29265718	27	29265718	3	F	1982-03-11	\N	\N	101	A	San Martín	7	2011	3	2018	B	AR
1966	RUGGIERO            	\N	                    	Miguel Angel        	\N	DNI 	12819857	20	12819857	2	M	1957-02-13	\N	\N	1966	A	Avellaneda	3	2018	10	2018	B	AR
1951	MONTES              	\N	                    	Jonathan Ezequiel   	\N	DNI 	32092924	20	32092924	6	M	1986-02-25	\N	\N	1951	A	Capital Federal	3	2018	3	2018	C	AR
1954	MASSHOLDER          	\N	                    	Alexia Guillermina  	\N	DNI 	26953136	27	26953136	9	F	1978-10-19	\N	\N	1954	A	Ciudad de Buenos Aires	3	2018	3	2018	C	AR
1969	BUCCINO             	\N	                    	Yesica Sabrina      	\N	DNI 	29364194	27	29364194	9	F	1982-01-30	\N	\N	1969	A	BUENOS AIRES	3	2018	4	2018	B	AR
1970	SUAREZ MUÑOZ        	\N	                    	Marcelo Fabian      	\N	DNI 	26663039	20	26663039	6	M	1978-05-19	\N	\N	1970	A	BUENOS AIRES	4	2018	8	2019	B	AR
1972	AMITRANO            	\N	                    	Jorge Antonio       	\N	DNI 	11889971	20	11889971	8	M	1955-12-10	\N	\N	1972	A	Ciudad de Buenos Aires	4	2018	4	2018	C	AR
1971	BARRETO             	\N	                    	Maria Emilia        	\N	DNI 	34143686	27	34143686	4	F	1989-01-16	\N	\N	1971	A	BUENOS AIRES	4	2018	4	2018	B	AR
1975	MORENO              	\N	                    	Jose Eduardo        	\N	DNI 	26468464	20	26468464	2	M	1978-02-23	\N	\N	1975	A	Tres Arroyos	4	2018	4	2018	B	AR
1978	VILLALBA            	\N	                    	Walter Fabian       	\N	DNI 	25592291	20	25592291	3	M	1977-05-19	\N	\N	1978	A	San Justo	4	2018	4	2018	B	AR
1980	CORVALAN            	\N	                    	Marina              	\N	DNI 	30421043	27	30421043	0	F	1983-09-30	\N	\N	1980	A	LA PLATA	4	2018	4	2018	B	AR
1983	RAMOS               	\N	                    	Mercedes Lorena     	\N	DNI 	29168100	27	29168100	5	F	1981-10-14	\N	\N	1983	A	San Miguel	4	2018	4	2018	B	AR
1962	BERARDI             	\N	                    	Fernando Daniel     	\N	DNI 	17801750	20	17801750	1	M	1966-03-28	\N	\N	1962	A	Ciudad de Buenos Aires	3	2018	1	2022	C	AR
1957	GONZALEZ            	\N	                    	Silvia Veronica     	\N	DNI 	18522436	27	18522436	3	F	1967-10-06	\N	\N	1957	A	Ciudad de Buenos Aires	3	2018	1	2022	B	AR
1958	LLANPART GOBBI      	\N	                    	Flavia              	\N	DNI 	19004490	23	19004490	4	F	1981-08-03	\N	\N	1958	A	Caracas	3	2018	2	2022	\N	VE
879	FUCHS               	\N	                    	Beatriz Delia       	\N	DNI 	5432159	27	5432159	2	F	1946-08-06	\N	\N	879	J	CAPITAL FEDERAL	9	2013	2	2022	B	AR
1977	COLIQUEO            	\N	                    	Adriana Cecilia     	\N	DNI 	16831619	23	16831619	4	F	1963-05-05	\N	\N	1977	A	LOMAS DE ZAMORA	4	2018	3	2022	B	AR
2031	DODARO              	\N	                    	Christian Adrian    	\N	DNI 	24655251	20	24655251	8	M	1975-07-30	\N	\N	2031	A	Beccar	6	2018	3	2022	B	AR
1956	FIORE               	\N	                    	Daniela Anastasia   	\N	DNI 	26589201	27	26589201	4	F	1978-05-15	\N	\N	1956	A	Ciudad de Buenos Aires	3	2018	3	2022	B	AR
1967	MOSTAJO             	\N	                    	Hernan Miguel       	\N	DNI 	30594417	20	30594417	4	M	1983-11-18	\N	\N	1967	A	Capital Federal	3	2018	3	2022	C	AR
2017	MARTINEZ            	\N	                    	Dario Marcelo       	\N	DNI 	32423444	20	32423444	7	M	1986-07-31	\N	\N	2017	A	BUENOS AIRES	6	2018	6	2018	B	AR
2039	HERRERA             	\N	                    	Claudia Rita G      	\N	DNI 	16748935	23	16748935	4	F	1964-03-22	\N	\N	2039	P	Lanus	6	2018	2	2023	B	AR
2038	SPAGNOLO            	\N	                    	Juan Pablo          	\N	DNI 	25816264	20	25816264	2	M	1977-01-17	\N	\N	2038	P	Quilmes	6	2018	2	2023	B	AR
1988	LEMBEYE             	\N	                    	Martin Nicolas      	\N	DNI 	34321894	20	34321894	0	M	1989-01-18	\N	\N	1988	P	Capital Federal	4	2018	2	2023	C	AR
1987	CERNELLO            	\N	                    	Maximiliano Ezequiel	\N	DNI 	30814814	23	30814814	9	M	1984-01-27	\N	\N	1987	P	Capital Federal	4	2018	2	2023	C	AR
1986	GEROMINI            	\N	                    	Aldana Laura        	\N	DNI 	28962556	27	28962556	4	F	1981-08-20	\N	\N	1986	P	Lanus	4	2018	2	2023	B	AR
1979	GIRALDEZ            	\N	                    	Carina Soraya       	\N	DNI 	21035761	27	21035761	6	F	1969-11-18	\N	\N	1979	P	LA PAMPA	4	2018	2	2023	L	AR
1959	PICCARDI            	\N	                    	Maria Florencia     	\N	DNI 	32270377	27	32270377	0	F	1986-05-01	\N	\N	1959	P	BUENOS AIRES	3	2018	2	2023	B	AR
1947	LIPSICH             	\N	                    	Alejandro Sergio    	\N	DNI 	13735103	20	13735103	0	M	1959-12-01	\N	\N	1947	P	Capital Federal	2	2018	2	2023	C	AR
1945	ALVAREZ PAZ         	\N	                    	Carlos Enrique      	\N	DNI 	16970368	20	16970368	0	M	1963-11-04	\N	\N	1945	P	Santiago del Estero	2	2018	2	2023	G	AR
1955	MUJICA              	\N	                    	Soledad             	\N	DNI 	28078570	23	28078570	9	F	1980-04-08	\N	\N	1955	A	Ciudad de Buenos Aires	3	2018	3	2023	B	AR
1948	MILOSLAVICH         	\N	                    	Ruben Dario         	\N	DNI 	36756157	20	36756157	3	M	1992-10-23	\N	\N	1948	A	Ciudad de Buenos Aires	2	2018	3	2023	B	AR
1965	KUTIANSKI           	\N	                    	Juan Andres         	\N	DNI 	23123063	20	23123063	8	M	1972-11-23	\N	\N	1965	A	Ciudad de Buenos Aires	3	2018	6	2023	C	AR
1952	LABRA               	\N	                    	Claudio Sebastián   	\N	DNI 	34551769	20	34551769	4	M	1989-05-27	\N	\N	1952	A	\N	3	2018	6	2023	\N	\N
1973	ARISTEI             	\N	                    	Maria Emilia        	\N	DNI 	35088072	27	35088072	6	F	1989-12-07	\N	\N	1973	A	Ciudad de Buenos Aires	4	2018	6	2023	C	AR
1932	IVANOFF PETROFF     	\N	                    	Lilian              	\N	DNI 	20013655	27	20013655	7	F	1968-01-31	\N	\N	1932	A	BERISSO	10	2017	8	2023	B	AR
1985	DIAZ                	\N	                    	Maria Del Carmen    	\N	DNI 	13295830	27	13295830	6	F	1957-06-18	\N	\N	1985	J	Capital Federal	4	2018	6	2023	C	AR
1964	GALARRAGA           	\N	                    	Gonzalo             	\N	DNI 	34110396	20	34110396	8	M	1988-11-29	\N	\N	1964	A	ENTRE RIOS	3	2018	8	2023	E	AR
1961	PUY                 	\N	                    	Gustavo Alejandro   	\N	DNI 	21732285	20	21732285	6	M	1970-07-06	\N	\N	1961	A	Ciudad de Buenos Aires	3	2018	8	2023	C	AR
1976	LAZZARI             	\N	                    	Pablo Damian        	\N	DNI 	22707409	20	22707409	5	M	1972-04-08	\N	\N	1976	A	Capital Federal	4	2018	8	2023	C	AR
1950	ALBORNOZ            	\N	                    	Carlos Javier       	\N	DNI 	27822211	20	27822211	0	M	1980-01-07	\N	\N	1950	A	\N	3	2018	9	2023	\N	\N
2043	TRAININI            	\N	                    	Jorge Carlos        	\N	DNI 	4513018	20	4513018	6	M	1944-11-11	\N	\N	2043	P	BUENOS AIRES	7	2018	10	2022	B	AR
2004	ARGAÑARAZ           	\N	                    	Lidia Susana        	\N	DNI 	18203015	27	18203015	0	F	1967-01-08	\N	\N	2004	A	TUCUMAN	6	2018	8	2022	T	AR
2029	FUENZALIDA          	\N	                    	Eliana Anabel       	\N	DNI 	33657192	27	33657192	3	F	1989-03-01	\N	\N	2029	A	TUCUMAN	6	2018	5	2019	T	AR
2033	LOPEZ               	\N	                    	Micaela Celeste     	\N	DNI 	37541049	23	37541049	4	F	1993-04-10	\N	\N	2033	A	Capital Federal	6	2018	3	2019	C	AR
1984	SEPULVEDA MARTINEZ  	\N	                    	Luisina Elisabeth   	\N	DNI 	33555460	23	33555460	4	F	1987-12-04	\N	\N	1984	A	Campana	4	2018	3	2019	B	AR
2030	COLLAZO GAGNEBIN    	\N	                    	Cecilia Raquel      	\N	DNI 	92635626	27	92635626	2	F	1972-10-05	\N	\N	2030	A	COLONIA	6	2018	11	2019	\N	UY
791	GRECO               	\N	                    	Martin              	\N	DNI 	34078687	20	34078687	5	M	1988-09-29	\N	\N	791	P	LANUS OESTE	6	2013	6	2018	B	AR
1135	VELARDEZ            	\N	LOPEZ               	Alejandra Esther    	\N	DNI 	20411887	27	20411887	1	F	1968-10-03	\N	\N	1135	P	Ciudad Autónoma de Buenos Aires	4	2014	6	2018	C	AR
2042	ALBERTI             	\N	                    	Analia Nancy        	\N	DNI 	20480785	27	20480785	5	F	1968-10-05	\N	\N	2042	A	Capital Federal	7	2018	10	2018	C	AR
2037	FERNANDEZ           	\N	                    	Diego Luis          	\N	DNI 	30630148	24	30630148	5	M	1983-12-03	\N	\N	2037	A	QUILMES	6	2018	3	2020	B	AR
2003	BELTRAN             	\N	                    	Giselle Elizabet    	\N	DNI 	35820599	27	35820599	8	F	1991-05-17	\N	\N	2003	A	AVELLANEDA	6	2018	12	2020	B	AR
2012	GOMEZ               	\N	                    	Silvana Soledad     	\N	DNI 	37381918	27	37381918	8	F	1991-09-09	\N	\N	2012	A	BUENOS AIRES	6	2018	12	2020	B	AR
2014	LEIVA               	\N	                    	Daiana Ayelen       	\N	DNI 	36064810	27	36064810	4	F	1992-07-14	\N	\N	2014	A	AVELLANEDA	6	2018	12	2020	B	AR
2013	LEIVA               	\N	                    	Stephanie Noe       	\N	DNI 	35246174	27	35246174	7	F	1990-08-22	\N	\N	2013	A	BUENOS AIRES	6	2018	12	2020	B	AR
2015	MAIDANA             	\N	                    	Graciela Beatriz    	\N	DNI 	34072090	27	34072090	9	F	1988-04-04	\N	\N	2015	A	AVELLANEDA	6	2018	12	2020	B	AR
2016	MAIDANA             	\N	                    	Maria Fernanda      	\N	DNI 	29007638	27	29007638	8	F	1981-07-31	\N	\N	2016	A	BUENOS AIRES	6	2018	12	2020	B	AR
2019	MONGE               	\N	                    	Karen Solange       	\N	DNI 	38199304	27	38199304	9	F	1994-04-09	\N	\N	2019	A	MORON	6	2018	12	2020	B	AR
2021	PELOSO              	\N	                    	Juan Domingo        	\N	DNI 	14869309	23	14869309	9	M	1962-05-06	\N	\N	2021	A	Chaco	6	2018	12	2020	H	AR
2024	RIVERO              	\N	                    	Andrea Lilian       	\N	DNI 	35863244	27	35863244	6	F	1991-10-22	\N	\N	2024	A	LANUS	6	2018	12	2020	B	AR
2025	RIVERO              	\N	                    	Noelia Dora         	\N	DNI 	24183716	27	24183716	0	F	1974-10-04	\N	\N	2025	A	Ciudad de Buenos Aires	6	2018	12	2020	B	AR
2028	VERGARA             	\N	                    	Melina Rocio        	\N	DNI 	39924272	27	39924272	5	F	1996-10-24	\N	\N	2028	A	AVELLANEDA	6	2018	12	2020	B	AR
1302	PACHECO             	\N	                    	Maria Susana        	\N	DNI 	16900708	27	16900708	5	F	1964-03-14	\N	\N	1302	A	AVELLANEDA	3	2015	8	2018	B	AR
1315	AUSTRA              	\N	                    	Dina Mariel         	\N	DNI 	18305185	27	18305185	2	F	1967-10-17	\N	\N	1315	A	BUENOS AIRES	3	2015	8	2018	B	AR
2035	ABILLERA            	\N	                    	Estela Lorena       	\N	DNI 	24936096	27	24936096	7	F	1975-09-12	\N	\N	2035	A	BUENOS AIRES	6	2018	8	2021	B	AR
2011	GALEANO             	\N	                    	Marta Edith         	\N	DNI 	25513504	27	25513504	5	F	1976-09-16	\N	\N	2011	A	BUENOS AIRES	6	2018	11	2021	B	AR
2022	PAVON               	\N	                    	Analia Nilda Ester  	\N	DNI 	28025951	27	28025951	4	F	1980-03-06	\N	\N	2022	A	AVELLANEDA	6	2018	9	2021	B	AR
2023	RAMOS               	\N	                    	Adriana del Valle   	\N	DNI 	14922705	27	14922705	4	F	1962-05-10	\N	\N	2023	A	AVELLANEDA	6	2018	10	2021	B	AR
2026	RODRIGUEZ           	\N	                    	Antonia Carmen      	\N	DNI 	17415496	27	17415496	7	F	1964-06-12	\N	\N	2026	A	LANUS	6	2018	10	2021	B	AR
2045	CORTI               	\N	                    	Horacio Guillermo A.	\N	DNI 	17364370	20	17364370	6	M	1965-06-24	\N	\N	2045	A	Capital Federal	7	2018	3	2022	C	AR
2061	VAZQUEZ             	\N	                    	Hernan Jorge        	\N	DNI 	21559431	23	21559431	9	M	1970-05-30	\N	\N	2061	A	Bahia Blanca	8	2018	1	2022	B	AR
2050	FERREYRA            	\N	                    	Juan Ignacio        	\N	DNI 	25998922	20	25998922	2	M	1977-07-20	\N	\N	2050	A	Capital Federal	8	2018	3	2022	C	AR
2027	SAUCEDO             	\N	                    	Natalia Daniela     	\N	DNI 	39185027	27	39185027	0	F	1995-05-15	\N	\N	2027	A	Ciudad de Buenos Aires	6	2018	5	2022	C	AR
2059	PETIT DIAZ          	\N	                    	Karen Graciela      	\N	DNI 	95775970	27	95775970	5	F	1984-04-26	\N	\N	2059	A	Punto Fijo	8	2018	8	2018	\N	VE
2062	MEZA                	\N	                    	Maria Victoria      	\N	DNI 	29331031	27	29331031	4	F	1982-01-12	\N	\N	2062	P	Haedo	9	2018	2	2023	B	AR
1893	HEL                 	\N	                    	Nicolas Alejandro   	\N	DNI 	32023119	20	32023119	2	M	1985-12-21	\N	\N	1893	P	BUENOS AIRES	7	2017	2	2023	B	AR
2044	BONANNO             	\N	                    	Mabel Cristina      	\N	DNI 	18367055	27	18367055	2	F	1967-05-09	\N	\N	2044	A	Capital Federal	7	2018	8	2023	C	AR
2055	JAKOMIN             	\N	                    	María Laura         	\N	DNI 	22847198	23	22847198	4	F	1972-07-08	\N	\N	2055	A	Capital Federal	8	2018	4	2023	C	AR
2056	BUFFA               	\N	                    	Norma Renee         	\N	DNI 	18160521	27	18160521	4	F	1966-06-01	\N	\N	2056	A	Capital Federal	8	2018	6	2023	C	AR
2060	PAZOS               	\N	                    	Fernando Agustín    	\N	DNI 	17499509	20	17499509	6	M	1965-04-27	\N	\N	2060	A	Capital Federal	8	2018	6	2023	C	AR
1996	ALMADA              	\N	                    	Cecilia Elena       	\N	DNI 	14686980	27	14686980	2	F	1961-10-10	\N	\N	1996	J	Capital Federal	5	2018	8	2023	C	AR
2053	AMADO SILVERO       	\N	                    	Florencia           	\N	DNI 	35804050	27	35804050	6	F	1990-12-11	\N	\N	2053	A	Capital Federal	8	2018	8	2023	C	AR
2058	AMBROSI             	\N	                    	Daniela Celeste     	\N	DNI 	31369844	27	31369844	6	F	1984-10-25	\N	\N	2058	A	Burzaco	8	2018	8	2023	B	AR
2064	OCHOA               	\N	                    	Miguel              	\N	DNI 	14142642	20	14142642	8	M	1961-04-26	\N	\N	2064	A	Lomas de Zamora	9	2018	8	2023	B	AR
2052	MEZA                	\N	                    	Juan Manuel         	\N	DNI 	25392443	20	25392443	9	M	1976-03-04	\N	\N	2052	A	Quilmes	8	2018	8	2023	B	AR
2041	LARROZA             	\N	                    	Julian              	\N	DNI 	38228761	20	38228761	5	M	1994-04-18	\N	\N	2041	A	LOMAS DE ZAMORA	7	2018	8	2019	B	AR
2078	RODRIGUEZ           	\N	                    	Siro Javier         	\N	DNI 	26122537	23	26122537	9	M	1978-02-17	\N	\N	2078	A	Capital Federal	10	2018	10	2018	C	AR
2070	MONZON              	\N	                    	Nicolás Hernán      	\N	DNI 	36753198	20	36753198	4	M	1992-09-08	\N	\N	2070	A	Neuquén	9	2018	10	2018	Q	AR
2054	GUTIERREZ           	\N	                    	Juan Fernando       	\N	DNI 	25925105	20	25925105	3	M	1977-04-16	\N	\N	2054	A	San Nicolás	8	2018	10	2018	B	AR
999	CABELLO             	\N	                    	Marianella          	\N	DNI 	39244525	27	39244525	6	F	1995-08-18	\N	\N	999	A	CAPITAL FEDERAL	2	2014	12	2018	C	AR
132	VELIZ               	RODRIGUEZ           	                    	Claudio Oscar       	\N	DNI 	17315509	20	17315509	4	M	1965-05-03	\N	\N	132	A	Lanús	7	2011	12	2018	B	AR
1045	ALURRALDE           	\N	                    	Mariano Miguel      	\N	DNI 	23235224	20	23235224	9	M	1973-03-16	\N	\N	1045	A	CAPITAL FEDERAL	3	2014	3	2020	C	AR
1384	BLARDONI            	Pereira             	                    	Mariana Elena       	\N	DNI 	19066006	27	19066006	6	F	1984-09-04	\N	\N	1384	A	Salto	5	2015	1	2019	\N	UY
607	PSZON               	TAUZ                	                    	Sebastián Rodrigo   	\N	DNI 	34999634	20	34999634	1	M	1989-09-03	\N	\N	607	A	Avellaneda	10	2012	2	2019	B	AR
2075	BARRIOS             	\N	                    	Alejandro Raul      	\N	DNI 	18713370	20	18713370	0	M	1961-05-16	\N	\N	2075	A	Florida	9	2018	7	2021	\N	UY
895	HABOBA              	\N	                    	Malena Leticia      	\N	DNI 	24167474	27	24167474	1	F	1977-01-19	\N	\N	895	A	LA PLATA	10	2013	7	2021	B	AR
2051	DE GANS             	\N	                    	David Arturo        	\N	DNI 	31539718	23	31539718	9	M	1985-07-15	\N	\N	2051	A	Prov. de Buenos Aires	8	2018	8	2021	B	AR
1631	GALEANI CALVIN      	\N	                    	Matias Miguel       	\N	DNI 	33440975	23	33440975	9	M	1988-01-18	\N	\N	1631	A	AVELLANEDA	10	2015	8	2021	B	AR
512	BATTAGLIA           	\N	                    	Martin Ricardo      	\N	DNI 	28309446	20	28309446	5	M	1980-07-27	\N	\N	512	A	Ciudad Autónoma de Buenos Aires	6	2012	2	2019	C	AR
454	NORIEGA             	\N	                    	Maria Cecilia       	\N	DNI 	13120049	27	13120049	3	F	1958-09-20	\N	\N	454	J	París	4	2012	2	2019	\N	FR
397	BERENZE             	\N	                    	Carlos Maria        	\N	DNI 	13327499	20	13327499	6	M	1957-08-14	\N	\N	397	A	Bovril	3	2012	3	2019	E	AR
2071	VANOLI LONG BIOCCA  	\N	                    	Alejandro           	\N	DNI 	14222822	20	14222822	0	M	1961-04-10	\N	\N	2071	A	Capital Federal	9	2018	9	2021	C	AR
2057	BRADI               	\N	                    	Juan Manuel         	\N	DNI 	25578887	20	25578887	7	M	1977-05-09	\N	\N	2057	A	Bernal	8	2018	11	2021	B	AR
119	ROMERO              	\N	                    	Gabriela Grisel     	\N	DNI 	22148906	27	22148906	9	F	1971-10-04	\N	\N	119	A	Capital Federal	7	2011	3	2022	C	AR
2067	TEMPORELLI          	\N	                    	Walter Gustavo      	\N	DNI 	16960612	23	16960612	9	M	1964-12-14	\N	\N	2067	A	Capital Federal	9	2018	3	2022	C	AR
1346	CHOLVIS             	\N	                    	Jorge Francisco     	\N	LE  	4387352	20	4387352	1	M	1942-01-27	\N	\N	1346	J	CAPITAL FEDERAL	4	2015	3	2022	C	AR
1087	CROVETTO            	\N	                    	Norberto Eduardo    	\N	DNI 	4983577	23	4983577	9	M	1948-04-17	\N	\N	1087	J	Capital Federal	4	2014	3	2022	C	AR
2066	GARCIA PELAYO       	\N	                    	Adriana Lucrecia    	\N	DNI 	25423742	27	25423742	1	F	1976-09-19	\N	\N	2066	A	Lanús	9	2018	3	2022	B	AR
2068	GOLDIN              	\N	                    	Luis Joel           	\N	DNI 	34497035	20	34497035	2	M	1989-05-04	\N	\N	2068	A	Capital Federal	9	2018	3	2022	C	AR
2047	RUIZ DIAZ           	\N	                    	Maria Cristina      	\N	DNI 	93681234	27	93681234	7	F	1962-04-25	\N	\N	2047	A	PARAGUAY	8	2018	3	2022	\N	PY
1530	BAEZ                	\N	                    	Clarisa             	\N	DNI 	34922140	27	34922140	9	F	1989-10-06	\N	\N	1530	A	LOMAS DE ZAMORA	7	2015	3	2019	B	AR
1981	MOLINARI            	\N	                    	Lucas Martin        	\N	DNI 	30278528	20	30278528	8	M	1983-04-19	\N	\N	1981	A	Capital Federal	4	2018	3	2019	C	AR
249	IGLESIAS            	GIMÉNEZ             	                    	Sofia               	\N	DNI 	35976813	27	35976813	9	M	1991-04-14	\N	\N	249	A	Ciudad Autónoma de Buenos Aires	10	2011	4	2019	C	AR
663	VELASQUEZ BUSTAMANTE	BUSTAMANTE          	                    	Arnaldo Andres      	\N	DNI 	92485100	20	92485100	8	M	1979-10-07	\N	\N	663	A	VALDIVIA	2	2013	3	2019	\N	CL
144	MONASTERIO          	POSEDENTE           	                    	Leandro Ruben       	\N	DNI 	31685429	20	31685429	0	M	1985-06-06	\N	\N	144	A	Capital Federal	7	2011	3	2019	C	AR
2080	SAGOL               	\N	                    	Cecilia Gabriela    	\N	DNI 	16401928	23	16401928	4	F	1963-03-05	\N	\N	2080	P	QUILMES	10	2018	2	2023	B	AR
2069	SIGNORELLI          	\N	                    	Gisella Fernanda    	\N	DNI 	34592592	27	34592592	4	F	1989-07-25	\N	\N	2069	P	Neuquén capital	9	2018	2	2023	Q	AR
2048	LEMA                	\N	                    	Jorge Omar          	\N	DNI 	11385153	20	11385153	9	M	1954-09-25	\N	\N	2048	P	Mar del Plata	8	2018	2	2023	B	AR
621	RIBOT SAN MARTIN    	SAN MARTIN          	                    	Abi Leila           	\N	DNI 	33857076	27	33857076	2	F	1988-05-27	\N	\N	621	P	Ciudad Autónoma de Buenos Aires	11	2012	2	2023	C	AR
1284	COURTOIS            	\N	                    	Norma Gladys        	\N	DNI 	5987040	27	5987040	3	F	1949-01-03	\N	\N	1284	P	Mercedes	11	2014	2	2023	D	AR
2074	OHANIAN             	\N	                    	Barbara Ines        	\N	DNI 	29392178	24	29392178	0	F	1982-01-30	\N	\N	2074	A	Capital Federal	9	2018	3	2023	C	AR
2079	BAÑOS               	\N	                    	Hernan Daniel       	\N	DNI 	18161631	20	18161631	9	M	1966-09-18	\N	\N	2079	A	Moron	10	2018	6	2023	B	AR
2076	GOMEZ ZAMACOLA      	\N	                    	Ernesto Eusebio     	\N	DNI 	30128609	20	30128609	1	M	1983-09-29	\N	\N	2076	A	Ushuaia	10	2018	6	2023	V	AR
2072	CASTRO              	\N	                    	Sebastian Jorge     	\N	DNI 	24663538	20	24663538	3	M	1975-05-29	\N	\N	2072	A	Capital Federal	9	2018	8	2023	C	AR
2083	YAÑEZ               	\N	                    	Maria Alejandra     	\N	DNI 	29295829	27	29295829	9	F	1983-01-05	\N	\N	2083	A	Gral. Güemes	11	2018	8	2023	A	AR
2081	GUEREÑO             	\N	                    	Indiana             	\N	DNI 	27516423	27	27516423	8	F	1979-10-13	\N	\N	2081	A	Carhue	10	2018	8	2023	B	AR
2065	VAZQUEZ             	\N	                    	Mariana             	\N	DNI 	22655029	27	22655029	7	F	1972-02-15	\N	\N	2065	A	Capital Federal	9	2018	8	2023	C	AR
2034	GUILLEN             	\N	                    	Luca                	\N	DNI 	38013860	20	38013860	4	M	1994-02-23	\N	\N	2034	A	LOMAS DE ZAMORA	6	2018	8	2023	B	AR
84	KUNDICH             	\N	                    	Gabriela Alejandra  	\N	DNI 	17408961	27	17408961	8	F	1965-08-16	\N	\N	84	A	Banfield	7	2011	3	2019	B	AR
974	RODRIGUEZ           	\N	                    	Natalia Elizabeth   	\N	DNI 	30118926	27	30118926	0	F	1983-07-03	\N	\N	974	A	Moreno	1	2014	12	2019	B	AR
236	WERNICKE            	\N	                    	Fiorella            	\N	DNI 	32594187	20	32594187	2	F	1986-08-30	\N	\N	236	A	Ciudad Autónoma de Buenos Aires	10	2011	3	2019	C	AR
279	JUAREZ              	LÓPEZ               	                    	Diego Ezequiel      	\N	DNI 	35394196	20	35394196	9	M	1990-07-05	\N	\N	279	A	Avellaneda	12	2011	3	2019	B	AR
657	D' ALESSANDRO       	ELENA               	                    	Jesica María        	\N	DNI 	31642045	27	31642045	7	F	1985-05-01	\N	\N	657	A	CAPITAL FEDERAL	2	2013	3	2019	C	AR
759	ASSAD               	\N	                    	Jorge Omar          	\N	DNI 	28283224	20	28283224	1	M	1980-08-28	\N	\N	759	A	LANUS ESTE	5	2013	3	2019	B	AR
1245	PAVESE              	OCHIPINTI           	CASAL               	Yésica Nadia        	\N	DNI 	30954509	27	30954509	0	F	1984-04-07	\N	\N	1245	A	Bernal	9	2014	3	2019	B	AR
1764	FRIED               	\N	                    	Claudia Marina      	\N	DNI 	32041429	27	32041429	1	F	1986-03-11	\N	\N	1764	A	PUERTO IGUAZU	6	2016	3	2019	N	AR
1928	BELLI BASUALDO      	\N	                    	Matias Agustin      	\N	DNI 	32199114	23	32199114	9	M	1986-03-18	\N	\N	1928	A	AVELLANEDA	10	2017	3	2019	B	AR
42	BENTO SCHNEIDER     	\N	                    	Ana Maria           	\N	DNI 	10330082	27	10330082	2	F	1952-01-06	\N	\N	42	J	Avellaneda	6	2011	12	2020	B	AR
2040	DIOS                	\N	                    	Yasmin Elisabet     	\N	DNI 	36696453	27	36696453	9	F	1992-06-26	\N	\N	2040	A	Lanus Oeste	7	2018	12	2020	B	AR
2088	RECUPITO            	\N	                    	Monica Cristina     	\N	DNI 	13131247	23	13131247	4	F	1957-03-13	\N	\N	2088	A	Capital Federal	3	2019	3	2019	C	AR
2049	CASERTA             	\N	                    	Edmundo             	\N	DNI 	12400496	23	12400496	9	M	1956-05-31	\N	\N	2049	A	Capital Federal	8	2018	7	2021	C	AR
1577	RODRIGUEZ           	\N	                    	Silvana Alejandra   	\N	DNI 	31979514	27	31979514	1	F	1985-11-05	\N	\N	1577	A	AVELLANEDA	9	2015	8	2021	B	AR
1540	SILBER              	\N	                    	Victoria            	\N	DNI 	30786894	27	30786894	1	F	1984-03-09	\N	\N	1540	A	SANTA FE	8	2015	9	2021	S	AR
163	GOMEZ               	SANTILLAN           	                    	Gustavo Joaquin     	\N	DNI 	23156651	20	23156651	2	M	1973-11-22	\N	\N	163	A	Lomas de Zamora	8	2011	12	2021	B	AR
522	ZUNINO              	\N	                    	Marcela Noemi       	\N	DNI 	11273377	27	11273377	4	F	1954-09-30	\N	\N	522	J	Rosario	6	2012	2	2022	S	AR
2086	YBARRA              	\N	                    	Sabrina Ayelen      	\N	DNI 	31930945	23	31930945	4	F	1985-09-18	\N	\N	2086	A	CABA	3	2019	11	2021	C	AR
2092	ZICARI              	\N	                    	Julian Norberto     	\N	DNI 	29753161	20	29753161	2	M	1982-09-02	\N	\N	2092	A	Capital Federal	4	2019	2	2022	C	AR
524	AIBAR               	GAETE               	                    	Julia Maria         	\N	DNI 	21074195	27	21074195	5	F	1969-10-27	\N	\N	524	A	Belén	6	2012	3	2022	K	AR
2085	STICOTTI            	\N	                    	Nicolas             	\N	DNI 	28461103	23	28461103	9	M	1980-10-08	\N	\N	2085	A	CABA	1	2019	3	2022	B	AR
72	HERRERA             	BLANCO              	                    	Ricardo Gabriel     	\N	DNI 	20698089	20	20698089	4	M	1969-09-23	\N	\N	72	A	Avellaneda	6	2011	4	2022	B	AR
2093	SOTO PIO            	\N	                    	Yuli Maruja         	\N	DNI 	94065457	27	94065457	8	F	1969-09-23	\N	\N	2093	A	ATAURA- JAUJA- JUNIN	4	2019	5	2019	\N	PE
2094	JUAREZ              	\N	                    	Rosana Ignacia      	\N	DNI 	22232861	27	22232861	1	F	1971-11-07	\N	\N	2094	A	LOMAS DE ZAMORA	4	2019	10	2019	B	AR
787	BARTOLETTI          	\N	                    	Julieta             	\N	DNI 	23781672	27	23781672	8	F	1973-12-13	\N	\N	787	A	BUENOS AIRES	5	2013	12	2019	B	AR
828	HERE                	\N	                    	Gisela Soledad      	\N	DNI 	25743902	27	25743902	5	F	1977-04-21	\N	\N	828	A	CASTELAR	7	2013	5	2019	B	AR
1115	ORDUNA              	\N	                    	Ayelen              	\N	DNI 	31815705	27	31815705	2	F	1985-11-21	\N	\N	1115	A	CONCORDIA	4	2014	7	2022	E	AR
2099	PANETE              	\N	                    	Veronica Susana     	\N	DNI 	24378950	27	24378950	3	F	1975-03-06	\N	\N	2099	A	Capital Federal	4	2019	8	2022	C	AR
1881	LUNA                	\N	                    	Lucas Alejandro     	\N	DNI 	21507239	20	21507239	9	M	1970-04-23	\N	\N	1881	A	La Plata	4	2017	7	2022	B	AR
1502	FORTINO             	\N	                    	Gabriela Alejandra  	\N	DNI 	35335518	27	35335518	5	F	1990-04-24	\N	\N	1502	A	LANUS OESTE	6	2015	12	2022	B	AR
1303	RODRIGUEZ           	\N	                    	Julieta             	\N	DNI 	36687435	27	36687435	1	F	1992-01-04	\N	\N	1303	P	CAPITAL FEDERAL	3	2015	12	2022	C	AR
1075	CORUJO              	\N	                    	Gonzalo Hernán      	\N	DNI 	33441631	20	33441631	4	M	1987-12-06	\N	\N	1075	P	Quilmes	4	2014	12	2022	B	AR
227	PRESA               	\N	                    	Adriana Maria       	\N	DNI 	18004660	27	18004660	2	F	1967-01-13	\N	\N	227	P	Avellaneda	9	2011	2	2023	B	AR
2108	FERNANDEZ MEJUTO M  	\N	                    	Abel Alí            	\N	DNI 	37904237	20	37904237	7	M	1993-09-03	\N	\N	2108	P	CABA	5	2019	2	2023	B	AR
2098	ROS                 	\N	                    	Monica Gabriela     	\N	DNI 	20416479	27	20416479	2	F	1968-01-01	\N	\N	2098	P	\N	4	2019	2	2023	\N	\N
564	PIRON               	\N	                    	Hugo Amelio         	\N	LE  	6151066	20	6151066	5	M	1949-02-04	\N	\N	564	P	Ciudad Autónoma de Buenos Aires	8	2012	2	2023	C	AR
1478	VAZQUEZ             	\N	                    	Mauro Gaston        	\N	DNI 	25713732	20	25713732	6	M	1977-04-13	\N	\N	1478	P	Llavallol	6	2015	2	2023	B	AR
1056	PERRONE             	\N	                    	Angel Eugenio       	\N	DNI 	13430897	20	13430897	5	M	1957-07-13	\N	\N	1056	P	Capital Federal	4	2014	2	2023	C	AR
2096	MANIN               	\N	                    	Maria Laura         	\N	DNI 	29219375	27	29219375	6	F	1982-10-23	\N	\N	2096	A	Lobos	4	2019	3	2023	B	AR
2101	ARCA                	\N	                    	Javier Emilio       	\N	DNI 	26661475	20	26661475	7	M	1978-05-13	\N	\N	2101	A	Ciudadela	4	2019	6	2023	B	AR
2091	NEGRO               	\N	                    	Juan Pablo          	\N	DNI 	26588676	20	26588676	1	M	1978-05-17	\N	\N	2091	A	Capital Federal	4	2019	4	2023	C	AR
2095	GARCIA              	\N	                    	Gonzalo             	\N	DNI 	32760689	20	32760689	2	M	1986-11-21	\N	\N	2095	A	Capital Federal	4	2019	6	2023	C	AR
2090	NOVELLA             	\N	                    	Fabio               	\N	DNI 	37203991	20	37203991	5	M	1992-12-04	\N	\N	2090	A	Capital Federal	4	2019	8	2023	C	AR
1159	MAQUIEIRA           	\N	                    	Ana Ines            	\N	DNI 	17316154	27	17316154	4	F	1965-03-27	\N	\N	1159	A	CAPITAL FEDERAL	6	2014	5	2019	C	AR
779	MARCHESSI           	\N	                    	Martin              	\N	DNI 	33300281	20	33300281	8	M	1987-10-17	\N	\N	779	A	CAPITAL FEDERAL	5	2013	5	2019	C	AR
1063	MARTIN              	\N	                    	Ana Cecilia         	\N	DNI 	24595540	27	24595540	0	F	1975-04-30	\N	\N	1063	A	BUENOS AIRES	4	2014	5	2019	B	AR
1124	MIRAMONTES          	ÁLVAREZ             	                    	Jorge Osvaldo       	\N	DNI 	14151667	20	14151667	2	M	1960-12-14	\N	\N	1124	A	Ciudad Autónoma de Buenos Aires	4	2014	5	2019	C	AR
1110	BUEN ABAD DOMINGUEZ 	\N	                    	Fernando            	\N	DNI 	93234224	20	93234224	4	M	1956-12-16	\N	\N	1110	A	MEXICO DF	4	2014	5	2019	\N	MX
1054	LUPO                	\N	                    	Rodolfo             	\N	DNI 	16680681	20	16680681	0	M	1964-02-28	\N	\N	1054	A	AVELLANEDA	4	2014	5	2019	B	AR
1066	LUTZ                	\N	                    	María Ayelén        	\N	DNI 	29198893	27	29198893	3	F	1981-12-06	\N	\N	1066	A	Quilmes	4	2014	5	2019	B	AR
2113	VILLALBA            	\N	                    	Gustavo Ramon       	\N	DNI 	25253310	23	25253310	9	M	1976-04-18	\N	\N	2113	A	AVELLANEDA	6	2019	3	2020	B	AR
2112	BOSSIO              	\N	                    	Florencia Belen     	\N	DNI 	33434242	27	33434242	0	F	1988-03-16	\N	\N	2112	A	CAPITAL FEDERAL	6	2019	6	2019	C	AR
2118	RACHED              	\N	                    	Demian Miguel       	\N	DNI 	35275166	23	35275166	9	M	1990-08-04	\N	\N	2118	A	CABA	8	2019	8	2019	C	AR
2114	SANCHEZ             	\N	                    	Gabriela Luciana    	\N	DNI 	23992388	27	23992388	2	F	1974-05-25	\N	\N	2114	A	CABA	7	2019	7	2019	C	AR
1471	VERGARA             	\N	                    	Diego Martin        	\N	DNI 	24905197	20	24905197	8	M	1975-10-10	\N	\N	1471	A	CAPITAL FEDERAL	6	2015	12	2019	C	AR
2123	PAREDES             	\N	                    	Mario Sebastian     	\N	DNI 	27204481	20	27204481	4	M	1979-04-14	\N	\N	2123	A	Capital Federal	9	2019	9	2019	C	AR
1974	ABRAMO              	\N	                    	Diana Clara         	\N	DNI 	17899988	27	17899988	0	F	1966-06-29	\N	\N	1974	A	BUENOS AIRES	4	2018	7	2021	B	AR
322	GONZALEZ FRANCESE   	\N	                    	Rocío               	\N	DNI 	31250282	27	31250282	3	F	1984-09-30	\N	\N	322	A	Ciudad Autónoma de Buenos Aires	2	2012	7	2021	C	AR
2121	ROSENBERG           	\N	                    	Laura Alejandra     	\N	DNI 	31662277	27	31662277	7	F	1985-06-20	\N	\N	2121	A	Capital Federal	9	2019	9	2019	C	AR
2122	NAVASCUES           	\N	                    	Federico Pablo      	\N	DNI 	28067754	20	28067754	0	M	1980-05-24	\N	\N	2122	A	Lomas de Zamora	9	2019	9	2019	B	AR
2125	RUBAJA              	\N	                    	Nieve               	\N	DNI 	23979249	27	23979249	4	F	1974-07-03	\N	\N	2125	A	LA PLATA	9	2019	9	2019	B	AR
2132	MANZANELLI          	\N	                    	Pablo Daniel        	\N	DNI 	28863483	20	28863483	2	M	1981-05-25	\N	\N	2132	A	CABA	10	2019	10	2019	C	AR
2128	PASTRANA            	\N	                    	Federico            	\N	DNI 	29039232	20	29039232	3	M	1981-07-31	\N	\N	2128	A	CABA	9	2019	9	2019	C	AR
2106	YACOY               	\N	                    	Claudio Gustavo     	\N	DNI 	14456541	20	14456541	0	M	1961-02-02	\N	\N	2106	A	CAPITAL FEDERAL	5	2019	9	2021	C	AR
2117	GOMEZ               	MORAS               	                    	Ayelen Suyay        	\N	DNI 	39666362	27	39666362	2	F	1996-05-20	\N	\N	2117	A	\N	7	2019	1	2022	\N	\N
2107	ROSENDE             	\N	                    	Silvana Gabriela    	\N	DNI 	26465382	27	26465382	2	F	1978-04-08	\N	\N	2107	A	LANUS	5	2019	2	2022	B	AR
2130	CRAMER              	\N	                    	Karin               	\N	DNI 	34499704	27	34499704	2	F	1989-03-24	\N	\N	2130	A	CABA	10	2019	3	2022	C	AR
2100	D´ANDREA            	\N	                    	Marcelo Jose        	\N	DNI 	23424923	20	23424923	2	M	1973-10-05	\N	\N	2100	A	Villa Ballester	4	2019	3	2022	B	AR
753	GONZALEZ            	\N	                    	Lelia Nidia         	\N	DNI 	10326185	27	10326185	1	F	1952-10-25	\N	\N	753	J	Avellaneda	4	2013	5	2022	B	AR
1117	VENUTO              	TUBARDO             	FOTI                	Marisa Adriana      	\N	DNI 	12274912	27	12274912	1	F	1958-08-14	\N	\N	1117	J	Lomas de Zamora	4	2014	5	2022	B	AR
1271	GELSI               	BUSTOS              	                    	Gino                	\N	DNI 	25485108	20	25485108	7	M	1976-08-18	\N	\N	1271	A	San Antonio de Padua	10	2014	11	2019	B	AR
1520	GATTO               	\N	                    	Gaston Ariel        	\N	DNI 	26060563	20	26060563	2	M	1977-06-18	\N	\N	1520	A	MORON	7	2015	12	2019	B	AR
1456	JENSEN              	\N	                    	Maria Florencia     	\N	DNI 	27365145	23	27365145	4	F	1979-05-08	\N	\N	1456	A	S.MIGUEL DE TUCUMAN	5	2015	12	2019	T	AR
2148	AGUILAR             	\N	                    	Sofia Anahi         	\N	DNI 	32678781	27	32678781	2	F	1986-12-23	\N	\N	2148	A	CABA	12	2019	12	2019	C	AR
2097	SOTO                	\N	                    	Mariana Paula       	\N	DNI 	32250527	27	32250527	8	F	1986-04-08	\N	\N	2097	A	MORON	4	2019	1	2020	B	AR
559	LECUONA             	\N	GARCÍA TREGLIA      	María Inés          	\N	DNI 	12673480	27	12673480	3	F	1958-11-01	\N	\N	559	P	Banfield	8	2012	1	2020	B	AR
2140	LEZCANO             	\N	                    	Daniel Alejandro    	\N	DNI 	36822899	20	36822899	1	M	1993-02-15	\N	\N	2140	A	MERLO	11	2019	12	2020	B	AR
2131	GREGORIC            	\N	                    	Alejandro           	\N	DNI 	31641690	20	31641690	0	M	1985-04-19	\N	\N	2131	P	CABA	10	2019	2	2023	C	AR
2119	GRANATO             	\N	                    	Lucas Damian        	\N	DNI 	33984224	20	33984224	9	M	1988-08-18	\N	\N	2119	P	CABA	8	2019	2	2023	C	AR
2120	RAGAS               	\N	                    	Deborah Belen       	\N	DNI 	38838641	27	38838641	5	F	1995-04-16	\N	\N	2120	A	Quilmes	8	2019	4	2023	B	AR
2105	GALVANI             	\N	                    	Alejandra Mariela   	\N	DNI 	26963375	27	26963375	7	F	1978-12-29	\N	\N	2105	A	CARLOS CASARES	5	2019	6	2023	B	AR
2104	BESIO MORENO        	\N	                    	Julian              	\N	DNI 	34982728	20	34982728	0	M	1989-12-14	\N	\N	2104	A	CIUDAD DE BUENOS AIRES	5	2019	6	2023	C	AR
2127	ROSSI               	\N	                    	Maria Magdalena     	\N	DNI 	29318938	27	29318938	8	F	1982-02-10	\N	\N	2127	A	CABA	9	2019	8	2023	C	AR
2111	RIOS                	\N	                    	Nahuel              	\N	DNI 	36848005	20	36848005	4	M	1992-03-14	\N	\N	2111	A	CAPITAL FEDERAL	5	2019	8	2023	C	AR
2102	GARRITANO           	\N	                    	Carla Guillermina   	\N	DNI 	20012536	27	20012536	9	F	1968-03-11	\N	\N	2102	A	La Plata	4	2019	8	2023	B	AR
2110	DI TIRRO            	\N	                    	Franco Alejandro    	\N	DNI 	35266445	20	35266445	7	M	1990-07-08	\N	\N	2110	A	CABA	5	2019	8	2023	C	AR
2139	FILGUEIRA           	\N	                    	Santiago Alejandro  	\N	DNI 	34476094	20	34476094	3	M	1989-04-17	\N	\N	2139	A	CABA	11	2019	9	2020	B	AR
2116	GARCIA MAYER        	\N	                    	Simon Pedro         	\N	DNI 	25916682	23	25916682	9	M	1977-04-28	\N	\N	2116	A	\N	7	2019	12	2020	\N	\N
2150	ROMEO AZNAR         	\N	                    	Barbara Maria       	\N	DNI 	24873387	27	24873387	5	F	1978-12-06	\N	\N	2150	A	CABA	2	2020	2	2020	C	AR
26	AMABLE              	BALIERO             	                    	Marcelo Jorge       	\N	DNI 	17836858	20	17836858	4	M	1966-12-19	\N	\N	26	A	Mercedes	6	2011	2	2020	B	AR
2156	SIMONE              	\N	                    	Vanina Ines         	\N	DNI 	23506785	23	23506785	4	F	1974-01-07	\N	\N	2156	A	LOMAS DE ZAMORA	2	2020	2	2020	B	AR
1982	PELUSO              	\N	                    	Natalia Soledad     	\N	DNI 	29482461	27	29482461	3	F	1982-06-05	\N	\N	1982	A	Capital Federal	4	2018	2	2020	C	AR
2129	VENTURINI           	\N	                    	Mariano             	\N	DNI 	28170257	20	28170257	3	M	1980-05-01	\N	\N	2129	A	QUILMES	10	2019	6	2021	B	AR
2142	PORTILLO FERNANDEZ  	FERNANDEZ           	                    	Tamara Mariana      	\N	DNI 	38583230	27	38583230	9	F	1994-10-18	\N	\N	2142	A	\N	11	2019	5	2021	\N	\N
2143	MONTES              	Lopez               	                    	Vanina Gisela       	\N	DNI 	24749443	27	24749443	5	F	1975-09-01	\N	\N	2143	A	\N	11	2019	6	2021	\N	\N
339	BELFIORI            	SCHILIRO            	MAIER               	Lorena Veronica     	\N	DNI 	25664124	27	25664124	6	F	1976-12-11	\N	\N	339	A	Lanús	2	2012	7	2021	B	AR
416	CASABALLE           	MATEOS              	                    	Matias Federico     	\N	DNI 	25348725	23	25348725	9	M	1976-05-13	\N	\N	416	A	Haedo	3	2012	7	2021	B	AR
2146	PEREZ PEREYRA       	Prereyra            	                    	Ricardo Favio       	\N	DNI 	21689353	20	21689353	1	M	1970-06-12	\N	\N	2146	A	\N	12	2019	7	2021	\N	\N
1381	REQUELME            	\N	                    	Nestor Antonio      	\N	DNI 	22039283	20	22039283	0	M	1970-10-19	\N	\N	1381	A	Río IV	5	2015	8	2021	X	AR
2153	IRIBARNEGARAY       	\N	                    	Natalia             	\N	DNI 	29055095	27	29055095	0	F	1981-09-11	\N	\N	2153	A	LOMAS DE ZAMORA	2	2020	2	2020	B	AR
2151	PANAIA              	\N	                    	Marta Elba          	\N	DNI 	5202995	27	5202995	9	F	1945-10-14	\N	\N	2151	J	Capital Federal	2	2020	2	2020	C	AR
1468	LUCARDI             	\N	                    	Anabella Celeste    	\N	DNI 	31423453	27	31423453	2	F	1985-01-10	\N	\N	1468	A	CAPITAL FEDERAL	6	2015	2	2020	C	AR
419	BALDACCHINO         	RAMÍREZ             	                    	Pablo Gaston        	\N	DNI 	25226342	20	25226342	0	M	1976-05-14	\N	\N	419	A	Ciudad Autónoma de Buenos Aires	3	2012	2	2020	C	AR
871	BEJARANO            	\N	                    	Gabriel Roman       	\N	DNI 	12982179	20	12982179	6	M	1958-12-13	\N	\N	871	A	CAPITAL FEDERAL	9	2013	2	2020	\N	\N
453	BUFFONI             	ÁLVAREZ             	POMPÉ               	Patricia Elizabeth  	\N	DNI 	17479850	27	17479850	3	F	1965-12-25	\N	\N	453	A	Gral Viamonte	4	2012	2	2020	B	AR
1845	TEDIN URIBURU       	\N	                    	Virgilio Ignacio    	\N	DNI 	7704654	20	7704654	3	M	1949-08-01	\N	\N	1845	P	Capital Federal	3	2017	2	2020	C	AR
1798	VAZQUEZ             	\N	                    	Fernando Alberto    	\N	DNI 	33295970	27	33295970	6	M	1987-11-09	\N	\N	1798	A	Lomas de Zamora	9	2016	9	2021	B	AR
2147	LEDESMA             	LEDESMA             	                    	Maria Belen         	\N	DNI 	37023911	27	37023911	3	F	1993-02-20	\N	\N	2147	A	\N	12	2019	12	2021	\N	\N
192	FERNANDEZ           	\N	                    	Silvia Beatriz      	\N	DNI 	22230466	27	22230466	6	F	1971-05-27	\N	\N	192	A	San Martín	9	2011	3	2022	B	AR
726	FIORDA              	\N	                    	Luciana Carla       	\N	DNI 	28421773	27	28421773	5	F	1980-09-26	\N	\N	726	A	CAPITAL FEDERAL	4	2013	3	2022	C	AR
50	CONLES              	COMESAÑA            	                    	Liliana Eva         	\N	DNI 	6531499	27	6531499	7	F	1951-04-24	\N	\N	50	A	La Plata	6	2011	5	2022	B	AR
2136	TROYON              	\N	                    	Daniela             	\N	DNI 	26841340	27	26841340	0	F	1978-09-30	\N	\N	2136	A	BUENOS AIRES	10	2019	5	2022	B	AR
1854	ESTREMERA           	\N	                    	Fabio Emir          	\N	DNI 	22325451	23	22325451	9	M	1971-09-08	\N	\N	1854	A	BAHIA BLANCA	4	2017	2	2020	B	AR
2155	IAVORSKI LOSADA     	\N	                    	Ivana               	\N	DNI 	30494297	27	30494297	0	F	1983-08-23	\N	\N	2155	A	CAPITAL FEDERAL	2	2020	2	2020	C	AR
2154	CHAUQUE             	\N	                    	Raul Eduardo        	\N	DNI 	21542804	20	21542804	5	M	1970-06-27	\N	\N	2154	A	SALTA	2	2020	2	2020	A	AR
410	MARESCA             	ZECCA               	                    	Gabriel Gustavo     	\N	DNI 	27120412	20	27120412	5	M	1979-04-15	\N	\N	410	A	Ciudad Autónoma de Buenos Aires	3	2012	2	2020	C	AR
392	LOPEZ               	ZYSZILA             	                    	Gabriela Viviana    	\N	DNI 	22006375	27	22006375	0	F	1971-02-27	\N	\N	392	A	Ciudad Autónoma de Buenos Aires	3	2012	2	2020	C	AR
2084	PAGLIUCA            	\N	                    	Germinal Francisco  	\N	DNI 	32823386	20	32823386	0	M	1987-04-06	\N	\N	2084	A	QUILMES	12	2018	12	2020	B	AR
1614	CARRANZA            	\N	                    	Martin              	\N	DNI 	23787230	20	23787230	5	M	1973-12-06	\N	\N	1614	A	Quilmes	10	2015	2	2020	B	AR
2115	BELECCO             	\N	                    	Federico Fabian     	\N	DNI 	37823233	20	37823233	4	M	1993-07-13	\N	\N	2115	P	\N	7	2019	11	2022	\N	\N
366	D´ANGIOLO           	\N	                    	Federico Gabriel    	\N	DNI 	30702307	20	30702307	6	M	1983-12-20	\N	\N	366	A	Ciudad Autónoma de Buenos Aires	2	2012	3	2020	C	AR
1143	SFEIR               	\N	                    	José Emanuel        	\N	DNI 	13754713	23	13754713	9	M	1959-09-22	\N	\N	1143	A	CAPITAL FEDERAL	5	2014	3	2020	C	AR
1357	MANGO               	\N	                    	María Luz           	\N	DNI 	28635529	27	28635529	9	F	1981-01-18	\N	\N	1357	A	San Miguel	4	2015	12	2022	B	AR
1817	BOCAI               	\N	                    	Nadia Irina         	\N	DNI 	34205134	27	34205134	6	F	1988-12-21	\N	\N	1817	P	Temperley	10	2016	12	2022	B	AR
2138	SQUILLACIOTI        	\N	                    	Lucia               	\N	DNI 	30958706	27	30958706	0	F	1984-07-10	\N	\N	2138	P	LA PLATA	10	2019	2	2023	B	AR
667	FOLINO              	\N	                    	José Antonio        	\N	DNI 	18235517	20	18235517	9	M	1967-04-27	\N	\N	667	A	QUILMES	2	2013	4	2023	B	AR
2134	DELORENZI           	\N	                    	Martin Marcelo      	\N	DNI 	22083131	20	22083131	1	M	1971-01-22	\N	\N	2134	A	SAN ISIDRO	10	2019	6	2023	B	AR
116	RENZI               	\N	                    	Gladys Miriam       	\N	DNI 	14070484	27	14070484	4	F	1960-06-27	\N	\N	116	J	Avellaneda	7	2011	7	2023	B	AR
1716	MAFFULLO            	\N	                    	Eliana Rocio        	\N	DNI 	32849753	27	32849753	6	F	1987-02-13	\N	\N	1716	A	Quilmes	4	2016	8	2023	B	AR
268	BASARA              	GARRIZ              	                    	Pedro Alejandro     	\N	DNI 	24313363	20	24313363	8	M	1975-01-01	\N	\N	268	A	Ciudad Autónoma de Buenos Aires	12	2011	12	2020	C	AR
2149	GOVEDNIK            	\N	                    	Axel Ariel          	\N	DNI 	16781665	20	16781665	8	M	1964-04-16	\N	\N	2149	A	CORDOBA	1	2020	12	2020	X	AR
1696	GONZALEZ PRIETO     	\N	                    	Juan Ignacio        	\N	DNI 	26255225	20	26255225	0	M	1978-02-11	\N	\N	1696	A	San Carlos de Bolivar	3	2016	3	2020	B	AR
2046	DE LA TORRE         	\N	                    	Natalia             	\N	DNI 	25640786	27	25640786	3	F	1976-11-07	\N	\N	2046	A	Capital Federal	8	2018	3	2020	C	AR
2001	NOTRICA             	\N	                    	Federico Pablo      	\N	DNI 	31757107	20	31757107	1	M	1984-08-20	\N	\N	2001	A	Bernal	5	2018	3	2020	B	AR
1939	PUCCIARELLO         	\N	                    	Mariana Beatriz     	\N	DNI 	16497465	27	16497465	6	F	1963-10-08	\N	\N	1939	A	CAPITAL FEDERAL	11	2017	3	2020	C	AR
1328	MALECKY             	\N	                    	Veronica Beatriz    	\N	DNI 	26206555	27	26206555	9	F	1970-09-07	\N	\N	1328	A	Florencio Varela	4	2015	3	2020	B	AR
455	ALBERTI             	BARRAGAN            	BEITELMAJER         	Paola Silvana       	\N	DNI 	25152207	27	25152207	9	F	1976-03-22	\N	\N	455	A	Lomas de Zamora	4	2012	6	2021	B	AR
17	PAGANI              	CAJARAVILLE         	                    	Juan Manuel         	\N	DNI 	26497248	20	26497248	6	M	1978-03-05	A 	+	17	A	AVELLANEDA	3	2011	7	2021	B	AR
1378	CANTELMI            	\N	                    	Gustavo Fernando    	\N	DNI 	12094053	20	12094053	9	M	1958-03-22	\N	\N	1378	A	CAPITAL FEDERAL	5	2015	7	2021	C	AR
2160	PERCUDANI           	\N	                    	Osmar Roberto       	\N	DNI 	16473490	20	16473490	1	M	1963-04-24	\N	\N	2160	A	Capital Federal	3	2020	3	2020	C	AR
2183	LOSADA              	\N	                    	Leandro Hernan      	\N	DNI 	26473475	20	26473475	5	M	1978-03-07	\N	\N	2183	A	CABA	8	2020	8	2020	\N	\N
2158	GALVANO LEGUIZAMON  	\N	                    	Rosendo Marcelo     	\N	DNI 	27901831	20	27901831	2	M	1980-05-09	\N	\N	2158	A	\N	3	2020	10	2021	\N	\N
900	CUADERNO            	\N	                    	Fernando Aroldo     	\N	DNI 	22829965	20	22829965	1	M	1972-11-06	\N	\N	900	A	BUENOS AIRES	10	2013	2	2022	B	AR
890	NIEVES              	\N	                    	Laura               	\N	DNI 	24448594	23	24448594	4	F	1975-03-27	\N	\N	890	A	\N	9	2013	12	2021	\N	AR
2173	CHENA               	\N	                    	Pablo Ignacio       	\N	DNI 	26371007	20	26371007	0	M	1977-11-13	\N	\N	2173	A	SAN RAFAEL	4	2020	3	2022	M	AR
435	CROVETTO            	DOMÍNGUEZ           	                    	Juan Carlos         	\N	DNI 	10827974	20	10827974	6	M	1954-01-12	\N	\N	435	A	Avellaneda	3	2012	3	2022	B	AR
830	FERNANDEZ           	\N	                    	Noelia Norma        	\N	DNI 	25393090	27	25393090	5	F	1976-07-19	\N	\N	830	A	CAPITAL FEDERAL	7	2013	3	2022	C	AR
75	GJUD                	\N	                    	Claudio Emilio      	\N	DNI 	12988381	20	12988381	3	M	1959-05-22	\N	\N	75	A	Capital Federal	6	2011	3	2022	C	AR
1466	GUTIERREZ           	\N	                    	Oscar Jorge         	\N	DNI 	35943721	20	35943721	9	M	1991-08-01	\N	\N	1466	P	Avellaneda	5	2015	4	2022	B	AR
2177	VON BILDERLING      	\N	                    	Catalina            	\N	DNI 	28959172	27	28959172	4	F	1981-10-18	\N	\N	2177	A	Concepcion del Uruguay	6	2020	6	2020	E	AR
984	DECOTTO             	\N	                    	Lucía               	\N	DNI 	28059221	27	28059221	3	F	1980-06-11	\N	\N	984	A	GOYA	1	2014	9	2020	W	AR
2184	OPORTO              	\N	                    	Maria Guadalupe     	\N	DNI 	30494873	27	30494873	1	F	1983-09-14	\N	\N	2184	A	CABA	9	2020	9	2020	C	AR
2185	MORICZ              	\N	                    	Mariana             	\N	DNI 	29150277	27	29150277	1	F	1981-07-07	\N	\N	2185	A	CABA	9	2020	9	2020	C	AR
2188	BEITELMAJER         	\N	                    	Patricio Victor     	\N	DNI 	24913934	20	24913934	4	M	1975-12-06	\N	\N	2188	A	Lomas de Zamora	9	2020	9	2020	B	AR
506	ALVAREZ             	DE BERNARDO         	BAUMANN             	Laura Beatriz       	\N	DNI 	20383355	27	20383355	0	F	1968-12-28	\N	\N	506	A	Valentín Alsina	6	2012	12	2020	B	AR
337	PRIETO              	BAREILLE            	                    	Nicolas Patricio    	\N	DNI 	33503956	20	33503956	5	M	1987-12-15	\N	\N	337	A	Ciudad Autónoma de Buenos Aires	2	2012	12	2020	C	AR
2174	REGIRETTI           	\N	                    	Jorge Fabian        	\N	DNI 	20993195	20	20993195	9	M	1969-07-30	\N	\N	2174	J	CABA	4	2020	9	2022	C	AR
2178	TALERMAN            	\N	                    	Jose Augusto        	\N	DNI 	25675828	20	25675828	9	M	1976-12-05	\N	\N	2178	A	C.A.B.A.	6	2020	8	2022	B	AR
2161	BLANCO              	\N	                    	Patricia Esther     	\N	DNI 	13654461	27	13654461	1	F	1959-06-22	\N	\N	2161	P	CABA	3	2020	10	2022	C	AR
2175	BARBOZA             	\N	                    	Alicia Giselle      	\N	DNI 	27949105	27	27949105	5	F	1980-01-21	\N	\N	2175	A	AVELLANEDA	4	2020	10	2022	B	AR
487	BREARD              	RAMÍREZ             	                    	Eugenio Cesar       	\N	DNI 	33024668	20	33024668	6	M	1987-05-29	\N	\N	487	A	Avellaneda	5	2012	2	2021	B	AR
523	ESTIGARRIBIA        	HERRERA             	                    	Juan José           	\N	DNI 	11129907	20	11129907	3	M	1954-04-14	\N	\N	523	P	Bernal	6	2012	2	2021	B	AR
549	PARAFITA            	ARIZA               	                    	Leonardo Eduardo    	\N	DNI 	12144923	20	12144923	5	M	1956-04-03	\N	\N	549	P	Avellaneda	8	2012	2	2021	B	AR
2170	DEL CARPIO AYALA    	\N	                    	Jocelyn Manuela     	\N	DNI 	95590441	27	95590441	4	F	1997-05-15	\N	\N	2170	P	AREQUIPA	4	2020	2	2023	\N	PE
2165	CORNACCHIA          	\N	                    	Maria Clara         	\N	DNI 	34712362	27	34712362	0	F	1989-09-05	\N	\N	2165	P	LANUS	3	2020	2	2023	B	AR
2159	PIEDRA              	\N	                    	Rodolfo Horacio     	\N	DNI 	16402854	20	16402854	3	M	1962-09-01	\N	\N	2159	A	Capital Federal	3	2020	3	2023	C	AR
2162	PALLERO             	\N	                    	Fabio Vicente       	\N	DNI 	21563065	20	21563065	0	M	1970-04-06	\N	\N	2162	A	Santa Fe	3	2020	3	2023	S	AR
2169	ESPOSITO            	\N	                    	Melina Florencia    	\N	DNI 	33783261	27	33783261	5	F	1988-06-24	\N	\N	2169	A	BERNAL	4	2020	6	2023	B	AR
2157	GARBARINO PETRONE   	\N	                    	Gianluca            	\N	DNI 	38795234	23	38795234	9	M	1995-02-03	\N	\N	2157	A	\N	2	2020	5	2023	\N	\N
2187	OTERO               	\N	                    	Martin Ariel        	\N	DNI 	29799540	20	29799540	6	M	1982-09-22	\N	\N	2187	A	CABA	9	2020	6	2023	C	AR
2167	CHURBA              	\N	                    	Nicole Denise       	\N	DNI 	38176398	27	38176398	1	F	1994-05-17	\N	\N	2167	A	CABA	3	2020	8	2023	C	AR
2163	COPPO               	\N	                    	Gabriela Fabiana    	\N	DNI 	16559597	27	16559597	7	F	1963-01-03	\N	\N	2163	A	Capital Federal	3	2020	8	2023	C	AR
2193	BENITEZ             	\N	                    	Nahuel Matias       	\N	DNI 	42942015	20	42942015	7	M	2001-07-23	\N	\N	2193	A	BUENOS AIRES	2	2021	2	2021	B	AR
1828	FIZ                 	\N	                    	Nicolas Federico    	\N	DNI 	37432075	20	37432075	1	M	1993-04-11	\N	\N	1828	A	CAPITAL FEDERAL	12	2016	2	2021	C	AR
2182	BERGUIER            	\N	                    	Nahuel              	\N	DNI 	31376566	20	31376566	1	M	1985-03-05	\N	\N	2182	A	CABA	7	2020	6	2021	C	AR
2191	GUILLAN             	\N	                    	Daniel Emilio       	\N	DNI 	29946383	20	29946383	5	M	1983-03-18	\N	\N	2191	A	ARGENTINA	11	2020	7	2021	B	AR
2166	RODRIGUEZ           	\N	                    	Nelson Emiliano     	\N	DNI 	36847032	24	36847032	1	M	1992-04-30	\N	\N	2166	A	CABA	3	2020	7	2021	C	AR
2216	SPANO               	\N	                    	Sebastian Nicolas   	\N	DNI 	33300272	20	33300272	9	M	1987-10-12	\N	\N	2216	A	BUENOS AIRES	3	2021	4	2021	B	AR
1019	LOPEZ               	\N	                    	Rafael  Armando     	\N	DNI 	30046239	20	30046239	2	M	1973-03-31	\N	\N	1019	A	ADROGUE	3	2014	8	2021	B	AR
2198	GAONA               	\N	                    	Victor Javier       	\N	DNI 	28196272	20	28196272	9	M	1981-02-02	\N	\N	2198	A	Entre Ríos	2	2021	2	2021	E	AR
2212	PARRA               	\N	                    	Alejandra Mabel     	\N	DNI 	18132101	27	18132101	1	F	1967-01-12	\N	\N	2212	A	CABA	3	2021	3	2021	C	AR
2194	LOZZIA              	\N	                    	Andrea Vanesa       	\N	DNI 	25772775	27	25772775	6	F	1977-05-03	\N	\N	2194	A	C.A.B.A.	2	2021	8	2021	C	AR
2007	CURCI               	\N	                    	Zoe Aymara          	\N	DNI 	41709297	27	41709297	3	F	1999-02-09	\N	\N	2007	A	Ciudad de Buenos Aires	6	2018	2	2021	C	AR
2176	VENTURA             	\N	                    	Leandro Ariel       	\N	DNI 	27822965	20	27822965	4	M	1980-01-23	\N	\N	2176	A	LANUS	4	2020	9	2021	B	AR
2208	ZOIA                	\N	                    	Gustavo Alfredo     	\N	DNI 	23772036	23	23772036	9	M	1974-04-19	\N	\N	2208	A	CABA	3	2021	9	2021	C	AR
2221	BALSA               	\N	                    	Mariana Cecilia     	\N	DNI 	32575049	27	32575049	4	F	1986-08-30	\N	\N	2221	A	CABA	3	2021	2	2022	\N	\N
1685	BERNASCONI          	\N	                    	Raul Carlos         	\N	DNI 	12012575	20	12012575	4	M	1956-02-13	\N	\N	1685	A	CAPITAL FEDERAL	1	2016	3	2022	C	AR
426	CHACON              	PÉREZ               	                    	Edgardo Norberto    	\N	DNI 	7620639	20	7620639	3	M	1949-02-14	\N	\N	426	J	La Plata	3	2012	3	2022	B	AR
2189	CLERI               	\N	                    	Lisandro Pablo      	\N	DNI 	25822843	20	25822843	0	M	1981-02-26	\N	\N	2189	A	GUATEMALA	9	2020	3	2022	\N	GT
2168	CARIVENC            	\N	                    	Nicolas Alejandro   	\N	DNI 	29557406	20	29557406	3	M	1982-07-03	\N	\N	2168	A	CABA	4	2020	3	2022	C	AR
2164	BUSTOS              	\N	                    	Lucia Adriana       	\N	DNI 	16996141	27	16996141	2	F	1964-02-24	\N	\N	2164	P	CORDOBA	3	2020	4	2022	X	AR
273	MOTTOLESE           	SCHIAVO             	                    	Elba Alicia         	\N	DNI 	10952770	27	10952770	5	F	1953-08-25	\N	\N	273	J	Ciudad Autónoma de Buenos Aires	12	2011	5	2022	C	AR
894	D'AMATO             	\N	                    	Macarena Belén      	\N	DNI 	38369266	27	38369266	6	F	1993-09-16	\N	\N	894	A	AVELLANEDA	10	2013	2	2021	B	AR
709	ARENAS BELLA        	\N	                    	Javier Alberto      	\N	DNI 	22078710	23	22078710	9	M	1971-06-22	\N	\N	709	P	VILLA MARIA	3	2013	3	2021	X	AR
2204	ACOSTA              	\N	                    	Merlina Soledad     	\N	DNI 	30805450	27	30805450	6	F	1984-06-22	\N	\N	2204	A	Lobos	3	2021	3	2021	B	AR
2205	ALARCON             	\N	                    	Marina Griselda     	\N	DNI 	30579856	27	30579856	3	F	1984-01-01	\N	\N	2205	A	Presidencia R. Saenz Peña	3	2021	3	2021	H	AR
2206	HOFFMANN            	\N	                    	Maria Monica        	\N	DNI 	12584381	27	12584381	1	F	1958-11-24	\N	\N	2206	A	MENDOZA	3	2021	3	2021	M	AR
2213	SANTACATTERINA      	\N	                    	Martin Pablo        	\N	DNI 	31309858	20	31309858	4	M	1984-11-20	\N	\N	2213	A	BERNAL	3	2021	3	2021	B	AR
513	SJOERDSTRA          	\N	PIPITÓ              	Fabiana Silvia      	\N	DNI 	18487125	23	18487125	4	F	1967-11-14	\N	\N	513	A	Ciudad Autónoma de Buenos Aires	6	2012	3	2021	C	AR
2215	SANCHEZ             	\N	                    	Anabel Danila       	\N	DNI 	31601387	27	31601387	8	F	1985-05-15	\N	\N	2215	A	AVELLANEDA	3	2021	3	2021	B	AR
1455	IGLESIAS            	\N	                    	Griselda Andrea     	\N	DNI 	30332537	27	30332537	4	F	1983-05-06	\N	\N	1455	A	CAPITAL FEDERAL	5	2015	3	2021	C	AR
2217	GONZALEZ            	\N	                    	Cecilia Veronica    	\N	DNI 	24334915	27	24334915	5	F	1974-12-03	\N	\N	2217	A	CABA	3	2021	4	2021	C	AR
434	COLOMBO             	\N	                    	Silvio              	\N	DNI 	23805918	20	23805918	7	M	1975-03-05	\N	\N	434	A	Ciudad Autónoma de Buenos Aires	3	2012	7	2022	C	AR
2181	CARBONELL           	\N	                    	Griselda Isabel     	\N	DNI 	13199442	27	13199442	2	F	1959-05-17	\N	\N	2181	J	CABA	7	2020	9	2022	C	AR
2197	PIOMBO              	\N	                    	Rayen               	\N	DNI 	33737807	27	33737807	8	F	1988-04-06	\N	\N	2197	A	Capital Federal	2	2021	8	2022	C	AR
2192	DEMESTRI            	\N	                    	Gaston Alberto      	\N	DNI 	30557226	20	30557226	9	M	1983-09-14	\N	\N	2192	A	BUENOS AIRES	2	2021	10	2022	B	AR
1574	PIQUE               	\N	                    	Alejandro           	\N	DNI 	31963964	20	31963964	1	M	1985-12-10	\N	\N	1574	A	CAPITAL FEDERAL	9	2015	3	2021	C	AR
2222	SANTIN MOLINA       	\N	                    	Luciana Paula       	\N	DNI 	37596445	27	37596445	2	F	1993-05-23	\N	\N	2222	A	CABA	3	2021	3	2021	C	AR
2214	JULIAN              	\N	                    	Daniel Ezequiel     	\N	DNI 	38929596	20	38929596	6	M	1995-02-27	\N	\N	2214	P	BERNAL	3	2021	2	2023	B	AR
2223	RIOS                	\N	                    	Javier Ernesto      	\N	DNI 	23923850	20	23923850	6	M	1974-08-24	\N	\N	2223	A	AVELLANEDA	3	2021	8	2023	B	AR
2172	DILISA              	\N	                    	Fernando Gabriel    	\N	DNI 	26970598	20	26970598	2	M	1979-02-06	\N	\N	2172	A	ALBERTI	4	2020	4	2023	B	AR
2203	OCHOA               	\N	                    	Mario Daniel        	\N	DNI 	31343638	24	31343638	8	M	1984-12-02	\N	\N	2203	A	CABA	3	2021	5	2023	C	AR
2180	CUNTO               	\N	                    	Mauro               	\N	DNI 	36290195	20	36290195	3	M	1991-08-27	\N	\N	2180	A	\N	6	2020	4	2023	\N	\N
2218	ANDRADA             	\N	                    	Cesar Ruben         	\N	DNI 	16529112	20	16529112	4	M	1963-07-26	\N	\N	2218	A	CABA	3	2021	8	2023	C	AR
2224	RAPPANELLO          	\N	                    	Maria Luciana       	\N	DNI 	28746204	27	28746204	8	F	1981-02-20	\N	\N	2224	A	AVELLANEDA	3	2021	8	2023	B	AR
2220	KEMPF               	\N	                    	Rodolfo Antonio     	\N	DNI 	22054123	20	22054123	2	M	1970-12-24	\N	\N	2220	A	HAEDO	3	2021	8	2023	C	AR
2201	MARTINEZ            	\N	                    	Florencia Anahi     	\N	DNI 	36286920	27	36286920	5	F	1992-01-29	\N	\N	2201	A	Adrogue	3	2021	4	2021	B	AR
2228	RIOS                	\N	                    	Silvana Marisa S    	\N	DNI 	35784338	27	35784338	9	F	1991-01-29	\N	\N	2228	A	Avellaneda	4	2021	4	2021	B	AR
1722	CAPORALETTI         	\N	                    	Guillermo Federico  	\N	DNI 	24821909	20	24821909	3	M	1975-08-29	\N	\N	1722	A	Capital Federal	4	2016	5	2021	C	AR
2077	ROSSI               	\N	                    	Maria Delfina       	\N	DNI 	33868892	27	33868892	5	F	1988-09-04	\N	\N	2077	A	Rosario	10	2018	5	2021	S	AR
370	BATALLAN            	PEDULLA             	                    	Claudia Alejandra   	\N	DNI 	17333927	27	17333927	0	F	1964-08-07	\N	\N	370	A	Wilde	2	2012	4	2021	B	AR
301	BURMAN              	DI DONATO           	                    	Anabella            	\N	DNI 	27627819	27	27627819	9	F	1979-08-29	\N	\N	301	A	Ciudad Autónoma de Buenos Aires	1	2012	6	2021	C	AR
2236	AGOSTINELLI         	\N	                    	Guido Miguel        	\N	DNI 	31423246	20	31423246	2	M	1984-12-18	\N	\N	2236	A	CABA	5	2021	5	2021	B	AR
1760	KREPLAK             	\N	                    	Ernesto             	\N	DNI 	25788611	20	25788611	6	M	1977-03-02	\N	\N	1760	A	CAPITAL FEDERAL	6	2016	6	2021	C	AR
2200	ALVAREZ             	\N	                    	Emanuel Pablo       	\N	DNI 	33498537	20	33498537	8	M	1988-01-11	\N	\N	2200	A	Remedios de Escalada	3	2021	10	2021	B	AR
2211	BENITEZ             	\N	                    	Matias Sebastian    	\N	DNI 	30305188	20	30305188	1	M	1983-09-21	\N	\N	2211	A	Monte Grande	3	2021	10	2021	B	AR
2152	TOTTINO             	\N	                    	Laura Isabel        	\N	DNI 	21485049	23	21485049	4	F	1970-01-08	\N	\N	2152	A	CABA	2	2020	10	2021	C	AR
2196	BARRERA             	\N	                    	Anibal Del Transito 	\N	DNI 	25963549	20	25963549	8	M	1977-07-17	\N	\N	2196	A	TUCUMAN	2	2021	11	2021	T	AR
2209	CRISTAL             	\N	                    	Maria               	\N	DNI 	22561641	27	22561641	3	F	1971-12-12	\N	\N	2209	A	CORDOBA	3	2021	3	2022	X	AR
2225	DEL CARPIO          	\N	                    	Berenice Andrea     	\N	DNI 	37039103	27	37039103	9	F	1992-07-22	\N	\N	2225	A	CABA	4	2021	3	2022	B	AR
2210	FERNANDEZ           	\N	                    	Sol Nahir           	\N	DNI 	38842216	27	38842216	0	F	1995-05-13	\N	\N	2210	A	QUILMES	3	2021	3	2022	B	AR
2230	PAINCEIRA           	\N	                    	Luz Mariana         	\N	DNI 	23926641	27	23926641	5	F	1974-06-29	\N	\N	2230	A	SANTA FE	4	2021	3	2022	S	AR
2195	LOPEZ SAMITE        	\N	                    	Llanca Itati        	\N	DNI 	38283035	27	38283035	6	F	1994-03-03	\N	\N	2195	P	MAR DEL PLATA	2	2021	4	2022	B	AR
1187	MACHUCA             	\N	                    	Martín Miguel       	\N	DNI 	23842490	23	23842490	9	M	1974-03-28	\N	\N	1187	A	CAPITAL FEDERAL	6	2014	5	2021	C	AR
2235	SERAFINI            	\N	                    	Ezequiel            	\N	DNI 	27823150	20	27823150	0	M	1980-05-03	\N	\N	2235	A	LANUS	5	2021	5	2021	\N	\N
1388	NATANSON            	\N	                    	Natalia             	\N	DNI 	29751447	23	29751447	4	F	1982-08-22	\N	\N	1388	A	Capital Federal	5	2015	6	2021	C	AR
2240	MAGGI               	\N	                    	Maria Cecilia       	\N	DNI 	36806072	27	36806072	6	F	1992-04-02	\N	\N	2240	A	Capital Federal	6	2021	6	2021	C	AR
2237	ORDUÑA D´AMICO      	\N	                    	Maximiliano Enrique 	\N	DNI 	32565986	20	32565986	7	M	1986-11-15	\N	\N	2237	A	LANUS	5	2021	6	2021	B	AR
133	VIDAL               	IRALA               	                    	Camila Belen        	\N	DNI 	35864190	27	35864190	9	F	1991-09-10	\N	\N	133	A	Lanús	7	2011	6	2021	B	AR
2242	TRAYSSE             	\N	                    	Laura Viviana       	\N	DNI 	24176099	27	24176099	0	F	1974-09-04	\N	\N	2242	A	Buenos Aires	7	2021	7	2021	B	AR
99	OCON                	\N	                    	Ana Cristina        	\N	DNI 	5610435	27	5610435	1	F	1947-01-19	\N	\N	99	P	Capital Federal	7	2011	6	2021	C	AR
616	PASTORELLA          	PEREZ               	                    	Marcelo Alejandro   	\N	DNI 	16402157	20	16402157	3	M	1963-03-24	\N	\N	616	A	Avellaneda	11	2012	6	2021	B	AR
2126	BALESTRI            	\N	                    	Luis Alejo          	\N	DNI 	5527688	23	5527688	9	M	1949-04-22	\N	\N	2126	J	CASTEX	9	2019	7	2021	L	AR
1877	FIRPO               	\N	                    	Marcelo Gustavo     	\N	DNI 	16262966	20	16262966	3	M	1962-11-15	\N	\N	1877	P	Quilmes	4	2017	7	2021	B	AR
193	PROFETA MOLINUEVO   	MOLINUEVO           	                    	Damian Ariel        	\N	DNI 	26353793	23	26353793	9	M	1978-01-17	\N	\N	193	A	Capital Federal	9	2011	7	2021	C	AR
314	BAIONI              	FRONTERO            	                    	Diego Pablo         	\N	DNI 	24222464	20	24222464	8	M	1975-01-28	\N	\N	314	A	Lanús Este	2	2012	7	2021	B	AR
1639	BICINSKAS           	\N	                    	Gabriel Fernando    	\N	DNI 	24548868	20	24548868	9	M	1975-07-03	\N	\N	1639	A	Florencio Varela	10	2015	7	2021	B	AR
1683	BATAIN              	\N	                    	Alejandro Juan      	\N	DNI 	16395204	20	16395204	2	M	1963-05-28	\N	\N	1683	A	3 DE FEBRERO	1	2016	7	2021	B	AR
43	BUCCI               	\N	                    	Carlos Antonio N    	\N	DNI 	17378735	23	17378735	9	M	1965-06-25	\N	\N	43	A	Capital Federal	6	2011	7	2021	C	AR
2238	BARRANCO            	\N	                    	Sebastian Gonzalo   	\N	DNI 	24293972	20	24293972	8	M	1974-11-21	\N	\N	2238	A	CABA	5	2021	7	2021	C	AR
76	GUESDON             	BEVILAQUA           	                    	Jorgelina Viviana   	\N	DNI 	23314372	27	23314372	9	F	1973-05-02	\N	\N	76	A	Avellaneda	6	2011	7	2021	B	AR
353	REPETTO             	PACINI              	                    	Pablo Sergio        	\N	DNI 	26895467	20	26895467	9	M	1978-08-12	\N	\N	353	A	Ciudad Autónoma de Buenos Aires	2	2012	7	2021	C	AR
2239	CRIVELLI            	\N	                    	Agustin             	\N	DNI 	26860469	20	26860469	4	M	1979-01-10	\N	\N	2239	P	SANTA FE	5	2021	2	2023	S	AR
2233	VILLANUEVA SOTO     	\N	                    	Mirella Ayelen      	\N	DNI 	33681305	27	33681305	6	F	1988-03-09	\N	\N	2233	P	LA PLATA	4	2021	2	2023	B	AR
2232	TAMIS               	\N	                    	Josefina            	\N	DNI 	37374524	27	37374524	9	F	1994-04-05	\N	\N	2232	P	Cordoba (cap)	4	2021	2	2023	X	AR
2229	GUERRA              	\N	                    	Guillermo Carlos    	\N	DNI 	26429828	20	26429828	9	M	1978-03-13	\N	\N	2229	P	LA PLATA	4	2021	2	2023	B	AR
2226	LA VALLE            	\N	                    	Gabriel Leandro     	\N	DNI 	28909995	20	28909995	7	M	1981-06-05	\N	\N	2226	P	CABA	4	2021	2	2023	C	AR
1623	DEL TESO            	\N	                    	Pablo Diego         	\N	DNI 	22182084	20	22182084	4	M	1971-05-02	\N	\N	1623	P	CAMPANA	10	2015	2	2023	B	AR
2234	CABRERA             	\N	                    	Ileana Romina       	\N	DNI 	39117742	27	39117742	8	F	1995-11-03	\N	\N	2234	A	QUILMES	4	2021	6	2023	B	AR
2241	INSAURRALDE         	\N	                    	Genesis Xiomara     	\N	DNI 	37059217	27	37059217	4	F	1993-07-24	\N	\N	2241	A	EZEIZA	6	2021	6	2023	B	AR
276	MARQUES             	MORASO              	                    	Maria Yamila        	\N	DNI 	30146402	27	30146402	4	F	1983-03-26	\N	\N	276	A	Florencio Varela	12	2011	7	2021	B	AR
1280	LLORET              	\N	                    	Adrián Fabio        	\N	DNI 	23371399	20	23371399	7	M	1973-10-20	\N	\N	1280	A	HURLINGHAM	11	2014	7	2021	B	AR
225	KALKO               	CORVALÁN            	                    	Maria Jimena        	\N	DNI 	32523763	27	32523763	0	F	1986-08-12	\N	\N	225	A	Ciudad Autónoma de Buenos Aires	9	2011	7	2021	C	AR
1307	ALVAREZ             	\N	                    	Florencia Giselle   	\N	DNI 	36696261	27	36696261	7	F	1992-06-26	\N	\N	1307	A	LANUS	3	2015	7	2021	B	AR
2247	BRANDOLINI          	\N	                    	Maria Laura         	\N	DNI 	33811790	27	33811790	1	F	1988-05-05	\N	\N	2247	A	Capital Federal	8	2021	8	2021	C	AR
2243	CARRASCO            	\N	                    	Diego Hernan        	\N	DNI 	23068546	20	23068546	1	M	1973-01-01	\N	\N	2243	A	Avellaneda	8	2021	8	2021	B	AR
2248	VITALI              	\N	                    	Mora                	\N	DNI 	33646729	27	33646729	8	F	1988-04-27	\N	\N	2248	A	MAR DEL PLATA	8	2021	8	2021	B	AR
2244	RIVERA              	\N	                    	Daiana Betsabe      	\N	DNI 	28950246	27	28950246	2	F	1981-07-22	\N	\N	2244	A	Avellaneda	8	2021	8	2021	B	AR
736	SANGLA              	\N	                    	Ricardo Jorge       	\N	DNI 	12130284	20	12130284	6	M	1956-05-22	\N	\N	736	J	QUEQUEN	4	2013	8	2021	B	AR
1582	VILCA               	\N	                    	Raul Alberto        	\N	DNI 	23969712	20	23969712	8	M	1974-04-22	\N	\N	1582	A	CAPITAL FEDERAL	9	2015	8	2021	C	AR
1756	GUSIS               	\N	                    	Gabriela Laura      	\N	DNI 	26734543	27	26734543	6	F	1978-07-27	\N	\N	1756	A	Buenos Aires	5	2016	11	2021	B	AR
606	VIÑAS               	BORELLO             	                    	Mariela             	\N	DNI 	26575940	27	26575940	3	F	1978-07-31	\N	\N	606	A	Punta Alta	10	2012	2	2022	B	AR
1963	CASTRO              	\N	                    	Mariana Soledad     	\N	DNI 	36936121	27	36936121	5	F	1992-06-17	\N	\N	1963	A	BUENOS AIRES	3	2018	1	2022	B	AR
1735	CAMPOS              	\N	                    	Roberto Andres      	\N	DNI 	29654910	20	29654910	0	M	1982-07-13	\N	\N	1735	A	CABA	4	2016	2	2022	C	AR
2231	DALTON              	\N	                    	Barbara Alejandra   	\N	DNI 	25940990	27	25940990	5	F	1977-04-07	\N	\N	2231	A	CABA	4	2021	2	2022	C	AR
923	GOLDMAN             	\N	                    	Rolando Gabriel     	\N	DNI 	14563707	20	14563707	5	M	1961-03-28	\N	\N	923	A	CABA	11	2013	2	2022	C	AR
1132	FUSHIMI             	\N	                    	Lucas Eduardo       	\N	DNI 	26124286	23	26124286	9	M	1977-09-15	\N	\N	1132	A	SAN ISIDRO	4	2014	3	2022	B	AR
2245	SUAREZ              	\N	                    	Emanuel Alejandro   	\N	DNI 	41314852	23	41314852	9	M	1998-04-08	\N	\N	2245	A	Avellaneda	8	2021	8	2021	B	AR
2249	RAGONE              	\N	                    	Vanessa             	\N	DNI 	18304710	27	18304710	3	F	1967-03-08	\N	\N	2249	A	SANTO TOME	8	2021	8	2021	S	AR
2254	FERRUFINO           	\N	                    	Fabian Carlos       	\N	DNI 	31444174	20	31444174	6	M	1985-01-23	\N	\N	2254	P	Capital Federal	9	2021	4	2022	C	AR
2252	SENRRA              	\N	                    	Juan Manuel         	\N	DNI 	30040017	20	30040017	6	M	1982-12-09	\N	\N	2252	A	QUILMES	9	2021	9	2021	B	AR
2258	CONTARTESE          	\N	                    	Evangelina Paola    	\N	DNI 	27787043	27	27787043	1	F	1979-12-23	\N	\N	2258	A	BUENOS AIRES	9	2021	3	2022	B	AR
2246	BISCIONI            	\N	                    	Diego Nicolas       	\N	DNI 	30307776	20	30307776	7	M	1983-06-11	\N	\N	2246	A	Avellaneda	8	2021	9	2021	B	AR
2219	LIPARE              	\N	                    	Fabiana Beatriz     	\N	DNI 	17943880	27	17943880	7	F	1967-05-01	\N	\N	2219	A	AVELLANEDA	3	2021	9	2021	B	AR
2087	TERZI               	\N	                    	Magali Noelia       	\N	DNI 	36404441	27	36404441	6	F	1991-10-26	\N	\N	2087	A	Capital Federal	3	2019	9	2021	C	AR
1534	VACCA               	\N	                    	Maria Laura         	\N	DNI 	35836864	27	35836864	1	F	1991-02-15	\N	\N	1534	A	CAPITAL FEDERAL	8	2015	9	2021	C	AR
2135	MARINGOLO           	\N	                    	Maria Raquel        	\N	DNI 	28176676	27	28176676	2	F	1980-05-20	\N	\N	2135	A	LOMAS DE ZAMORA	10	2019	9	2021	B	AR
1783	REMOGNA             	\N	                    	Liliana Fanny       	\N	DNI 	20015232	27	20015232	3	F	1968-02-14	\N	\N	1783	A	Quilmes	8	2016	9	2021	B	AR
1437	DIAZ BARDELLI       	\N	                    	Julian              	\N	DNI 	23118952	20	23118952	2	M	1973-04-30	\N	\N	1437	A	LAS FLORES	5	2015	9	2021	B	AR
2008	ESCOBAR             	\N	                    	Rosa Estela         	\N	DNI 	26036626	27	26036626	8	F	1977-07-04	\N	\N	2008	A	AVELLANEDa	6	2018	9	2021	B	AR
1362	LOUREIRO            	\N	                    	Nora Viviana        	\N	DNI 	17856895	27	17856895	2	F	1966-08-05	\N	\N	1362	A	Capital Federal	4	2015	8	2022	C	AR
860	GIORELLO            	\N	                    	Santiago            	\N	DNI 	34608904	20	34608904	1	M	1989-06-27	\N	\N	860	A	LA PLATA	9	2013	9	2022	B	AR
24	RODRIGUEZ           	\N	                    	Cintia Mabel        	\N	DNI 	33572982	27	33572982	5	F	1988-05-19	\N	\N	24	A	Lanús	6	2011	10	2022	B	AR
1581	REIF                	\N	                    	Luciana Cecilia     	\N	DNI 	34963734	27	34963734	6	F	1990-01-04	\N	\N	1581	A	Lanus	9	2015	10	2022	B	AR
476	MARTURET            	GÓMEZ               	                    	Paula               	\N	DNI 	24245455	27	24245455	9	F	1975-04-04	\N	\N	476	A	Gualeguaychú	4	2012	10	2022	E	AR
2018	MOLA                	\N	                    	Sonia Beatriz       	\N	DNI 	28687103	27	28687103	3	F	1981-05-11	\N	\N	2018	A	AVELLANEDA	6	2018	9	2021	B	AR
1082	TOMIZZA             	\N	                    	María Florencia     	\N	DNI 	25285182	27	25285182	3	F	1976-05-21	\N	\N	1082	A	Quilmes	4	2014	9	2021	B	AR
1592	FILARDI             	\N	                    	Marcos Ezequiel     	\N	DNI 	27668185	20	27668185	1	M	1979-08-22	\N	\N	1592	A	CABA	9	2015	9	2021	B	AR
441	WAINER              	\N	                    	Luis Ezequiel       	\N	DNI 	28231752	20	28231752	5	M	1980-06-12	\N	\N	441	A	Ciudad Autónoma de Buenos Aires	3	2012	10	2021	C	AR
2202	CARDOZO             	\N	                    	Martin Miguel       	\N	DNI 	35247003	20	35247003	2	M	1989-08-11	\N	\N	2202	P	San Miguel	3	2021	6	2022	B	AR
1083	TONDA               	\N	                    	Diego Nicolas       	\N	DNI 	24907371	20	24907371	8	M	1975-11-22	\N	\N	1083	A	\N	4	2014	9	2021	\N	\N
733	CABANCHIK           	\N	                    	Adolfo              	\N	DNI 	8442312	20	8442312	3	M	1950-07-01	\N	\N	733	P	MORON	4	2013	2	2023	B	AR
1705	CASAJUS             	\N	                    	Lucia               	\N	DNI 	25690487	27	25690487	5	F	1977-01-08	\N	\N	1705	A	La Plata	3	2016	8	2023	B	AR
1884	CELSO               	\N	                    	Viviana Elisabeth   	\N	DNI 	13654374	27	13654374	7	F	1959-10-04	\N	\N	1884	J	CAPITAL FEDERAL	5	2017	9	2023	C	AR
1313	STEFANELLI          	\N	                    	Anabela Gisele      	\N	DNI 	29364524	27	29364524	3	F	1982-03-11	\N	\N	1313	A	LANUS	3	2015	9	2021	B	AR
1496	TAMAGNO             	\N	                    	Lorena Soledad      	\N	DNI 	32575418	23	32575418	4	F	1986-10-15	\N	\N	1496	A	Capital Federal	6	2015	9	2021	C	AR
1637	TAUBIN              	\N	                    	Alejandra Susana    	\N	DNI 	16463032	27	16463032	9	F	1962-11-04	\N	\N	1637	A	Buenos Aires	10	2015	9	2021	B	AR
1361	TEDESCO             	\N	                    	Carolina Jimena     	\N	DNI 	30181321	27	30181321	5	F	1983-03-07	\N	\N	1361	A	Capital Federal	4	2015	9	2021	C	AR
2199	VILLANUSTRE         	\N	                    	Maria de la Paz     	\N	DNI 	38027038	27	38027038	8	F	1994-03-03	\N	\N	2199	A	C.A.B.A.	2	2021	9	2021	C	AR
1474	TORRES              	\N	                    	Karina Roxana       	\N	DNI 	32440011	27	32440011	2	F	1986-06-26	\N	\N	1474	A	ALMIRANTE BROWN	6	2015	9	2021	B	AR
1074	GALVAN              	\N	                    	Miriam Del Transito 	\N	DNI 	13247270	27	13247270	5	F	1959-09-17	\N	\N	1074	P	Santiago del Estero	4	2014	12	2021	G	AR
2032	VERNENGO            	\N	                    	Martin              	\N	DNI 	16790587	20	16790587	1	M	1964-11-02	\N	\N	2032	A	Capital Federal	6	2018	9	2021	C	AR
1085	ZARZA               	\N	                    	Luciana Mercedes    	\N	DNI 	26817555	27	26817555	0	F	1978-11-06	\N	\N	1085	A	TEMPERLEY	4	2014	9	2021	B	AR
2250	REBORA              	\N	                    	Lucia               	\N	DNI 	25984119	23	25984119	4	F	1977-05-13	\N	\N	2250	A	CABA	8	2021	10	2021	C	AR
688	CASERES             	\N	                    	Sandro Emanuel      	\N	DNI 	39268757	20	39268757	3	M	1993-12-16	\N	\N	688	A	EL DORADO	3	2013	10	2021	N	AR
1850	TEDESCO             	\N	                    	Ricardo Luis        	\N	DNI 	16120501	20	16120501	0	M	1962-10-19	\N	\N	1850	A	Lomas de Zamora	3	2017	1	2022	B	AR
2251	MATTOS              	\N	                    	Ernesto Javier      	\N	DNI 	26868223	20	26868223	7	M	1978-11-18	\N	\N	2251	A	CABA	8	2021	1	2022	C	AR
2253	DOMINGUEZ           	\N	                    	Nestor Rafael       	\N	DNI 	20000949	20	20000949	6	M	1968-02-09	\N	\N	2253	A	CABA	9	2021	3	2022	C	AR
2272	AGUILAR             	\N	                    	Mario Matias        	\N	DNI 	33339282	20	33339282	9	M	1988-01-08	\N	\N	2272	A	Lomas de Zamora	12	2021	12	2021	B	AR
2260	LEZCANO             	\N	                    	Roberto Alejandro   	\N	DNI 	18004702	20	18004702	7	M	1966-08-15	\N	\N	2260	A	AVELLANEDA	9	2021	9	2021	B	AR
204	GATTO               	MAUNA               	FERNÁNDEZ           	Marcela Edith       	\N	DNI 	22923072	27	22923072	2	F	1974-02-16	\N	\N	204	A	Lanús	9	2011	1	2022	B	AR
183	FERBER              	\N	                    	Horacio Martin      	\N	DNI 	17526777	20	17526777	9	M	1965-12-08	\N	\N	183	A	Lomas de Zamora	8	2011	3	2022	B	AR
2261	PORTO               	\N	                    	Alejandro Esteban   	\N	DNI 	31407886	20	31407886	2	M	1984-12-27	\N	\N	2261	A	Capital Federal	9	2021	9	2021	C	AR
2262	OLIVIERO            	\N	                    	Silvia Amalia       	\N	DNI 	12565282	23	12565282	4	F	1958-05-16	\N	\N	2262	A	SANTA FE	9	2021	9	2021	S	AR
959	ACUÑA               	\N	                    	Maria Dolores       	\N	DNI 	31419508	27	31419508	1	F	1985-01-31	\N	\N	959	A	SANTA FE	12	2013	10	2021	S	AR
83	KOZAK               	\N	                    	Ana Maria           	\N	DNI 	20407462	27	20407462	9	F	1968-06-14	\N	\N	83	A	La Verde	7	2011	10	2021	H	AR
1992	KATZAGIANNAKI       	\N	                    	Maria               	\N	DNI 	94425907	23	94425907	4	F	1978-07-21	\N	\N	1992	A	HERAKLIO	4	2018	10	2021	\N	GR
2268	PORTILLO            	\N	                    	Axel Nahuel         	\N	DNI 	41687312	20	41687312	8	M	1999-01-07	\N	\N	2268	A	LOMAS DE ZAMORA	11	2021	12	2021	B	AR
955	CENTURION           	\N	                    	Darío Fernando      	\N	DNI 	22884051	20	22884051	4	M	1972-06-20	\N	\N	955	A	QUILMES	12	2013	10	2021	B	AR
2010	FERNANDEZ           	\N	                    	Mirta Antonia       	\N	DNI 	23921487	27	23921487	3	F	1974-06-08	\N	\N	2010	A	BUENOS AIRES	6	2018	10	2021	B	AR
2266	VEGA CARDENAS       	\N	                    	Orlando Christian   	\N	DNI 	92457519	20	92457519	1	M	1968-03-27	\N	\N	2266	A	Viña del Mar	10	2021	11	2021	\N	CL
2270	AGUILAR             	\N	                    	Alexis Camilo       	\N	DNI 	28898009	20	28898009	9	M	1981-06-24	\N	\N	2270	A	Capital Federal	12	2021	12	2021	C	AR
126	SUAREZ              	VILLAGRA            	                    	Graciela            	\N	DNI 	18644409	23	18644409	4	F	1967-06-11	\N	\N	126	A	Misiones	7	2011	11	2021	N	AR
2263	GUARINI             	\N	                    	Aurelia del Carmen  	\N	DNI 	10892233	27	10892233	3	F	1953-01-18	\N	\N	2263	A	BUENOS AIRES	10	2021	10	2021	B	AR
67	GARAÑO              	GOLLUSCIO           	                    	Ignacio             	\N	DNI 	30082576	20	30082576	2	M	1983-02-09	\N	\N	67	A	Capital Federal	6	2011	10	2021	C	AR
1714	CODINO              	Kovacj              	                    	Rodrigo Pablo       	\N	DNI 	22547745	20	22547745	1	M	1971-12-24	\N	\N	1714	A	CAPITAL FEDERAL	4	2016	11	2021	B	AR
1487	VOLPE               	\N	                    	Gabriel Ezequiel    	\N	DNI 	26465414	23	26465414	9	M	1978-04-14	\N	\N	1487	A	LANUS	6	2015	11	2021	B	AR
2267	RIZZO               	\N	                    	Luciana Emilse      	\N	DNI 	36427492	27	36427492	6	F	1992-01-10	\N	\N	2267	A	BUENOS AIRES	10	2021	11	2021	B	AR
491	VILLEGAS            	\N	                    	Daniela Claudia     	\N	DNI 	20682927	27	20682927	9	F	1969-03-01	\N	\N	491	A	Lomas de Zamora	5	2012	11	2021	B	AR
2265	DUARTE AGUILERA     	\N	                    	Vanesa Yanina       	\N	DNI 	37993316	27	37993316	0	F	1993-12-22	\N	\N	2265	A	Capital Federal	10	2021	11	2021	C	AR
550	ESCUDERO            	\N	                    	Cristina Sandra     	\N	DNI 	16271150	23	16271150	4	F	1963-05-08	\N	\N	550	A	Rosario	8	2012	1	2022	S	AR
2273	ROMANO              	\N	                    	Xiomara Ayelen      	\N	DNI 	40231426	27	40231426	0	F	1997-02-08	\N	\N	2273	A	C.A.B.A.	12	2021	12	2021	C	AR
2271	DIAZ                	\N	                    	Gonzalo Alfredo     	\N	DNI 	29277346	20	29277346	4	M	1982-03-15	\N	\N	2271	A	Capital Federal	12	2021	12	2021	C	AR
2264	ESPOSITO            	\N	                    	Rosana Vanesa       	\N	DNI 	26626088	27	26626088	7	F	1978-06-19	\N	\N	2264	P	Avellaneda	10	2021	12	2022	B	AR
2257	SILVA               	\N	                    	Sabrina Anabel      	\N	DNI 	36156264	27	36156264	5	F	1991-05-20	\N	\N	2257	P	Capital Federal	9	2021	2	2023	C	AR
2256	PEREZ QUINTANA      	\N	                    	Florencia           	\N	DNI 	37762517	27	37762517	5	F	1993-06-09	\N	\N	2256	P	Lanus	9	2021	2	2023	B	AR
2063	VADILLO             	\N	                    	Guillermo Alberto   	\N	DNI 	13199551	20	13199551	3	M	1959-04-14	\N	\N	2063	A	San Miguel	9	2018	4	2023	B	AR
1856	SUTTER              	\N	                    	Julieta Laura       	\N	DNI 	32830553	23	32830553	4	F	1987-04-21	\N	\N	1856	A	CAPITAL FEDERAL	4	2017	4	2023	C	AR
596	FERNANDEZ           	\N	MUÑOZ               	Mónica Elizabeth    	\N	DNI 	22004847	27	22004847	6	F	1971-01-07	\N	\N	596	A	Ciudad Autónoma de Buenos Aires	10	2012	1	2022	C	AR
1775	SAIQUITA            	\N	                    	Samanta             	\N	DNI 	32091171	27	32091171	6	F	1986-01-09	\N	\N	1775	A	CAPITAL FEDERAL	8	2016	1	2022	C	AR
1776	GONZALEZ            	\N	                    	Roxana Elizabeth    	\N	DNI 	24561110	27	24561110	8	F	1975-07-05	\N	\N	1776	A	CAPITAL FEDERAL	8	2016	2	2022	C	AR
2275	MORFU               	\N	                    	Leonardo Javier     	\N	DNI 	25739252	20	25739252	0	M	1977-01-03	\N	\N	2275	A	LANUS	2	2022	2	2022	B	AR
786	AMIUNE              	\N	                    	Lautaro             	\N	DNI 	21946850	20	21946850	5	M	1971-03-08	\N	\N	786	A	ROSARIO	5	2013	2	2022	S	AR
785	ORTIZ               	\N	                    	Guillermo Jose      	\N	DNI 	20036964	20	20036964	6	M	1968-06-26	\N	\N	785	A	SAN VICENTE	5	2013	2	2022	B	AR
2276	HERRERA             	\N	                    	Silvana Lorena      	\N	DNI 	30114026	27	30114026	1	F	1983-05-09	\N	\N	2276	A	LAFERRERE	2	2022	2	2022	B	AR
2278	IBARRA              	\N	                    	Claudio Alberto     	\N	DNI 	30778652	20	30778652	5	M	1983-08-03	\N	\N	2278	A	Avellaneda	2	2022	2	2022	B	AR
557	GOMES PERNETA       	MEDINA              	                    	Malena              	\N	DNI 	37926496	23	37926496	4	F	1994-01-04	\N	\N	557	A	Avellaneda	8	2012	2	2022	B	AR
711	DI DOMENICA         	\N	                    	Sebastián Nicolás   	\N	DNI 	22278187	20	22278187	7	M	1971-06-21	\N	\N	711	A	BUENOS AIRES	3	2013	3	2022	B	AR
2259	CORTES              	\N	                    	Enrique Adrian      	\N	DNI 	16396394	23	16396394	9	M	1963-10-03	\N	\N	2259	A	BALCARCE	9	2021	3	2022	B	AR
306	RUBI                	BIROCCO             	                    	Nicolas Martin      	\N	DNI 	31732889	20	31732889	4	M	1985-08-22	\N	\N	306	P	Villa Luzuriaga	2	2012	4	2022	B	AR
584	RUCKER              	KOLLER              	HAUCK               	Ursula Elisabet     	\N	DNI 	14051308	27	14051308	9	F	1959-11-28	\N	\N	584	A	Ciudad Autónoma de Buenos Aires	9	2012	3	2022	C	AR
131	VANYAY              	LEDEZMA             	                    	Mariana Ethel       	\N	DNI 	16402232	27	16402232	9	F	1963-01-03	\N	\N	131	A	Wilde	7	2011	3	2022	B	AR
2295	SACINO              	\N	                    	Cecilia Analia      	\N	DNI 	31362398	27	31362398	5	F	1985-01-14	\N	\N	2295	A	BUENOS AIRES	3	2022	3	2022	B	AR
2303	LEDEMBUZ            	\N	                    	Ariel Gustavo       	\N	DNI 	30383317	20	30383317	0	M	1983-08-05	\N	\N	2303	A	CABA	3	2022	3	2022	C	AR
2282	VAN OOSTVELDT       	\N	                    	Nicolas Caleb       	\N	DNI 	36736549	20	36736549	9	M	1992-09-03	\N	\N	2282	A	AVELLANEDA	3	2022	3	2022	B	AR
2287	SALTO               	\N	                    	Julieta Griselda R  	\N	DNI 	25285781	27	25285781	3	F	1976-10-19	\N	\N	2287	A	QUILMES	3	2022	3	2022	B	AR
2279	HERMOSILLA          	\N	                    	Rocio Ayelen        	\N	DNI 	44170596	23	44170596	4	F	2002-04-19	\N	\N	2279	A	AVELLANEDA	3	2022	3	2022	B	AR
1899	BATAKIS             	\N	                    	Silvina Aida        	\N	DNI 	20163828	27	20163828	9	F	1968-12-27	\N	\N	1899	A	RIO GRANDE	7	2017	3	2022	V	AR
2289	ZANARINI            	\N	                    	Omar Alexander      	\N	DNI 	92590320	20	92590320	6	M	1978-03-01	\N	\N	2289	A	EEUU	3	2022	3	2022	\N	US
2285	MALITO              	\N	                    	Luciana Rosario     	\N	DNI 	39744550	27	39744550	5	F	1996-06-08	\N	\N	2285	A	AVELLANEDA	3	2022	3	2022	B	AR
2283	BOGADO              	\N	                    	Maria Cecilia       	\N	DNI 	34453021	27	34453021	7	F	1990-03-22	\N	\N	2283	A	WANDA	3	2022	3	2022	N	AR
2284	HERNANDEZ RON       	\N	                    	Julio Rafael        	\N	DNI 	95996463	20	95996463	8	M	1989-09-09	\N	\N	2283	A	TUCUPIDO	3	2022	3	2022	\N	VE
2280	CONTRERAS           	\N	                    	Fernanda Ximena     	\N	DNI 	45200570	27	45200570	6	F	2003-03-24	\N	\N	2280	A	AVELLANEDA	3	2022	3	2022	B	AR
2281	CONTRERAS           	\N	                    	Jeremias Ismael     	\N	DNI 	43901723	20	43901723	7	M	2002-01-23	\N	\N	2281	A	AVELLANEDA	3	2022	3	2022	B	AR
275	FOGLIAZZA           	BOTEFFANI           	                    	Luis Maria          	\N	DNI 	33778113	20	33778113	7	M	1988-05-05	\N	\N	275	A	Merlo	12	2011	3	2022	B	AR
2290	MOLERO              	\N	                    	Vanesa Gisela       	\N	DNI 	30089810	27	30089810	1	F	1983-04-09	\N	\N	2290	A	BUENOS AIRES	3	2022	3	2022	B	AR
2296	CALDERON            	\N	                    	Sebastian Leandro   	\N	DNI 	29678867	20	29678867	9	M	1982-09-20	\N	\N	2296	A	BUENOS AIRES	3	2022	3	2022	B	AR
2277	ROJAS               	\N	                    	Vanesa              	\N	DNI 	32125043	27	32125043	8	F	1985-12-12	\N	\N	2277	A	BUENOS AIRES	2	2022	10	2022	B	AR
2307	FASULO              	\N	                    	Norma Aida          	\N	DNI 	6151770	27	6151770	2	F	1949-09-01	\N	\N	2307	J	AVELLANEDA	3	2022	5	2022	B	AR
2288	METALLO             	\N	                    	Federico Jorge      	\N	DNI 	34211234	20	34211234	0	M	1988-11-11	\N	\N	2288	A	CABA	3	2022	4	2022	C	AR
2294	KOCH                	\N	                    	Guillermina Paula   	\N	DNI 	21714109	27	21714109	0	F	1970-05-29	\N	\N	2294	A	BUENOS AIRES	3	2022	3	2022	B	AR
2298	CIARLANTINI         	\N	                    	Giuliana Eva        	\N	DNI 	38191043	27	38191043	7	F	1994-03-07	\N	\N	2298	A	AVELLANEDA	3	2022	3	2022	B	AR
1356	D´ANDREA            	\N	                    	Alejandro Fabian    	\N	DNI 	14446297	20	14446297	2	M	1961-04-28	\N	\N	1356	A	CAPITAL FEDERAL	4	2015	3	2022	C	AR
2179	FRETES              	\N	                    	Marisol             	\N	DNI 	30721964	27	30721964	1	F	1984-02-29	\N	\N	2179	A	VILLA LUZURIAGA	6	2020	3	2022	B	AR
2299	MONTAGU             	\N	                    	Haroldo Arian       	\N	DNI 	27729260	20	27729260	3	M	1979-09-19	\N	\N	2299	A	CABA	3	2022	3	2022	C	AR
2301	MARTINEZ            	\N	                    	Ricardo Gustavo     	\N	DNI 	20365058	20	20365058	3	M	1968-05-17	\N	\N	2301	A	CABA	3	2022	3	2022	C	AR
2302	FERRARI             	\N	                    	Pablo Esteban       	\N	DNI 	24837651	20	24837651	2	M	1975-10-18	\N	\N	2302	A	BUENOS AIRES	3	2022	3	2022	B	AR
2286	OLIVARES            	\N	                    	Mercedes            	\N	DNI 	35156302	27	35156302	3	F	1990-02-22	\N	\N	2286	A	BUENOS AIRES	3	2022	6	2023	B	AR
2304	LOISEAU             	\N	                    	Matias              	\N	DNI 	39208777	20	39208777	0	M	1995-09-05	\N	\N	2304	A	CABA	3	2022	6	2023	C	AR
2292	ASTUDILLO           	\N	                    	Mariana Cecilia     	\N	DNI 	32380940	27	32380940	8	F	1985-11-20	\N	\N	2292	A	QUILMES	3	2022	8	2023	B	AR
2269	DICANDIA            	\N	                    	Patricia Esther     	\N	DNI 	17642637	27	17642637	9	F	1966-01-14	\N	\N	2269	A	Capital Federal	11	2021	8	2023	C	AR
422	ALVAREZ             	\N	                    	Claudio Hector      	\N	DNI 	13773691	20	13773691	9	M	1960-02-09	\N	\N	422	A	Ciudad Autónoma de Buenos Aires	3	2012	8	2023	C	AR
2300	ALONSO DE SANTIAGO  	\N	                    	Lourdes Elizabeth   	\N	DNI 	18873202	27	18873202	5	F	1971-07-13	\N	\N	2300	A	URUGUAY	3	2022	3	2022	\N	UY
2308	PUEYO ALVARADO      	\N	                    	Maria Jose          	\N	DNI 	37099673	20	37099673	4	F	1992-10-03	\N	\N	2308	A	BARILOCHE	3	2022	3	2022	R	AR
2309	MOREYRA             	\N	                    	Jose Luis           	\N	DNI 	27980414	20	27980414	8	M	1968-02-20	\N	\N	2309	A	Avellaneda	3	2022	3	2022	B	AR
2291	LEAL RONCANCIO      	\N	                    	Giovanny Gilberto   	\N	DNI 	19044241	20	19044241	2	M	1979-01-31	\N	\N	2291	A	BOGOTA	3	2022	3	2022	\N	CO
2310	GARCIA              	\N	                    	Ezequiel Nicolas    	\N	DNI 	37904012	20	37904012	9	M	1993-10-10	\N	\N	2310	A	CABA	3	2022	3	2022	C	AR
2311	ROCCHIA EL NEMER    	\N	                    	Ezequiel            	\N	DNI 	32395247	20	32395247	8	M	1986-07-03	\N	\N	2311	A	Moron	4	2022	4	2022	B	AR
2312	ROJO                	\N	                    	Yamil Cristopher    	\N	DNI 	37375979	20	37375979	2	M	1993-04-03	\N	\N	2312	A	BUENOS AIRES	4	2022	4	2022	B	AR
2297	D´ALESSANDRO        	\N	                    	Maria de las M      	\N	DNI 	24601173	27	24601173	2	F	1978-01-26	\N	\N	2297	A	Misiones	3	2022	4	2022	N	AR
2313	VILLAGRA TRINIDAD   	\N	                    	Nuria Myriam Mabel  	\N	DNI 	32576497	27	32576497	5	F	1987-02-17	\N	\N	2313	A	C.A.B.A	4	2022	4	2022	C	AR
2320	CORREA              	\N	                    	Ramon Abel          	\N	DNI 	28657000	20	28657000	4	M	1981-05-08	\N	\N	2320	A	CORDOBA	4	2022	4	2022	X	AR
2326	ARAUJO              	\N	                    	Florencia           	\N	DNI 	32800165	27	32800165	4	F	1987-01-09	\N	\N	2326	A	TANDIL	4	2022	4	2022	B	AR
2331	DELACHAUX           	\N	                    	Arabela             	\N	DNI 	20908276	23	20908276	4	M	1969-08-03	\N	\N	2331	A	LA PLATA	4	2022	4	2022	B	AR
2325	BRITEZ              	\N	                    	German Ignacio      	\N	DNI 	35363277	23	35363277	9	M	1990-10-09	\N	\N	2325	A	C.A.B.A.	4	2022	4	2022	C	AR
2332	CALABRESE TELLO     	\N	                    	Julieta Lia         	\N	DNI 	27823789	27	27823789	9	F	1979-12-22	\N	\N	2332	A	LA PLATA	4	2022	4	2022	B	AR
2322	PAZOS               	\N	                    	Federico Martin     	\N	DNI 	35943936	23	35943936	9	M	1991-08-27	\N	\N	2322	A	AVELLANEDA	4	2022	4	2022	B	AR
2323	SEGESSO             	\N	                    	Maria               	\N	DNI 	28265072	27	28265072	5	F	1980-07-08	\N	\N	2323	A	AVELLANEDA	4	2022	4	2022	B	AR
2333	BUZON               	\N	                    	Fabiola Alejandra   	\N	DNI 	26338713	27	26338713	4	F	1977-12-29	\N	\N	2333	A	CABA	4	2022	4	2022	C	AR
2317	ITURRIZA            	\N	                    	Emanuel Joaquin     	\N	DNI 	25816028	20	25816028	3	M	1977-01-04	\N	\N	2317	A	QUILMES	4	2022	4	2022	B	AR
2327	MARTINEZ            	\N	                    	Maria Daniela       	\N	DNI 	26998994	27	26998994	2	F	1978-12-27	\N	\N	2327	A	Capital Federal	4	2022	4	2022	C	AR
2329	FERNANDEZ           	\N	                    	Carolina Celeste    	\N	DNI 	36374319	27	36374319	1	F	1991-12-28	\N	\N	2329	A	AVELLANEDA	4	2022	4	2022	B	AR
2328	LAREZ               	\N	                    	Camilo Augusto      	\N	DNI 	43318282	20	43318282	1	M	2001-03-13	\N	\N	2328	A	AVELLANEDA	4	2022	4	2022	B	AR
2342	ALVAREZ             	\N	                    	Facundo             	\N	DNI 	32436888	20	32436888	5	M	1986-05-14	\N	\N	2342	A	CABA	5	2022	5	2022	C	AR
2335	ENCABO              	\N	                    	Martin Alfredo      	\N	DNI 	26053170	20	26053170	1	M	1977-10-02	\N	\N	2335	A	ALBERTI	4	2022	4	2022	B	AR
2334	DALLOCHIO           	\N	                    	Juan Manuel         	\N	DNI 	37783818	20	37783818	2	M	1993-11-25	\N	\N	2334	A	CHIVILCOY	4	2022	4	2022	B	AR
2338	LIEUTIER            	\N	                    	Carlos Ariel        	\N	DNI 	26318148	20	26318148	5	M	1977-11-13	\N	\N	2338	A	CABA	4	2022	4	2022	C	AR
2345	JOVANOVICH          	\N	                    	Olaf Leopoldo Lucas 	\N	DNI 	26447789	20	26447789	2	M	1978-04-29	\N	\N	2345	A	RESISTENCIA	5	2022	5	2022	H	AR
2341	GARCIA              	\N	                    	Mauricio            	\N	DNI 	25581149	20	25581149	6	M	1976-12-01	\N	\N	2341	A	ALTA GRACIA	5	2022	5	2022	X	AR
2340	BARRENECHE          	\N	                    	Martin              	\N	DNI 	29558052	20	29558052	7	M	1982-05-28	\N	\N	2340	A	LA PLATA	5	2022	5	2022	B	AR
264	FARIÑA              	SUÁREZ              	                    	Oscar Alberto       	\N	DNI 	7607814	23	7607814	9	M	1947-12-12	\N	\N	264	J	Ciudad Autónoma de Buenos Aires	11	2011	5	2022	C	AR
2339	LANZA               	\N	                    	Kevin Agustin       	\N	DNI 	40830022	20	40830022	4	M	1997-12-30	\N	\N	2339	A	CAPITAL FEDERAL	5	2022	5	2022	C	AR
654	ARIAS               	PRAMPARO            	                    	Diana Selva         	\N	DNI 	13187921	27	13187921	6	F	1959-04-30	\N	\N	654	J	HURLINGHAM	2	2013	5	2022	B	AR
2344	KELIS               	\N	                    	Julian Ignacio      	\N	DNI 	36750170	20	36750170	8	M	1992-11-09	\N	\N	2344	A	LA PLATA	5	2022	5	2022	B	AR
2347	RAPISARDA           	\N	                    	Fernando            	\N	DNI 	24499091	20	24499091	7	M	1975-03-01	\N	\N	2346	A	LA PLATA	5	2022	5	2022	B	AR
2349	PETRELLI            	\N	                    	Maria Florencia     	\N	DNI 	40947445	23	40947445	4	F	1998-03-04	\N	\N	2349	A	\N	5	2022	5	2022	\N	\N
2305	WEIGEL MUÑOZ        	\N	                    	Maria Soledad       	\N	DNI 	24905798	27	24905798	9	F	1975-10-23	\N	\N	2305	A	CABA	3	2022	6	2023	C	AR
2293	BASAVILBASO         	\N	                    	Maria Angelica      	\N	DNI 	30289160	27	30289160	0	F	1983-05-22	\N	\N	2293	A	CABA	3	2022	6	2023	C	AR
2348	PALMIERI            	\N	                    	Pablo Dario         	\N	DNI 	17233550	20	17233550	1	M	1965-03-20	\N	\N	2348	A	CABA	5	2022	6	2023	C	AR
2306	SIGNORETTA          	\N	                    	Ornella             	\N	DNI 	34668823	27	34668823	3	F	1989-07-24	\N	\N	2306	A	CABA	3	2022	6	2023	C	AR
2324	PORCELLI            	\N	                    	Sergio Fabian       	\N	DNI 	17603385	20	17603385	2	M	1966-03-13	\N	\N	2324	A	ADROGUE	4	2022	8	2023	B	AR
2318	TOTI                	\N	                    	Leandro Julian      	\N	DNI 	37184346	23	37184346	9	M	1993-04-07	\N	\N	2318	A	LOMAS DE ZAMORA	4	2022	8	2023	B	AR
2330	BALLESTEROS         	\N	                    	Malena              	\N	DNI 	23626516	27	23626516	7	F	1973-11-09	\N	\N	2330	A	CABA	4	2022	9	2023	C	AR
2336	IANNI               	\N	                    	Guido               	\N	DNI 	32952003	20	32952003	0	M	1987-03-21	\N	\N	2336	A	CABA	4	2022	9	2023	C	AR
2351	ROLANDO             	\N	                    	Silvana Valeria     	\N	DNI 	23974310	27	23974310	8	F	1974-04-26	\N	\N	2351	A	CABA	5	2022	5	2022	C	AR
2352	AYALA               	\N	                    	Analia Belen        	\N	DNI 	35393617	23	35393617	4	F	1990-10-12	\N	\N	2352	A	MORON	6	2022	6	2022	B	AR
2354	FRANCHI             	\N	                    	Gabriela Noeli      	\N	DNI 	34502378	27	34502378	5	F	1989-01-16	\N	\N	2354	A	QUILMES	6	2022	6	2022	B	AR
2353	PEREZ               	\N	                    	Diego Sebastian     	\N	DNI 	28709616	20	28709616	0	M	1981-05-23	\N	\N	2353	A	Monte Grande	6	2022	6	2022	B	AR
2355	ANDRONACO           	\N	                    	Nestor Gabriel      	\N	DNI 	21522461	23	21522461	9	M	1970-03-04	\N	\N	2355	A	Ciudad Autónoma de Buenos Aires	6	2022	6	2022	C	AR
124	SCHNEIDER           	D´ERRICO            	                    	Maria Cecilia       	\N	DNI 	20665110	27	20665110	0	F	1969-03-11	\N	\N	124	A	Capital Federal	7	2011	6	2022	C	AR
569	ALVAREZ             	DEL GENER           	SALABERRY           	Andrea Virginia     	\N	DNI 	17805131	27	17805131	3	F	1966-05-05	\N	\N	569	A	Avellaneda	9	2012	6	2022	B	AR
2145	ANTICO              	\N	                    	Barbara Analia      	\N	DNI 	28951090	27	28951090	2	F	1981-06-19	\N	\N	2145	A	AVELLANEDA	11	2019	7	2022	B	AR
2357	RODRIGUEZ LOZA      	\N	                    	Leonardo Adrian     	\N	DNI 	25250236	20	25250236	0	M	1976-04-02	\N	\N	2357	A	CABA	6	2022	6	2022	B	AR
1601	GOMEZ               	\N	                    	Natalia Romina      	\N	DNI 	28311189	20	28311189	0	F	1980-12-06	\N	\N	1601	A	AVELLANEDA	9	2015	6	2022	B	AR
390	GUERRA              	PUCHE               	                    	Agustín             	\N	DNI 	28365478	20	28365478	9	M	1980-08-08	\N	\N	390	A	Quilmes	3	2012	6	2022	B	AR
867	REALES              	\N	                    	Marcelo Pablo       	\N	DNI 	21155894	20	21155894	7	M	1969-11-12	\N	\N	867	A	CAPITAL FEDERAL	9	2013	7	2022	C	AR
1953	FARIAS              	\N	                    	Juan Ignacio        	\N	DNI 	35729361	20	35729361	9	M	1991-02-06	\N	\N	1953	A	Ciudad de Buenos Aires	3	2018	6	2022	C	AR
1442	MORA                	\N	                    	Angela Rosalia      	\N	DNI 	20404560	27	20404560	2	F	1968-11-07	\N	\N	1442	A	CAPITAL FEDERAL	5	2015	6	2022	C	AR
110	PEREYRA GARCIA      	\N	                    	Fernando Xavier     	\N	DNI 	14120941	20	14120941	9	M	1960-05-17	\N	\N	110	A	Capital Federal	7	2011	7	2022	C	AR
2359	PALERO              	\N	                    	Juan Santiago       	\N	DNI 	28511761	20	28511761	6	M	1981-02-16	\N	\N	2359	A	GODOY CRUZ	6	2022	7	2022	M	AR
1671	SOMOZA BARON        	\N	                    	Ariel Jorge         	\N	DNI 	24561227	20	24561227	4	M	1975-07-07	\N	\N	1671	A	CAPITAL FEDERAL	12	2015	7	2022	C	AR
886	DE GENARO           	\N	                    	María Eugenia       	\N	DNI 	24776120	27	24776120	4	F	1975-07-21	\N	\N	886	A	BUENOS AIRES	9	2013	6	2022	B	AR
185	FERNANDEZ           	MAYOR               	                    	Mariano Hernán      	\N	DNI 	20005401	20	20005401	7	M	1968-01-18	\N	\N	185	A	Capital Federal	8	2011	6	2022	C	AR
2141	LOPEZ FIORITO       	\N	                    	Pablo Alberto       	\N	DNI 	25020970	20	25020970	4	M	1975-11-21	\N	\N	2141	A	Buenos Aires	11	2019	7	2022	B	AR
2171	ROGGI               	\N	                    	Magdalena           	\N	DNI 	26588213	27	26588213	2	F	1978-04-23	\N	\N	2171	A	Capital Federal	4	2020	7	2022	C	AR
969	DECOUD              	\N	                    	Mabel Elena         	\N	DNI 	12446025	27	12446025	0	F	1956-04-15	\N	\N	969	J	LANUS	1	2014	7	2022	B	AR
2360	CAVALLO             	\N	                    	Yanina Delicia      	\N	DNI 	29774108	27	29774108	5	F	1982-11-09	\N	\N	2360	A	AVELLANEDA	7	2022	7	2022	B	AR
1563	SCOTTO D´ABUSCO     	\N	                    	Daniela             	\N	DNI 	32565999	27	32565999	3	F	1986-11-11	\N	\N	1563	A	Lanús Oeste	9	2015	7	2022	B	AR
1327	JORQUERA            	\N	                    	Maria Ines          	\N	DNI 	25696921	27	25696921	7	F	1977-01-01	\N	\N	1327	A	CAPITAL FEDERAL	4	2015	7	2022	C	AR
826	MORALES             	\N	                    	Matías Leandro      	\N	DNI 	26435598	20	26435598	3	M	1978-02-04	\N	\N	826	A	CAPITAL FEDERAL	7	2013	7	2022	C	AR
2343	CASTRO              	\N	                    	Christian Alejandro 	\N	DNI 	36736585	20	36736585	5	M	1992-08-31	\N	\N	2343	A	AVELLANEDA	5	2022	10	2022	B	AR
571	KANOBEL             	BERMÚDEZ            	OCHOA               	Maria Cristina      	\N	DNI 	16090375	27	16090375	4	F	1962-10-12	\N	\N	571	A	Ciudad Autónoma de Buenos Aires	9	2012	8	2022	C	AR
1598	CHARAF              	\N	                    	Jesica              	\N	DNI 	35727857	27	35727857	6	F	1991-01-08	\N	\N	1598	A	Villa Crespo	9	2015	8	2022	B	AR
1628	RODRIGUEZ           	\N	                    	Walter Javier       	\N	DNI 	25513236	23	25513236	9	M	1976-09-10	\N	\N	1628	A	AVELLANEDA	10	2015	9	2022	B	AR
1870	MALDONADO           	\N	                    	Brian Leonel        	\N	DNI 	38668378	20	38668378	7	M	1994-12-07	\N	\N	1870	A	QUILMES	4	2017	8	2022	B	AR
2073	PUTARO              	\N	                    	Federico Gaston     	\N	DNI 	35347259	20	35347259	4	M	1990-05-16	\N	\N	2073	A	Lanús	9	2018	8	2022	B	AR
2363	DI LILLO            	\N	                    	Gianni Raul         	\N	DNI 	33295667	24	33295667	8	M	1987-10-14	\N	\N	2363	A	LOMAS DE ZAMORA	8	2022	10	2022	B	AR
2364	OTTAVIANO           	\N	                    	Cynthia Lujan       	\N	DNI 	23250442	27	23250442	6	F	1973-04-10	\N	\N	2364	A	CABA	8	2022	8	2022	B	AR
2365	CORONEL             	\N	                    	Monica Elena        	\N	DNI 	27649022	27	27649022	8	F	1979-09-16	\N	\N	2365	A	AVELLANEDA	8	2022	8	2022	B	AR
601	TOMSIC              	FATUR               	                    	Ricardo Jorge       	\N	DNI 	14922352	20	14922352	6	M	1962-06-18	\N	\N	601	A	Avellanesa	10	2012	8	2022	B	AR
2346	BALESTRI            	\N	                    	Luis A              	\N	DNI 	25415095	23	25415095	9	M	1976-07-20	\N	\N	2346	A	LA PLATA	5	2022	3	2023	B	AR
2358	TABORDA             	\N	                    	Eduardo Alberto     	\N	DNI 	24205305	20	24205305	3	M	1974-09-13	\N	\N	2358	A	CABA	6	2022	3	2023	C	AR
2356	MAGRI               	\N	                    	Juan Pablo          	\N	DNI 	28643138	20	28643138	1	M	1980-12-14	\N	\N	2356	A	CABA	6	2022	6	2023	C	AR
1800	LEVY                	\N	                    	Maria Celina        	\N	DNI 	20349060	27	20349060	2	F	1968-05-16	\N	\N	1800	A	CAPITAL FEDERAL	9	2016	8	2023	\N	\N
1354	ROVOIRA             	\N	                    	Arturo Oscar        	\N	DNI 	12517298	23	12517298	9	M	1956-06-09	\N	\N	1354	A	ROJAS	4	2015	7	2023	B	AR
86	LEMA                	BALBUENA            	                    	Claudia Andrea      	\N	DNI 	20717888	27	20717888	3	F	1969-03-22	\N	\N	86	A	Avellaneda	7	2011	9	2023	B	AR
2350	DI STASIO           	\N	                    	Yamila Celeste      	\N	DNI 	35362360	27	35362360	0	F	1990-10-13	\N	\N	2350	A	CABA	5	2022	9	2023	C	AR
2380	GARCIA GUIDA        	\N	                    	Maria Dilma         	\N	DNI 	17649005	27	17649005	0	F	1965-12-17	\N	\N	2380	A	Chivilcoy	9	2022	9	2022	B	AR
2362	GARBEROGLIO         	\N	                    	Mario Osvaldo       	\N	DNI 	29946158	20	29946158	1	M	1983-01-19	\N	\N	2362	A	Avellaneda	8	2022	8	2022	B	AR
2361	TODARELLO           	\N	                    	Carla Patricia      	\N	DNI 	29941766	27	29941766	8	F	1983-01-31	\N	\N	2361	A	Capital Federal	8	2022	8	2022	\N	AR
685	ESPONDA BEHRENS     	\N	                    	Natalia Irene       	\N	DNI 	24869580	27	24869580	9	F	1975-11-19	\N	\N	685	A	LA PLATA	3	2013	8	2022	B	AR
2368	ROJAS               	\N	                    	Rocio Ayelen        	\N	DNI 	36171044	23	36171044	4	F	1991-07-04	\N	\N	2368	A	C.A.B.A.	8	2022	8	2022	C	AR
2367	SALIETTI            	\N	                    	Cesar Matias        	\N	DNI 	32439108	20	32439108	9	M	1986-07-02	\N	\N	2367	A	C.A.B.A.	8	2022	8	2022	C	AR
2369	COPERTINO           	\N	                    	Florencia Eliana    	\N	DNI 	38786811	27	38786811	4	F	1995-01-01	\N	\N	2369	A	Buenos Aires	8	2022	8	2022	B	AR
2375	BELTRANI            	\N	                    	Mariano             	\N	DNI 	30957529	20	30957529	7	M	1984-05-07	\N	\N	2375	A	BUENOS AIRES	8	2022	8	2022	B	AR
2370	MARTYNIUK           	\N	                    	Mariana Edith       	\N	DNI 	26100251	27	26100251	0	F	1977-11-24	\N	\N	2370	A	Buenos Aires	8	2022	8	2022	B	AR
2366	MORONI              	\N	                    	Laura Florencia     	\N	DNI 	30555769	27	30555769	8	F	1983-09-30	\N	\N	2366	A	Capital Federal	8	2022	8	2022	C	AR
2372	ZUBIZARRETA         	\N	                    	Pablo Hernan        	\N	DNI 	23967237	20	23967237	0	M	1974-04-26	\N	\N	2372	A	CABA	8	2022	8	2022	C	AR
2376	ALBERTI             	\N	                    	Pablo Carlos        	\N	DNI 	26326966	20	26326966	8	M	1977-11-18	\N	\N	2376	A	LOMAS DE ZAMORA	9	2022	9	2022	B	AR
1673	BORJA               	\N	                    	Silvia Cristina     	\N	DNI 	13417311	23	13417311	4	F	1957-09-05	\N	\N	1673	A	Capital Federal	12	2015	9	2022	C	AR
2374	BORZONE             	\N	                    	Natalia Raquel      	\N	DNI 	32187143	27	32187143	2	F	1986-03-06	\N	\N	2374	A	CABA	8	2022	9	2022	C	AR
2383	LOPEZ               	\N	                    	Daniel Eduardo      	\N	DNI 	12895322	20	12895322	2	M	1958-12-07	\N	\N	2383	A	\N	9	2022	9	2022	\N	\N
1296	FRANCONIERI         	\N	                    	Jose Armando        	\N	DNI 	13264542	20	13264542	7	M	1959-05-19	\N	\N	1296	P	CAPITAL FEDERAL	2	2015	10	2022	C	AR
2382	DIAZ                	\N	                    	Lara                	\N	DNI 	37151943	27	37151943	8	F	1992-10-29	\N	\N	2382	A	LA PLATA	9	2022	9	2022	B	AR
64	FRANCONIERI         	LONGO               	                    	Luciano Ariel       	\N	DNI 	35189885	20	35189885	3	M	1990-04-17	\N	\N	64	A	Capital Federal	6	2011	10	2022	C	AR
2373	IVALDI              	\N	                    	Clarisa Laura       	\N	DNI 	24618532	27	24618532	3	F	1977-05-20	\N	\N	2373	A	CHIVILCOY	8	2022	9	2022	B	AR
2385	ITURBE TROCHE       	\N	                    	Junior Alberto      	\N	DNI 	93969362	23	93969362	9	M	1993-06-25	\N	\N	2385	A	PARAGUAY	10	2022	10	2022	\N	PY
2386	SAITTA              	\N	                    	Santiago Daniel     	\N	DNI 	27923549	20	27923549	6	M	1980-05-25	\N	\N	2386	A	CABA	10	2022	10	2022	C	AR
2387	SAINZ               	\N	                    	Mariana Edith       	\N	DNI 	25627929	27	25627929	6	F	1976-12-19	\N	\N	2387	A	CABA	10	2022	10	2022	B	AR
2388	COZZA               	\N	                    	Eduardo Nestor      	\N	DNI 	12349090	20	12349090	9	M	1956-05-12	\N	\N	2388	A	MORON	10	2022	10	2022	B	AR
1146	BARRAGAN            	\N	                    	Angelica Rosa       	\N	DNI 	10813291	23	10813291	4	F	1953-06-18	\N	\N	1146	J	LOMAS DE ZAMORA	5	2014	10	2022	B	AR
2395	VACIRCA             	\N	                    	Cesar Nicolas       	\N	DNI 	33913482	20	33913482	1	M	1988-08-17	\N	\N	2394	A	REMEDIOS DE ESCALADA	10	2022	10	2022	B	AR
2401	PAOLONI             	\N	                    	Alejandro Dario     	\N	DNI 	29945318	23	29945318	9	M	1982-11-20	\N	\N	2401	A	AVELLANEDA	10	2022	10	2022	B	AR
98	NIN                 	VITA                	                    	Maria Luz           	\N	DNI 	31822266	27	31822266	0	F	1985-08-27	\N	\N	98	A	Lanús	7	2011	10	2022	B	AR
976	FERNANDEZ GIANNI    	\N	                    	Marine Marcela      	\N	DNI 	24913661	27	24913661	7	F	1975-10-03	\N	\N	976	A	LOMAS DE ZAMORA	1	2014	10	2022	B	AR
2255	MONTIEL             	\N	                    	Raquel Miriam       	\N	DNI 	26663474	27	26663474	4	F	1978-06-07	\N	\N	2255	A	Avellaneda	9	2021	10	2022	B	AR
2397	SUAREZ PAZ          	\N	                    	Lucia Jimena        	\N	DNI 	37342138	27	37342138	9	M	1993-05-24	\N	\N	2397	A	\N	10	2022	10	2022	\N	\N
1219	REYNOSO             	\N	                    	Alicia Mabel        	\N	DNI 	13465769	27	13465769	9	F	1957-06-29	\N	\N	1219	P	BUENOS AIRES	8	2014	10	2022	B	AR
2315	GARAY               	\N	                    	Ayelen Soledad      	\N	DNI 	38929468	27	38929468	9	F	1995-06-20	\N	\N	2315	A	VILLA DOMINICO	4	2022	10	2022	B	AR
2186	LUCARDI             	UBEDA               	                    	Julia Belen         	\N	DNI 	39756467	27	39756467	9	F	1996-06-26	\N	\N	2186	A	C.A.B.A.	9	2020	10	2022	C	AR
2405	LLASER              	\N	                    	Gabriela Mariel     	\N	DNI 	37205794	27	37205794	2	F	1992-12-26	\N	\N	2405	A	CABA	10	2022	10	2022	B	AR
2402	TROTTA              	\N	                    	Leonardo Javier     	\N	DNI 	23606143	20	23606143	5	M	1973-09-05	\N	\N	2402	A	AVELLANEDA	10	2022	10	2022	B	AR
2400	GRECO               	\N	                    	Matias              	\N	DNI 	42820628	20	42820628	3	M	2000-08-08	\N	\N	2400	A	C.A.B.A.	10	2022	10	2022	C	AR
1198	LUNA                	\N	MAYOR               	Marta Irene         	\N	DNI 	14457778	27	14457778	2	F	1961-10-20	\N	\N	1198	P	San Juan	6	2014	10	2022	J	AR
2399	ALVAREZ BOUCHIER    	\N	                    	Maria Erika Victoria	\N	DNI 	31704689	27	31704689	3	F	1986-01-24	\N	\N	2399	A	Capital Federal	10	2022	10	2022	C	AR
2392	FERNANDEZ           	\N	                    	Sergio Gustavo      	\N	DNI 	20955536	20	20955536	1	M	1969-11-01	\N	\N	2392	A	LANUS	10	2022	10	2022	B	AR
2377	NAVARRO             	\N	                    	Ivana Paola         	\N	DNI 	34385564	27	34385564	3	F	1989-03-30	\N	\N	2377	A	Bernal	9	2022	3	2023	B	AR
2378	RICCARDI            	\N	                    	Elio Andres         	\N	DNI 	27338506	20	27338506	2	M	1979-05-06	\N	\N	2378	A	AVELLANEDA	9	2022	4	2023	B	AR
2379	VAN STRAATEN        	\N	                    	Paula               	\N	DNI 	33387284	27	33387284	1	M	1987-11-24	\N	\N	2379	A	SABN CARLOS DE BARILOCHE	9	2022	6	2023	R	AR
2371	LOVISA              	\N	                    	Cristian  Sebastian 	\N	DNI 	38929733	20	38929733	0	M	1994-12-02	\N	\N	2371	A	AVELLANEDA	8	2022	8	2023	B	AR
2384	GIACHELLO           	\N	                    	Jessica             	\N	DNI 	40504552	23	40504552	4	F	1997-11-03	\N	\N	2384	A	BUENOS AIRES	9	2022	8	2023	B	AR
2404	MARTINEZ            	\N	                    	Celeste Nahir       	\N	DNI 	43660728	27	43660728	3	F	2001-08-09	\N	\N	2404	A	QUILMES	10	2022	10	2022	B	AR
2407	ABRUTZKY            	\N	                    	Rosana              	\N	DNI 	22539959	27	22539959	5	F	1972-04-01	\N	\N	2407	A	BUENOS AIRES	10	2022	10	2022	B	AR
2403	SALVINI             	\N	                    	Sofia Belen         	\N	DNI 	40693433	27	40693433	6	F	1997-12-03	\N	\N	2403	A	Concepcion del Uruguay	10	2022	10	2022	E	AR
2398	ROMERO              	\N	                    	Gonzalo Hernan      	\N	DNI 	38562836	20	38562836	7	M	1994-07-13	\N	\N	2398	A	Quilmes	10	2022	10	2022	B	AR
2406	BENAVIDEZ           	\N	                    	Eduardo Hugo        	\N	DNI 	26552036	20	26552036	8	M	1978-02-28	\N	\N	2406	A	LANUS	10	2022	11	2022	B	AR
2394	CINIRELLA           	\N	                    	Facundo Ezequiel    	\N	DNI 	38496031	20	38496031	7	M	1994-07-24	\N	\N	2394	A	MALVINAS ARGENITNA	10	2022	10	2022	B	AR
2391	RAMPELLO            	\N	                    	Santiago Dario      	\N	DNI 	40932151	20	40932151	9	M	1999-12-14	\N	\N	2391	A	BUENOS AIRES	10	2022	10	2022	B	AR
8	DENAZIS             	\N	                    	Julia Marta         	\N	DNI 	13138073	27	13138073	4	F	1959-05-02	\N	\N	8	P	\N	2	2011	10	2022	\N	\N
2396	ZARZA               	\N	                    	Yael del Sagrado C. 	\N	DNI 	33194334	27	33194334	2	F	1987-08-31	\N	\N	2396	A	Capital Federal	10	2022	10	2022	C	AR
157	RANALLI             	\N	                    	Silvia Cristina     	\N	DNI 	13679394	27	13679394	8	F	1957-10-31	\N	\N	157	P	Avellaneda	7	2011	10	2022	B	AR
2393	ARENA               	\N	                    	Matias Nicolas      	\N	DNI 	44708542	23	44708542	9	M	2003-06-24	\N	\N	2393	A	C.A.B.A.	10	2022	10	2022	C	AR
248	OLAIZOLA            	RAMÍREZ             	BIANCHETTO          	Miriam Elisabet     	\N	DNI 	13327690	23	13327690	4	F	1957-12-08	\N	\N	248	P	Berisso	10	2011	10	2022	B	AR
335	FURNARI             	\N	VÁZQUEZ             	Juana Patricia      	\N	DNI 	13078685	27	13078685	0	F	1959-04-07	\N	\N	335	P	Ciudad Autónoma de Buenos Aires	2	2012	10	2022	C	AR
400	WAJSMAN             	FRIDMAN             	                    	Carlos Bernardo     	\N	DNI 	10996812	23	10996812	9	M	1953-08-23	\N	\N	400	P	Ciudad Autónoma de Buenos Aires	3	2012	10	2022	C	AR
533	BADARACCO           	\N	                    	Horacio Luis Pablo  	\N	DNI 	8634655	23	8634655	9	M	1951-06-29	\N	\N	533	P	Ciudad Autónoma de Buenos Aires	7	2012	10	2022	C	AR
731	CASTILLO            	\N	                    	Pablo Alberto       	\N	DNI 	13385726	20	13385726	6	M	1957-10-03	\N	\N	731	P	CAPITAL FEDERAL	4	2013	10	2022	C	AR
757	CARBALLO            	\N	                    	Cristina Teresa     	\N	DNI 	14774154	27	14774154	0	F	1962-02-07	\N	\N	757	P	CAPITAL FEDERAL	4	2013	10	2022	C	AR
963	BOLESINA            	\N	                    	Guillermo Angel     	\N	DNI 	12528516	20	12528516	4	M	1956-10-04	\N	\N	963	P	AVELLANEDA	12	2013	10	2022	B	AR
1326	MONTI               	\N	                    	Julio Alberto       	\N	DNI 	6151013	20	6151013	4	M	1948-11-30	\N	\N	1326	P	CAPITAL FEDERAL	4	2015	10	2022	C	AR
1533	SIERRA              	\N	                    	Maria Gabriela      	\N	DNI 	14382131	27	14382131	0	F	1960-09-30	\N	\N	1533	P	Lincoln	8	2015	10	2022	B	AR
1920	ANTEZANA LOPEZ      	\N	                    	Javier Armando      	\N	DNI 	14313392	20	14313392	4	M	1957-09-06	\N	\N	1920	P	ORURO	9	2017	10	2022	\N	BO
1579	CARCOVA             	\N	                    	Carlos Maria        	\N	DNI 	4376286	23	4376286	9	M	1941-06-02	\N	\N	1579	P	Ramos Mejía	9	2015	10	2022	B	AR
1166	ZUNINO              	\N	                    	Marina Gabriela     	\N	DNI 	20987304	23	20987304	4	F	1969-06-01	\N	\N	1166	P	BUENOS AIRES	6	2014	10	2022	B	AR
2408	CANTESANO           	\N	                    	Silvina Ruth        	\N	DNI 	23119698	27	23119698	1	F	1973-01-16	\N	\N	2408	A	BUENOS AIRES	11	2022	11	2022	B	AR
2409	ALVAREZ             	\N	                    	Elizabeth Bernarda  	\N	DNI 	26622702	27	26622702	2	F	1978-05-31	\N	\N	2409	A	Capital Federal	11	2022	11	2022	C	AR
2410	LEIVA               	\N	                    	Christy Maria       	\N	DNI 	29374574	23	29374574	9	F	1982-01-08	\N	\N	2410	A	Avellaneda	11	2022	11	2022	B	AR
2414	RIZZI               	\N	                    	Luka Franco         	\N	DNI 	42660495	20	42660495	8	M	2000-06-12	\N	\N	2414	A	CABA	11	2022	11	2022	C	AR
2411	GARCIA              	\N	                    	Silvia Leonidas     	\N	DNI 	24361489	27	24361489	4	F	1973-05-08	\N	\N	2411	A	Bovril	11	2022	11	2022	E	AR
2412	COSTA DEGOY         	\N	                    	Antonella           	\N	DNI 	18800036	27	18800036	9	F	1980-03-19	\N	\N	2412	A	ROMA	11	2022	11	2022	\N	IT
1168	ZITO LEMA           	\N	                    	Vicente Manuel      	\N	DNI 	4316896	20	4316896	8	M	1939-11-14	\N	\N	1168	P	CAPITAL FEDERAL	6	2014	12	2022	C	AR
2413	LOZA MONTAÑO        	\N	                    	Eric Cristian       	\N	DNI 	38040868	20	38040868	7	M	1993-12-02	\N	\N	2413	A	AVELLANEDA	11	2022	11	2022	B	AR
297	RENNA               	\N	                    	Andrea Fabiana      	\N	DNI 	20666255	27	20666255	2	F	1969-03-14	\N	\N	297	A	Quilmes	1	2012	11	2022	B	AR
2389	DOMINGUEZ           	\N	                    	Maria del Rocio     	\N	DNI 	33309945	23	33309945	4	F	1988-01-03	\N	\N	2389	A	RAMOS MEJIA	10	2022	11	2022	B	AR
2415	REGALADO            	\N	                    	Maria Cecilia       	\N	DNI 	23134644	27	23134644	4	F	1972-11-20	\N	\N	2415	A	QUILMES	11	2022	11	2022	B	AR
1585	SARASUA             	\N	                    	Yisell Itatí        	\N	DNI 	34413389	27	34413389	7	F	1989-06-26	\N	\N	1585	A	Obetá Misiones	9	2015	12	2022	N	AR
2137	ESPINDOLA           	\N	                    	Maria Teresa        	\N	DNI 	18421514	23	18421514	4	F	1967-07-20	\N	\N	2137	A	RAFAEL CALZADA	10	2019	12	2022	B	AR
661	SALGUERO            	\N	                    	Maria Jose          	\N	DNI 	27112970	27	27112970	5	F	1978-08-21	\N	\N	661	A	AVELLANEDA	2	2013	12	2022	B	AR
627	FERNANDEZ           	\N	                    	Lilian Clarisa      	\N	DNI 	26622991	27	26622991	2	F	1978-05-29	\N	\N	627	A	\N	12	2012	12	2022	\N	\N
1336	ALVAREZ             	\N	                    	Debora Gisele       	\N	DNI 	33606673	27	33606673	0	F	1988-07-07	\N	\N	1336	A	Avellaneda	4	2015	12	2022	B	AR
1908	ARRAYA              	\N	                    	Lucas Gaston        	\N	DNI 	36982456	20	36982456	3	M	1992-06-17	\N	\N	1908	A	WILDE	9	2017	12	2022	B	AR
530	LUBERIAGA MALDONADO 	\N	                    	Luis Alberto        	\N	DNI 	33220041	20	33220041	1	M	1987-08-14	\N	\N	530	P	Ciudad Autónoma de Buenos Aires	7	2012	12	2022	C	AR
1536	LETTIERI            	\N	                    	Jimena Carolina     	\N	DNI 	33024397	27	33024397	5	F	1987-06-11	\N	\N	1536	A	CAPITAL FEDERAL	8	2015	3	2023	C	AR
1726	GONORAZKY           	\N	                    	Coco                	\N	DNI 	20609834	27	20609834	7	X	1969-05-16	\N	\N	1726	A	SALTA	4	2016	5	2023	A	AR
2381	BAUR NOBLIA         	\N	                    	Maria Francisca     	\N	DNI 	37379599	27	37379599	8	F	1993-07-24	\N	\N	2381	A	VEDIA	9	2022	9	2023	B	AR
261	PENNISI             	ANDREUCCI           	                    	Mariano Ariel       	\N	DNI 	25836735	23	25836735	9	M	1977-03-29	\N	\N	261	P	Ciudad Autónoma de Buenos Aires	11	2011	12	2022	C	AR
1286	SIERRA              	\N	                    	Guillermo Francisco 	\N	DNI 	16192237	20	16192237	5	M	1963-06-19	\N	\N	1286	P	Ciudad Autónoma de Buenos Aires	11	2014	12	2022	C	AR
1991	GALLARATO           	\N	                    	Paola Evelina       	\N	DNI 	94209866	27	94209866	4	F	1975-11-08	\N	\N	1991	P	Torino	4	2018	2	2023	\N	IT
2417	SANTAMARINA         	\N	                    	Candela Belen       	\N	DNI 	46105127	27	46105127	3	F	1997-03-26	\N	\N	2417	A	Rafael Calzada	12	2022	12	2022	B	AR
745	QUINCHE PUENTES     	\N	                    	Yvonne Dorelly      	\N	LE  	94518558	27	94518558	4	M	1977-12-08	\N	\N	745	P	BUCARAMANGA	4	2013	12	2022	\N	CO
1400	MARTINEZ            	PEREYRA             	                    	Ariana Laura        	\N	DNI 	36296101	27	36296101	2	M	1991-05-26	\N	\N	1400	P	Ciudad Autónoma de Buenos Aires	5	2015	12	2022	C	AR
1649	IGLESIAS            	\N	                    	Gonzalo Hernan      	\N	DNI 	31782647	20	31782647	9	M	1985-07-20	\N	\N	1649	P	AVELLANEDA	10	2015	12	2022	B	AR
1591	MERCADO             	\N	                    	Franco Gabriel      	\N	DNI 	32969260	20	32969260	5	M	1987-05-07	\N	\N	1591	P	Avellaneda	9	2015	12	2022	B	AR
2036	CASIRIAIN           	\N	                    	Facundo Nahuel      	\N	DNI 	37293367	20	37293367	5	M	1993-03-16	\N	\N	2036	P	NOGOYA	6	2018	12	2022	E	AR
1942	PANIGO              	\N	                    	Demian Tupac        	\N	DNI 	24040864	20	24040864	4	M	1974-06-16	\N	\N	1942	P	La Plata	12	2017	2	2023	B	AR
1927	GUIDO               	\N	                    	Celeste Evangelina  	\N	DNI 	33453143	27	33453143	6	F	1987-10-16	\N	\N	1927	P	BUENOS AIRES	10	2017	2	2023	B	AR
300	LOPEZ               	\N	GALLI               	Virginia            	\N	DNI 	26466056	23	26466056	4	F	1977-12-19	\N	\N	300	P	Lomas de Zamora	1	2012	2	2023	B	AR
2418	RIVARA              	\N	                    	Ian Michel Uriel    	\N	DNI 	40479941	20	40479941	0	M	1997-05-24	\N	\N	2418	A	QUILMES	2	2023	2	2023	B	AR
1949	CALZONI             	\N	                    	Carolina Rocio      	\N	DNI 	41234660	27	41234660	8	F	1998-12-01	\N	\N	1949	A	Lanus	2	2018	2	2023	B	AR
2419	VENIALGO            	\N	                    	Daniel Alejandro    	\N	DNI 	39985972	20	39985972	8	M	1997-02-17	\N	\N	2419	A	EZEIZA	2	2023	3	2023	B	AR
304	IZZO                	\N	DELLA TORRE         	Ana Cristina        	\N	DNI 	28513444	27	28513444	2	F	1981-01-03	\N	\N	304	P	Quilmes	1	2012	2	2023	B	AR
328	FUENTES             	POSTIGO             	                    	Ariel Rodolfo       	\N	DNI 	29469843	20	29469843	5	M	1982-08-16	\N	\N	328	P	San Antonio de Padua	2	2012	2	2023	B	AR
174	ROMERO              	\N	                    	Marcelo Oscar       	\N	DNI 	14922371	20	14922371	2	M	1962-06-11	\N	\N	174	A	Avellaneda	8	2011	3	2023	B	AR
4	GANZ                	STRAVITZ            	                    	Nancy Elizabeth     	\N	DNI 	17333537	27	17333537	2	F	1964-10-18	\N	\N	4	P	CAPITAL FEDERAL	2	2011	2	2023	C	AR
41	BENITO              	MARQUEZ             	                    	Francisco Javier    	\N	DNI 	18299525	20	18299525	9	M	1967-06-19	\N	\N	41	P	Morón	6	2011	2	2023	B	AR
63	FERRO               	\N	                    	Filimer             	\N	DNI 	8404371	20	8404371	1	M	1950-10-17	\N	\N	63	P	Empedrado	6	2011	2	2023	W	AR
88	LOPEZ               	BOSCO               	                    	Patricia Adriana    	\N	DNI 	23378446	27	23378446	5	F	1973-12-06	\N	\N	88	P	Gral. Pico	7	2011	2	2023	L	AR
156	FIDALGO             	\N	                    	Darío Omar          	\N	DNI 	22151762	20	22151762	9	M	1971-06-23	\N	\N	156	P	Avellaneda	7	2011	2	2023	B	AR
179	FERNANDEZ           	YANNONE             	                    	Melina              	\N	DNI 	31231532	27	31231532	2	F	1985-01-14	\N	\N	179	P	Bragado	8	2011	2	2023	B	AR
2274	GARCIA IRUZUN       	\N	                    	Leila Maia          	\N	DNI 	39627410	27	39627410	3	F	1996-07-10	\N	\N	2274	P	C.A.B.A.	12	2021	2	2023	C	AR
2207	MAZA                	\N	                    	Andrea              	\N	DNI 	24903499	27	24903499	7	F	1975-12-11	\N	\N	2207	P	BUENOS AIRES	3	2021	2	2023	B	AR
2144	ALCARAZ             	ESPINDOLA           	                    	Ariel Godofredo     	\N	DNI 	21872993	20	21872993	3	M	1971-03-05	\N	\N	2144	P	\N	11	2019	2	2023	\N	\N
2133	MARTINEZ            	\N	                    	Marcela Jimena      	\N	DNI 	30944333	27	30944333	6	F	1984-06-11	\N	\N	2133	P	ISIDRO CASANOVA	10	2019	2	2023	B	AR
2103	SPINELLI            	\N	                    	Ezequiel Guillermo R	\N	DNI 	29025410	20	29025410	9	M	1981-10-22	\N	\N	2103	P	LA PLATA	5	2019	2	2023	B	AR
2082	GOMEZ               	\N	                    	Luciana Elizabeth   	\N	DNI 	34649244	27	34649244	4	F	1989-05-05	\N	\N	2082	P	Avellaneda	11	2018	2	2023	B	AR
354	GARRONE             	BENTO SCHNEIDER     	                    	Macarena            	\N	DNI 	35084772	27	35084772	9	M	1990-01-02	\N	\N	354	P	Ciudade Autónoma de Buenos Aires	2	2012	2	2023	C	AR
360	MERTEHIKIAN         	MANES MARZANO       	                    	Lucas Eduardo       	\N	DNI 	32783910	20	32783910	2	M	1986-12-18	\N	\N	360	P	Ciudad Autónoma de Buenos Aires	2	2012	2	2023	C	AR
372	MAYER               	MAYER               	                    	Liliana Judith      	\N	DNI 	26133087	27	26133087	9	F	1977-07-17	\N	\N	372	P	Ciudad Autónoma de Buenos Aires	2	2012	2	2023	C	AR
1874	SEGUI               	\N	                    	Eugenio             	\N	DNI 	33148559	20	33148559	5	M	1987-12-30	\N	\N	1874	P	CORONEL SUAREZ	4	2017	2	2023	\N	AR
1859	VALLE               	\N	                    	Ana Maria           	\N	DNI 	6653308	27	6653308	0	F	1950-09-17	\N	\N	1859	P	RAMOS MEJIA	4	2017	2	2023	B	AR
1847	PERALTA             	\N	                    	Facundo             	\N	DNI 	24583288	20	24583288	6	M	1975-05-06	\N	\N	1847	P	Capital Federal	3	2017	2	2023	C	AR
1758	ALAGIA              	\N	                    	Alejandro Jorge     	\N	DNI 	16582927	20	16582927	2	M	1963-09-20	\N	\N	1758	P	CAPITAL FEDERAL	5	2016	2	2023	C	AR
1667	PUPPIO ZUBIRIA      	\N	                    	Tomas               	\N	DNI 	33219867	20	33219867	0	M	1987-09-20	\N	\N	1667	P	AZUL	11	2015	2	2023	\N	AR
1658	PEREZ PEJCIC        	\N	                    	Gonzalo             	\N	DNI 	34080507	20	34080507	1	M	1988-09-13	\N	\N	1658	P	CAPITAL FEDERAL	11	2015	2	2023	C	AR
463	D'ANDREA            	RÍOS                	                    	Leonardo Javier     	\N	DNI 	29523829	20	29523829	2	M	1982-06-16	\N	\N	463	P	Lanús	4	2012	2	2023	B	AR
477	TORRES FERREIRA     	FERREIRA FERNÁNDEZ  	                    	Gladys Concepcion   	\N	DNI 	92390763	27	92390763	2	F	1966-04-19	\N	\N	477	P	José Fassardi	5	2012	2	2023	\N	PY
1557	YACOVINO            	\N	                    	Maria Paula         	\N	DNI 	24953584	27	24953584	8	F	1976-01-14	\N	\N	1557	P	LAPLATA	9	2015	2	2023	B	AR
497	MENDIZABAL          	CORBO               	                    	Nuria Marcela       	\N	DNI 	28445208	27	28445208	4	F	1981-01-08	\N	\N	497	P	Ciudad Autónoma de Buenos Aires	5	2012	2	2023	C	AR
567	GADLER BARIONI      	\N	                    	Silvio Víctor José  	\N	DNI 	93431345	20	93431345	4	M	1954-09-22	\N	\N	567	P	Caracas (Nac: italiana)	9	2012	2	2023	\N	VE
572	DRATMAN             	DA SILVA            	                    	Ezequiel            	\N	DNI 	25598687	20	25598687	3	M	1976-10-01	\N	\N	572	P	Ciudad Autónoma de Buenos Aires	9	2012	2	2023	C	AR
574	DIAZ ROSAENZ        	LANDONI             	                    	María Micaela       	\N	DNI 	30448191	27	30448191	4	F	1983-08-07	\N	\N	574	P	Ciudad Autónoma de  Buenos Aires	9	2012	2	2023	C	AR
591	TAUS                	ECHEVERRÍA          	                    	Matias              	\N	DNI 	23306523	24	23306523	0	M	1974-04-22	\N	\N	591	P	Avellaneda	10	2012	2	2023	B	AR
641	CERROTTA            	\N	                    	Cecilia             	\N	DNI 	18365247	27	18365247	3	F	1967-02-25	\N	\N	641	P	CAPITAL FEDERAL	1	2013	2	2023	C	AR
713	RODRIGUEZ           	Lema                	                    	Ángel               	\N	DNI 	5219041	20	5219041	0	M	1947-10-04	\N	\N	713	P	AVELLANEDA	3	2013	2	2023	\N	AR
1335	CRIVARO             	TONONI              	                    	Pablo Nicolás       	\N	DNI 	34434762	20	34434762	0	M	1989-03-04	\N	\N	1335	P	Capital Federal	4	2015	2	2023	B	AR
758	BRASESCO            	\N	                    	Nadia Soledad       	\N	DNI 	27702546	27	27702546	4	F	1979-09-17	\N	\N	758	P	LA FUSTA	4	2013	2	2023	B	AR
788	GIMENEZ             	\N	                    	Claudia Andrea      	\N	DNI 	16495692	27	16495692	5	F	1963-02-03	\N	\N	788	P	CAPITAL FEDERAL	5	2013	2	2023	\N	\N
797	BENADIBA            	\N	                    	Laura Rebeca        	\N	DNI 	17333800	27	17333800	2	F	1965-06-26	\N	\N	797	P	CAPITAL FEDERAL	6	2013	2	2023	C	AR
850	LOPEZ               	\N	                    	Sebastián Gabriel   	\N	DNI 	25130244	20	25130244	9	M	1975-12-24	\N	\N	850	P	AVELLANEDA	8	2013	2	2023	B	AR
1277	BENMAOR             	\N	                    	Víctor Pablo        	\N	DNI 	24708063	20	24708063	6	M	1975-04-23	\N	\N	1277	P	AVELLANEDA	11	2014	2	2023	B	AR
1273	PAGLIA              	RACIGH              	                    	Yanina Belén        	\N	DNI 	31694281	23	31694281	4	F	1985-10-10	\N	\N	1273	P	Ciudad Autónoma de Buenos Aires	10	2014	2	2023	C	AR
1241	PRUÑONOSA           	\N	                    	Diego Martin        	\N	DNI 	39549836	20	39549836	4	M	1994-04-12	\N	\N	1241	P	BUENOS AIRES	9	2014	2	2023	B	AR
1232	ORBUCH              	\N	                    	Iván Pablo          	\N	DNI 	26562128	20	26562128	8	M	1978-04-10	\N	\N	1232	P	CAPITAL FEDERAL	8	2014	2	2023	C	AR
1221	KRIGER              	\N	                    	Matías Sebastián    	\N	DNI 	28985679	20	28985679	0	M	1981-08-01	\N	\N	1221	P	Ciudad Autónoma de Buenos Aires	8	2014	2	2023	C	AR
1184	ACCOMAZZO SCOTTI    	SCOTTI              	                    	Natalia Celeste     	\N	DNI 	35375580	27	35375580	9	F	1990-11-03	\N	\N	1184	P	Ciudad Autónoma de Buenos Aires	6	2014	2	2023	C	AR
2432	PALLERO             	\N	                    	Sebastian           	\N	DNI 	25359913	20	25359913	9	M	1976-06-11	\N	\N	2432	A	CABA	3	2023	3	2023	C	AR
2420	BATALLANES BASAIL   	\N	                    	Macarena            	\N	DNI 	36729215	27	36729215	1	F	1992-04-07	\N	\N	2420	A	CABA	2	2023	2	2023	C	AR
2428	MAGGIORI            	\N	                    	Gianni              	\N	DNI 	94270046	20	94270046	7	M	1991-12-03	\N	\N	2428	A	PIACENZA ITALIA	3	2023	3	2023	\N	IT
2426	LEAL                	\N	                    	Luciano Gaspar      	\N	DNI 	40514151	20	40514151	6	M	1997-07-08	\N	\N	2426	A	CABA	3	2023	3	2023	B	AR
2424	QUINTANA            	\N	                    	Exequiel Mario      	\N	DNI 	31463034	20	31463034	4	M	1985-03-06	\N	\N	2424	A	BUENOS AIRES	3	2023	3	2023	B	AR
2421	GALFRASCOLI         	\N	                    	Gaston Luis         	\N	DNI 	37718542	27	37718542	6	M	1993-06-03	\N	\N	2421	A	BELLA VISTA	3	2023	3	2023	W	AR
2422	ROJAS               	\N	                    	Alan Patricio       	\N	DNI 	36484850	24	36484850	8	M	1991-11-14	\N	\N	2422	A	AVELLANEDA	3	2023	3	2023	B	AR
2423	GUARRERA            	\N	                    	Daniela Ayelem      	\N	DNI 	31026700	27	31026700	2	F	1984-04-25	\N	\N	2423	A	LANUS	3	2023	3	2023	B	AR
2427	SANTILLAN           	\N	                    	Eduardo Emiliano    	\N	DNI 	40405605	20	40405605	1	M	1997-06-25	\N	\N	2427	A	VILLAGUAY	3	2023	3	2023	E	AR
2431	BONACHERA           	\N	                    	Ornella Paula       	\N	DNI 	46119546	27	46119546	1	F	2004-09-04	\N	\N	2431	A	CABA	3	2023	3	2023	B	AR
2430	PORTILLO            	\N	                    	Jimena Daniela      	\N	DNI 	35762960	27	35762960	3	F	1991-01-05	\N	\N	2430	A	CABA	3	2023	3	2023	B	AR
2433	ALBORNOZ            	\N	                    	Agustin Alejandro   	\N	DNI 	45431780	20	45431780	8	M	2003-12-23	\N	\N	2433	A	FLORENCIO VARELA	3	2023	3	2023	B	AR
2425	ENRIQUE             	\N	                    	Edgardo Ariel       	\N	DNI 	24821503	20	24821503	9	M	1975-08-22	\N	\N	2425	A	CABA	3	2023	3	2023	C	AR
2434	PERNI               	\N	                    	Sofia Belen         	\N	DNI 	32017771	27	32017771	0	F	1985-10-23	\N	\N	2434	A	MAR DEL PLATA	3	2023	3	2023	B	AR
2429	HUEZO LOPEZ         	\N	                    	NANCY CAROLINA      	\N	DNI 	95734906	23	95734906	4	F	1986-03-03	\N	\N	2429	A	TEGUCIGALPA	3	2023	3	2023	\N	HN
2435	BARONE              	\N	                    	Diego Hernan        	\N	DNI 	25558111	20	25558111	3	M	1976-10-23	\N	\N	2435	A	CABA	3	2023	3	2023	C	AR
2436	PIGNATARO           	\N	                    	Francisco Jose      	\N	DNI 	31987435	20	31987435	7	M	1985-12-04	\N	\N	2436	A	CABA	3	2023	3	2023	C	AR
2437	ACOSTA              	\N	                    	Rocio Belen         	\N	DNI 	34368831	24	34368831	4	F	1988-12-19	\N	\N	2437	A	BUENOS AIRES	3	2023	3	2023	B	AR
2337	DI MUCCIO           	\N	                    	Denise Desiree      	\N	DNI 	39924571	27	39924571	6	F	1996-09-18	\N	\N	2337	A	AVELLANEDA	4	2022	3	2023	B	AR
2443	OLGUIN              	\N	                    	Florencia Berenice  	\N	DNI 	36989201	27	36989201	6	F	1992-07-01	\N	\N	2443	A	QUILMES	3	2023	3	2023	B	AR
2442	COLTURI             	\N	                    	Daniel Hector       	\N	DNI 	22000761	20	22000761	9	M	1971-03-23	\N	\N	2442	A	LOMAS DE ZAMORA	3	2023	3	2023	B	AR
2440	CORGNALI            	\N	                    	Fiorella            	\N	DNI 	34517418	23	34517418	4	F	1989-08-20	\N	\N	2440	A	BERNAL	3	2023	3	2023	B	AR
2441	MELO                	\N	                    	Maria Del Pilar     	\N	DNI 	38031117	27	38031117	3	F	1993-12-29	\N	\N	2441	A	CABA	3	2023	3	2023	C	AR
2459	AGUIRRE             	\N	                    	Emanuel Luciano     	\N	DNI 	28471002	23	28471002	9	M	1980-12-19	\N	\N	2459	A	OLAVARRIA	4	2023	4	2023	B	AR
2460	CHIESA              	\N	                    	Juan                	\N	DNI 	20409111	20	20409111	1	M	1968-07-20	\N	\N	2460	A	ROSARIO	4	2023	4	2023	S	AR
334	BASUALDO            	RICHARDS            	                    	Guadalupe           	\N	DNI 	30335419	27	30335419	6	F	1983-06-01	\N	\N	334	A	CABA	2	2012	4	2023	C	AR
2452	FLORES              	\N	                    	Martin              	\N	DNI 	31163853	20	31163853	0	M	1984-07-31	\N	\N	2452	A	Capital Federal	3	2023	4	2023	C	AR
2446	ERLIJ               	\N	                    	Javier Alejandro    	\N	DNI 	20201766	20	20201766	6	M	1968-04-17	\N	\N	2446	A	CAPITAL FEDERAL	3	2023	3	2023	B	AR
2458	NAVARRO             	\N	                    	Benjamin Andres     	\N	DNI 	27024139	20	27024139	6	M	1978-12-06	\N	\N	2458	A	EZEIZA	4	2023	4	2023	C	AR
2451	MORO                	\N	                    	Facundo Martin      	\N	DNI 	30352439	20	30352439	9	M	1983-08-16	\N	\N	2451	A	CABA	3	2023	4	2023	C	AR
2445	ACERBI              	\N	                    	Camila Alejandra    	\N	DNI 	39714584	27	39714584	6	F	1996-07-08	\N	\N	2445	A	AVELLANEDA	3	2023	3	2023	B	AR
2438	GARCIA              	\N	                    	Roxana Valeria      	\N	DNI 	21110016	27	21110016	3	F	1969-10-05	\N	\N	2438	A	CABA	3	2023	3	2023	C	AR
2444	FOGAR               	\N	                    	Maria Belen         	\N	DNI 	36947995	23	36947995	4	F	1992-08-03	\N	\N	2444	A	CABA	3	2023	3	2023	C	AR
2447	COPPOLECCHIA        	\N	                    	Cecilia Beatriz     	\N	DNI 	28166289	27	28166289	4	F	1980-05-05	\N	\N	2447	A	CABA	3	2023	3	2023	C	AR
2439	BANINI              	\N	                    	Melina Sofia        	\N	DNI 	38201266	27	38201266	1	F	1994-03-20	\N	\N	2439	A	BUENOS AIRES	3	2023	3	2023	B	AR
2448	FILIPELLI COLLETTO  	\N	                    	Lucia Nieves        	\N	DNI 	34617036	27	34617036	6	F	1989-07-19	\N	\N	2448	A	CABA	3	2023	3	2023	C	AR
2449	ELIGGI              	\N	                    	Constanza           	\N	DNI 	28452193	27	28452193	0	F	1980-10-09	\N	\N	2449	A	LA PLATA	3	2023	3	2023	B	AR
2454	MESITI              	\N	                    	Nicolas Matias      	\N	DNI 	35994852	20	35994852	3	M	1992-01-26	\N	\N	2454	A	Lanus	4	2023	4	2023	B	AR
2456	VILAR               	\N	                    	Leonel Ezequiel     	\N	DNI 	33079135	20	33079135	8	M	1987-05-28	\N	\N	2456	A	QUILMEL	4	2023	4	2023	B	AR
2455	DELMENICO           	\N	                    	Milena Jazmin       	\N	DNI 	34103233	23	34103233	4	F	1988-11-29	\N	\N	2455	A	LANUS	4	2023	4	2023	B	AR
2457	KWIST               	\N	                    	Ivan Federico       	\N	DNI 	38630947	20	38630947	8	M	1994-10-25	\N	\N	2457	A	LANUS	4	2023	4	2023	B	AR
2453	SILVA               	\N	                    	Emilce Soledad      	\N	DNI 	28709632	27	28709632	7	F	1981-06-07	\N	\N	2453	A	Monte Grande	3	2023	4	2023	B	AR
2450	SANCHEZ RODRIGUEZ   	\N	                    	Marcelo Alejandro   	\N	DNI 	32808409	20	32808409	1	M	1987-05-25	\N	\N	2450	A	SAN JUAN	3	2023	4	2023	J	AR
1853	CALFAT              	\N	                    	Elisa               	\N	DNI 	94895565	27	94895565	8	F	1987-07-13	\N	\N	1853	A	Sao Paulo	4	2017	4	2023	\N	BR
2416	TOPALIAN            	\N	                    	Gabriela Eugenia    	\N	DNI 	27008571	27	27008571	2	F	1978-12-16	\N	\N	2416	A	LOMAS DE ZAMORA	12	2022	4	2023	B	AR
2467	GARDYN              	\N	                    	Natalia Beatriz     	\N	DNI 	29246798	27	29246798	8	F	1987-12-12	\N	\N	2467	A	CABA	4	2023	5	2023	C	AR
2468	ALCUAZ              	\N	                    	Camila              	\N	DNI 	40422845	27	40422845	0	F	1997-04-07	\N	\N	2468	A	Quilmes	4	2023	5	2023	B	AR
2314	ASPREA              	\N	                    	Giovanna            	\N	DNI 	39765262	27	39765262	4	F	1996-07-25	\N	\N	2314	A	QUILMES	4	2022	6	2023	B	AR
2475	PUITA               	\N	                    	Elizabeth Diana     	\N	DNI 	37041312	27	37041312	1	F	1992-09-01	\N	\N	2475	A	CABA	5	2023	5	2023	B	AR
2463	CABRERA CASTRO      	\N	                    	Marcelo Alan        	\N	DNI 	32024621	20	32024621	1	M	1986-02-15	\N	\N	2463	A	FLORENCIO VARELA	4	2023	4	2023	B	AR
2462	BOZZOLA             	\N	                    	Santiago Antonio    	\N	DNI 	23276520	20	23276520	9	M	1973-03-14	\N	\N	2462	A	CABA	4	2023	4	2023	C	AR
2461	BISBAL              	\N	                    	Mariano Juan        	\N	DNI 	24030935	20	24030935	2	M	1974-07-31	\N	\N	2461	A	CABA	4	2023	4	2023	C	AR
2481	VALEIRAS            	\N	                    	Veronica            	\N	DNI 	29359512	27	29359512	2	F	1982-02-16	\N	\N	2481	A	MAR DEL PLATA	6	2023	6	2023	B	AR
2476	VIDONI              	\N	                    	Aldana              	\N	DNI 	31096475	27	31096475	7	F	1984-09-01	\N	\N	2476	A	AVELLANEDA	5	2023	5	2023	B	AR
2477	GUTIERREZ RAINA     	\N	                    	Daniel Ernesto      	\N	DNI 	18155438	20	18155438	0	M	1955-10-09	\N	\N	2477	J	URUGUAY	5	2023	5	2023	\N	UY
2470	ALOI                	\N	                    	Juliana             	\N	DNI 	39352631	27	39352631	4	F	1995-10-16	\N	\N	2470	A	CABA	5	2023	5	2023	C	AR
2471	SANTAROSSA          	\N	                    	Julieta             	\N	DNI 	28233674	27	28233674	5	F	1988-06-26	\N	\N	2471	A	CABA	5	2023	5	2023	C	AR
2473	GALIZIA             	\N	                    	Fernando            	\N	DNI 	20891642	20	20891642	5	M	1969-04-28	\N	\N	2473	A	CABA	5	2023	5	2023	C	AR
2321	MAULE               	\N	                    	Marta Velia         	\N	DNI 	30801017	27	30801017	7	F	1984-02-23	\N	\N	2320	A	RIO GALLEGOS	4	2022	6	2023	R	AR
2469	PEREZ               	\N	                    	Lucia Jazmin        	\N	DNI 	33556621	27	33556621	7	F	1988-01-10	\N	\N	2469	A	LANUS	4	2023	5	2023	B	AR
2089	HAGMAN              	\N	                    	Itai                	\N	DNI 	19010320	20	19010320	0	M	1983-02-13	\N	\N	2089	A	Jerusalen	4	2019	6	2023	\N	IL
2474	CORBALAN            	\N	                    	Maria Laura         	\N	DNI 	33554158	27	33554158	3	F	1988-02-29	\N	\N	2474	A	REMEDIOS DE ESCALADA	5	2023	5	2023	B	AR
2472	CALELLO             	\N	                    	Pablo Rodolfo       	\N	DNI 	23123949	23	23123949	9	M	1972-12-27	\N	\N	2472	A	CABA	5	2023	5	2023	C	AR
2466	BAROCELLI           	\N	                    	Sergio Sebastian    	\N	DNI 	27707573	20	27707573	4	M	1979-10-23	\N	\N	2466	A	Necochea	4	2023	5	2023	B	AR
2478	RULE                	\N	                    	Sebastian           	\N	DNI 	31073716	20	31073716	0	M	1984-09-26	\N	\N	2478	A	lA PLATA	5	2023	5	2023	B	AR
1013	ROISMAN             	\N	                    	Vanesa              	\N	DNI 	23102124	27	23102124	3	F	1973-01-08	\N	\N	1013	P	CAPITAL FEDERAL	2	2014	5	2023	C	AR
940	PEREYRA             	\N	                    	Cesar Augusto Luis  	\N	DNI 	10983481	20	10983481	6	M	1953-09-30	\N	\N	940	P	BUENOS AIRES	11	2013	5	2023	B	AR
2482	PONIEMAN            	\N	                    	Greta Agustina      	\N	DNI 	38456322	27	38456322	3	F	1994-08-07	\N	\N	2482	A	CABA	6	2023	6	2023	B	AR
2465	RAMIREZ LAZARTE     	\N	                    	Crinstian Gonzalo   	\N	DNI 	39771406	20	39771406	4	M	1996-08-11	\N	\N	2465	A	La Boca	4	2023	5	2023	C	AR
2479	MAIDANA             	\N	                    	Daniela Vanina      	\N	DNI 	30459277	27	30459277	5	F	1983-08-19	\N	\N	2479	A	Florencio Varela	5	2023	6	2023	B	AR
2464	LOPEZ DE VICUÑA     	\N	                    	Javier              	\N	DNI 	16940138	20	16940138	2	M	1963-07-30	\N	\N	2464	A	NEUQUEN	4	2023	5	2023	Q	AR
2493	DI MAGGIO DADONE    	\N	                    	Martin              	\N	DNI 	35101285	20	35101285	5	M	1990-04-17	\N	\N	2493	A	Bolivar	7	2023	9	2023	B	AR
2480	SCALISE             	\N	                    	ROSA ANA            	\N	DNI 	17856782	27	17856782	4	F	1966-01-21	\N	\N	2480	A	AVELLANEDA	5	2023	6	2023	B	AR
2124	NOYA                	\N	                    	Joaquin             	\N	DNI 	27861958	20	27861958	4	M	1979-12-31	\N	\N	2124	A	Capital Federal	9	2019	6	2023	C	AR
2319	MARTINEZ            	\N	                    	Elsa Alicia         	\N	DNI 	18274765	27	18274765	9	F	1966-09-22	\N	\N	2319	A	AVELLANEDA	4	2022	6	2023	B	AR
2483	LLORET              	\N	                    	Agustina            	\N	DNI 	34150021	23	34150021	4	F	1988-10-26	\N	\N	2483	A	BUENOS AIRES	6	2023	6	2023	B	AR
2485	NAVARRO             	\N	                    	Ma. De Las Mercedes 	\N	DNI 	30466309	27	30466309	5	F	1983-10-19	\N	\N	2485	A	LANUS	6	2023	6	2023	B	AR
2486	LUNA                	\N	                    	Pablo Maximiliano   	\N	DNI 	42493132	20	42493132	3	M	2000-04-16	\N	\N	2486	A	AVELLANEDA	6	2023	6	2023	B	AR
2484	COUTO               	\N	                    	Ivana               	\N	DNI 	31558776	27	31558776	5	M	1985-05-03	\N	\N	2484	A	CORDOBA CAPITAL	6	2023	6	2023	X	AR
2488	RUBIN               	\N	                    	Rosa Marina         	\N	DNI 	30092593	27	30092593	1	F	1983-04-20	\N	\N	2488	A	AVELLANEDA	6	2023	6	2023	B	AR
2490	ELIZALDE            	\N	                    	Sofia               	\N	DNI 	36169884	27	36169884	9	F	1991-06-18	\N	\N	2490	A	CABA	7	2023	7	2023	B	AR
2487	SIAIRA              	\N	                    	Atilio Guillermo Alb	\N	DNI 	26738154	20	26738154	3	M	1978-07-05	\N	\N	2487	A	BALCARCE	6	2023	6	2023	B	AR
2491	MUSLADINO           	\N	                    	Sergio Osvaldo      	\N	DNI 	25614842	20	25614842	1	M	1977-02-27	\N	\N	2491	A	BUENOS AIRES	7	2023	7	2023	B	AR
2489	FUCHS               	\N	                    	Agostina            	\N	DNI 	35401805	27	35401805	0	F	1990-08-16	\N	\N	2489	A	QUILMES	6	2023	7	2023	B	AR
2494	CABALLERO           	\N	                    	Maria Laura         	\N	DNI 	45812518	27	45812518	5	F	1997-12-07	\N	\N	2494	A	Florencio Varela	7	2023	8	2023	B	AR
2492	RAJNERMAN           	\N	                    	Matias              	\N	DNI 	35972787	23	35972787	9	M	1991-05-10	\N	\N	2492	A	Ciudad Autonoma de Buenos Aires	7	2023	8	2023	B	AR
2495	SANTANDREA          	\N	                    	Cora Evangelina     	\N	DNI 	26129953	23	26129953	4	F	1978-01-25	\N	\N	2495	A	Marull	8	2023	9	2023	X	AR
2497	MORENO              	\N	                    	Antonio Alfredo     	\N	DNI 	11740510	23	11740510	9	M	1955-02-04	\N	\N	2497	A	CABA	8	2023	8	2023	C	AR
21	ALBAMONTE           	Varela              	                    	Lorena Paola        	\N	DNI 	20456494	27	20456494	4	F	1969-05-29	\N	\N	21	A	Avellaneda	6	2011	9	2023	B	AR
698	PACHECO             	\N	                    	Julieta Fernanda    	\N	DNI 	25419920	27	25419920	1	F	1976-10-09	\N	\N	698	A	BUENOS AIRES	3	2013	9	2023	B	AR
2500	DUARTE              	\N	                    	Elizabeth Maria L.  	\N	DNI 	19082928	27	19082928	1	F	1973-08-10	\N	\N	2500	A	Asuncion	9	2023	9	2023	\N	PY
2506	WILK                	\N	                    	Daniel Alejandro    	\N	DNI 	22472043	20	22472043	3	M	1971-12-01	\N	\N	2506	A	CABA	9	2023	9	2023	B	AR
2502	MENENDEZ            	\N	                    	Gustavo Alejandro   	\N	DNI 	17535925	20	17535925	8	M	1966-03-18	\N	\N	2502	A	LANUS	9	2023	9	2023	B	AR
2501	BIZET               	\N	                    	Mariana Alejandra   	\N	DNI 	31224743	27	31224743	2	F	1984-12-07	\N	\N	2501	A	Lomas de Zamora	9	2023	9	2023	B	AR
2504	FISCARELLI          	\N	                    	Diego Martin        	\N	DNI 	28519640	20	28519640	0	M	1980-11-16	\N	\N	2504	A	LA PLATA	9	2023	9	2023	B	AR
2507	ITURBURU            	\N	                    	Maximiliano         	\N	DNI 	22884285	20	22884285	1	M	1972-07-29	\N	\N	2507	A	QUILMES	9	2023	9	2023	B	AR
2508	POTENZA             	\N	                    	Claudia Graciela    	\N	DNI 	17391709	27	17391709	6	F	1965-04-22	\N	\N	2508	A	CABA	9	2023	9	2023	B	AR
2498	PRIVIDERA           	\N	                    	Nicolas             	\N	DNI 	21587516	20	21587516	5	M	1970-05-26	\N	\N	2498	A	Buenos Aires	9	2023	9	2023	B	AR
2496	STURLA              	\N	                    	Antonella           	\N	DNI 	32064279	27	32064279	0	F	1986-01-04	\N	\N	2496	A	BUENOS AIRES	8	2023	9	2023	B	AR
2499	PODZUS              	\N	                    	Patricia Elizabeth  	\N	DNI 	18167317	27	18167317	1	F	1967-07-14	\N	\N	2499	A	Ciudad Autonoma de Buenos Aires	9	2023	9	2023	B	AR
2505	GONZALEZ            	\N	                    	Maria Sol           	\N	DNI 	38587201	27	38587201	7	F	1994-09-14	\N	\N	2505	A	AVELLANEDA	9	2023	9	2023	B	AR
2503	LANZIANO            	\N	                    	Mariano Nicolas     	\N	DNI 	31304306	20	31304306	2	M	1985-03-23	\N	\N	2503	A	Floresta vte. lopez	9	2023	9	2023	B	AR
1960	ESCOBAR             	\N	                    	Mariana Eugenia     	\N	DNI 	33079141	27	33079141	7	F	1987-05-27	\N	\N	1960	A	BUENOS AIRES	3	2018	9	2023	B	AR
2510	CABOT               	\N	                    	Lucas Nahuel        	\N	DNI 	38708397	23	38708397	9	M	1995-01-30	\N	\N	2510	A	Ciudad Autonoma de Buenos Aires	9	2023	9	2023	C	AR
2509	LELL                	\N	                    	Julian Alejandro    	\N	DNI 	30437525	20	30437525	7	M	1983-09-11	\N	\N	2509	A	BUENOS AIRES	9	2023	9	2023	B	AR
2511	GLASSERMAN          	\N	                    	Alejandro           	\N	DNI 	12299401	20	12299401	6	M	1958-04-24	\N	\N	2511	J	Ciudad Autonoma de Buenos Aires	9	2023	10	2023	C	AR
\.


--
-- Name: dh01 dh01_pkey; Type: CONSTRAINT; Schema: mapuche; Owner: postgres
--

ALTER TABLE ONLY mapuche.dh01
    ADD CONSTRAINT dh01_pkey PRIMARY KEY (nro_legaj);


--
-- Name: ix_dh01_k_pais_nacim; Type: INDEX; Schema: mapuche; Owner: postgres
--

CREATE INDEX ix_dh01_k_pais_nacim ON mapuche.dh01 USING btree (pais_nacim);


--
-- Name: ix_dh01_k_pcia_nacim; Type: INDEX; Schema: mapuche; Owner: postgres
--

CREATE INDEX ix_dh01_k_pcia_nacim ON mapuche.dh01 USING btree (pcia_nacim);


--
-- Name: ix_dh01_key_desc_apyno; Type: INDEX; Schema: mapuche; Owner: postgres
--

CREATE INDEX ix_dh01_key_desc_apyno ON mapuche.dh01 USING btree (desc_appat, desc_nombr);


--
-- Name: ix_dh01_key_nro_cuil; Type: INDEX; Schema: mapuche; Owner: postgres
--

CREATE UNIQUE INDEX ix_dh01_key_nro_cuil ON mapuche.dh01 USING btree (nro_cuil1, nro_cuil, nro_cuil2);


--
-- Name: ix_dh01_key_nro_docum; Type: INDEX; Schema: mapuche; Owner: postgres
--

CREATE UNIQUE INDEX ix_dh01_key_nro_docum ON mapuche.dh01 USING btree (tipo_docum, nro_docum);


--
-- Name: ix_dh01_key_tipo_docum; Type: INDEX; Schema: mapuche; Owner: postgres
--

CREATE INDEX ix_dh01_key_tipo_docum ON mapuche.dh01 USING btree (nro_tabla, tipo_docum);


--
-- Name: dh01 tauditoria_dh01; Type: TRIGGER; Schema: mapuche; Owner: postgres
--

CREATE TRIGGER tauditoria_dh01 AFTER INSERT OR DELETE OR UPDATE ON mapuche.dh01 FOR EACH ROW EXECUTE PROCEDURE mapuche_auditoria.sp_dh01();


--
-- Name: dh01 fk_dh01_dha3_pais_nacim; Type: FK CONSTRAINT; Schema: mapuche; Owner: postgres
--

ALTER TABLE ONLY mapuche.dh01
    ADD CONSTRAINT fk_dh01_dha3_pais_nacim FOREIGN KEY (pais_nacim) REFERENCES mapuche.dha3(codigo_pais) ON UPDATE CASCADE DEFERRABLE;


--
-- Name: dh01 fk_dh01_dha5_pcia_nacim; Type: FK CONSTRAINT; Schema: mapuche; Owner: postgres
--

ALTER TABLE ONLY mapuche.dh01
    ADD CONSTRAINT fk_dh01_dha5_pcia_nacim FOREIGN KEY (pcia_nacim) REFERENCES mapuche.dha5(codigo_pcia) ON UPDATE CASCADE DEFERRABLE;


--
-- Name: TABLE dh01; Type: ACL; Schema: mapuche; Owner: postgres
--

GRANT ALL ON TABLE mapuche.dh01 TO mapuchecnx;
GRANT ALL ON TABLE mapuche.dh01 TO aheidenreich;


--
-- PostgreSQL database dump complete
--

