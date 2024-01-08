CREATE TABLE organism
(
    id         SERIAL PRIMARY KEY,
    code       TEXT      NOT NULL,
    name_latin TEXT      NOT NULL,
    regnum     TEXT,
    classis    TEXT,
    ordo       TEXT,
    familia    TEXT,
    genus      TEXT,
    species    TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    view_count INTEGER   NOT NULL DEFAULT 0,
    updated_at TIMESTAMP
);

CREATE UNIQUE INDEX organism__code__idx
    ON organism (code);

INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('motacilla_flava', 'Motacilla flava', 'Animalia', 'Aves', 'Passeriformes', 'Motacillidae', 'Motacilla',
        'Motacilla flava');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('burhinus_oedicnemus', 'Burhinus oedicnemus', 'Animalia', 'Aves', 'Charadriiformes', 'Burhinidae',
        'Burhinus', 'Burhinus oedicnemus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('lullula_arborea', 'Lullula arborea', 'Animalia', 'Aves', 'Passeriformes', 'Alaudidae', 'Lullula',
        'Lullula arborea');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('columba_livia', 'Columba livia', 'Animalia', 'Aves', 'Columbiformes', 'Columbidae', 'Columba',
        'Columba livia');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('parus_montanus', 'Parus montanus', 'Animalia', 'Aves', 'Passeriformes', 'Paridae', 'Parus',
        'Parus montanus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('passer_hispaniolensis', 'Passer hispaniolensis', 'Animalia', 'Aves', 'Passeriformes', 'Passeridae',
        'Passer', 'Passer hispaniolensis');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('lanius_minor', 'Lanius minor', 'Animalia', 'Aves', 'Passeriformes', 'Laniidae', 'Lanius', 'Lanius minor');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('porzana_porzana', 'Porzana porzana', 'Animalia', 'Aves', 'Gruiformes', 'Rallidae', 'Porzana',
        'Porzana porzana');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('columba_oenas', 'Columba oenas', 'Animalia', 'Aves', 'Columbiformes', 'Columbidae', 'Columba',
        'Columba oenas');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('upupa_epops', 'Upupa epops', 'Animalia', 'Aves', 'Bucerotiformes', 'Upupidae', 'Upupa', 'Upupa epops');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('luscinia_megarhynchos', 'Luscinia megarhynchos', 'Animalia', 'Aves', 'Passeriformes', 'Muscicapidae',
        'Luscinia', 'Luscinia megarhynchos');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('luscinia_svecica', 'Luscinia svecica', 'Animalia', 'Aves', 'Passeriformes', 'Muscicapidae', 'Luscinia',
        'Luscinia svecica');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('fringilla_coelebs', 'Fringilla coelebs', 'Animalia', 'Aves', 'Passeriformes', 'Fringillidae',
        'Fringilla', 'Fringilla coelebs');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('anser_anser', 'Anser anser', 'Animalia', 'Aves', 'Anseriformes', 'Anatidae', 'Anser', 'Anser anser');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('asio_flammeus', 'Asio flammeus', 'Animalia', 'Aves', 'Strigiformes', 'Strigidae', 'Asio',
        'Asio flammeus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('serinus_serinus', 'Serinus serinus', 'Animalia', 'Aves', 'Passeriformes', 'Fringillidae', 'Serinus',
        'Serinus serinus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('zapornia_parva', 'Zapornia parva (Porzana parva)', 'Animalia', 'Aves', 'Gruiformes', 'Rallidae',
        'Zapornia', 'Zapornia parva');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('certhia_familiaris', 'Certhia familiaris', 'Animalia', 'Aves', 'Passeriformes', 'Certhiidae', 'Certhia',
        'Certhia familiaris');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('anthus_cervinus', 'Anthus cervinus', 'Animalia', 'Aves', 'Passeriformes', 'Motacillidae', 'Anthus',
        'Anthus cervinus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('bonasa_bonasia', 'Bonasa bonasia', 'Animalia', 'Aves', 'Galliformes', 'Phasianidae', 'Bonasa',
        'Bonasa bonasia');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('galerida_cristata', 'Galerida cristata', 'Animalia', 'Aves', 'Passeriformes', 'Alaudidae', 'Galerida',
        'Galerida cristata');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('scolopax_rusticola', 'Scolopax rusticola', 'Animalia', 'Aves', 'Charadriiformes', 'Scolopacidae',
        'Scolopax', 'Scolopax rusticola');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('sturnus_roseus', 'Sturnus roseus', 'Animalia', 'Aves', 'Passeriformes', 'Sturnidae', 'Pastor',
        'Pastor roseus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('tachybaptus_ruficollis', 'Tachybaptus ruficollis', 'Animalia', 'Aves', 'Podicipediformes',
        'Podicipedidae', 'Tachybaptus', 'Tachybaptus ruficollis');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('emberiza_cirlus', 'Emberiza cirlus', 'Animalia', 'Aves', 'Passeriformes', 'Emberizidae', 'Emberiza',
        'Emberiza cirlus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('fulica_atra', 'Fulica atra', 'Animalia', 'Aves', 'Gruiformes', 'Rallidae', 'Fulica', 'Fulica atra');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('erithacus_rubecula', 'Erithacus rubecula', 'Animalia', 'Aves', 'Passeriformes', 'Muscicapidae',
        'Erithacus', 'Erithacus rubecula');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('nucifraga_caryocatactes', 'Nucifraga caryocatactes', 'Animalia', 'Aves', 'Passeriformes', 'Corvidae',
        'Nucifraga', 'Nucifraga caryocatactes');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('otis_tarda', 'Otis tarda', 'Animalia', 'Aves', 'Otidiformes', 'Otididae', 'Otis', 'Otis tarda');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('parus_lugubris', 'Parus lugubris', 'Animalia', 'Aves', 'Passeriformes', 'Paridae', 'Parus',
        'Parus lugubris');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('sylvia_atricapilla', 'Sylvia atricapilla', 'Animalia', 'Aves', 'Passeriformes', 'Sylviidae', 'Sylvia',
        'Sylvia atricapilla');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('accipiter_gentilis', 'Accipiter gentilis', 'Animalia', 'Aves', 'Accipitriformes', 'Accipitridae',
        'Accipiter', 'Accipiter gentilis');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('phylloscopus_collybita', 'Phylloscopus collybita', 'Animalia', 'Aves', 'Passeriformes', 'Sylviidae',
        'Phylloscopus', 'Phylloscopus collybita');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('tichodroma_muraria', 'Tichodroma muraria', 'Animalia', 'Aves', 'Passeriformes', 'Sittidae',
        'Tichodroma', 'Tichodroma muraria');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('lanius_excubitor', 'Lanius excubitor', 'Animalia', 'Aves', 'Passeriformes', 'Laniidae', 'Lanius',
        'Lanius excubitor');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('cuculus_canorus', 'Cuculus canorus', 'Animalia', 'Aves', 'Cuculiformes', 'Cuculidae', 'Cuculus',
        'Cuculus canorus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('chlidonias_hybrida', 'Chlidonias hybrida', 'Animalia', 'Aves', 'Charadriiformes', 'Laridae',
        'Chlidonias', 'Chlidonias hybrida');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('netta_rufina', 'Netta rufina', 'Animalia', 'Aves', 'Anseriformes', 'Anatidae', 'Netta', 'Netta rufina');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('acrocephalus_scirpaceus', 'Acrocephalus scirpaceus', 'Animalia', 'Aves', 'Passeriformes', 'Sylviidae',
        'Acrocephalus', 'Acrocephalus scirpaceus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('milvus_milvus', 'Milvus milvus', 'Animalia', 'Aves', 'Accipitriformes', 'Accipitridae', 'Milvus',
        'Milvus milvus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('gallinago_gallinago', 'Gallinago gallinago', 'Animalia', 'Aves', 'Charadriiformes', 'Scolopacidae',
        'Gallinago', 'Gallinago gallinago');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('chlidonias_leucopterus', 'Chlidonias leucopterus', 'Animalia', 'Aves', 'Charadriiformes', 'Laridae',
        'Chlidonias', 'Chlidonias leucopterus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('cettia_cetti', 'Cettia cetti', 'Animalia', 'Aves', 'Passeriformes', 'Sylviidae', 'Cettia',
        'Cettia cetti');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('hippolais_icterina', 'Hippolais icterina', 'Animalia', 'Aves', 'Passeriformes', 'Sylviidae',
        'Hippolais', 'Hippolais icterina');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('hirundo_rustica', 'Hirundo rustica', 'Animalia', 'Aves', 'Passeriformes', 'Hirundinidae', 'Hirundo',
        'Hirundo rustica');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('parus_ater', 'Parus ater', 'Animalia', 'Aves', 'Passeriformes', 'Paridae', 'Parus', 'Parus ater');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('spatula_clypeata', 'Spatula clypeata (Anas clypeata)', 'Animalia', 'Aves', 'Anseriformes', 'Anatidae',
        'Spatula', 'Spatula clypeata');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('bucephala_clangula', 'Bucephala clangula', 'Animalia', 'Aves', 'Anseriformes', 'Anatidae', 'Bucephala',
        'Bucephala clangula');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('mergus_serrator', 'Mergus serrator', 'Animalia', 'Aves', 'Anseriformes', 'Anseriformes', 'Mergus',
        'Mergus serrator');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('actitis_hypoleucos', 'Actitis hypoleucos', 'Animalia', 'Aves', 'Charadriiformes', 'Scolopacidae',
        'Actitis', 'Actitis hypoleucos');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('oriolus_oriolus', 'Oriolus oriolus', 'Animalia', 'Aves', 'Passeriformes', 'Oriolidae', 'Oriolus',
        'Oriolus oriolus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('larus_ridibundus', 'Larus ridibundus (Chroicocephalus ridibundus)', 'Animalia', 'Aves',
        'Charadriiformes', 'Laridae', 'Larus', 'Larus ridibundus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('locustella_naevia', 'Locustella naevia', 'Animalia', 'Aves', 'Passeriformes', 'Sylviidae', 'Locustella',
        'Locustella naevia');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('ardeola_ralloides', 'Ardeola ralloides', 'Animalia', 'Aves', 'Pelecaniformes', 'Ardeidae', 'Ardeola',
        'Ardeola ralloides');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('mergus_merganser', 'Mergus merganser', 'Animalia', 'Aves', 'Anseriformes', 'Anatidae', 'Mergus',
        'Mergus merganser');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('pica_pica', 'Pica pica', 'Animalia', 'Aves', 'Passeriformes', 'Corvidae', 'Pica', 'Pica pica');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('loxia_curvirostra', 'Loxia curvirostra', 'Animalia', 'Aves', 'Passeriformes', 'Fringillidae', 'Loxia',
        'Loxia curvirostra');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('milvus_migrans', 'Milvus migrans', 'Animalia', 'Aves', 'Accipitriformes', 'Accipitridae', 'Milvus',
        'Milvus migrans');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('nycticorax_nycticorax', 'Nycticorax nycticorax', 'Animalia', 'Aves', 'Pelecaniformes', 'Ardeidae',
        'Nycticorax', 'Nycticorax nycticorax');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('jynx_torquilla', 'Jynx torquilla', 'Animalia', 'Aves', 'Piciformes', 'Picidae', 'Jynx',
        'Jynx torquilla');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('ixobrychus_minutus', 'Ixobrychus minutus', 'Animalia', 'Aves', 'Pelecaniformes', 'Ardeidae',
        'Ixobrychus', 'Ixobrychus minutus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('eudromias_morinellus', 'Eudromias morinellus (Charadrius morinellus)', 'Animalia', 'Aves',
        'Charadriiformes', 'Charadriidae', 'Charadrius', 'Eudromias morinellus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('turdus_merula', 'Turdus merula', 'Animalia', 'Aves', 'Passeriformes', 'Turdidae', 'Turdus',
        'Turdus merula');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('coracias_garrulus', 'Coracias garrulus', 'Animalia', 'Aves', 'Coraciiformes', 'Coraciidae', 'Coracias',
        'Coracias garrulus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('tadorna_tadorna', 'Tadorna tadorna', 'Animalia', 'Aves', 'Anseriformes', 'Anatidae', 'Tadorna',
        'Tadorna tadorna');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('parus_cristatus', 'Parus cristatus', 'Animalia', 'Aves', 'Passeriformes', 'Paridae', 'Parus',
        'Parus cristatus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('circus_cyaneus', 'Circus cyaneus', 'Animalia', 'Aves', 'Accipitriformes', 'Accipitridae', 'Circus',
        'Circus cyaneus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('gallinula_chloropus', 'Gallinula chloropus', 'Animalia', 'Aves', 'Gruiformes', 'Rallidae', 'Gallinula',
        'Gallinula chloropus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('oenanthe_oenanthe', 'Oenanthe oenanthe', 'Animalia', 'Aves', 'Passeriformes', 'Muscicapidae',
        'Oenanthe', 'Oenanthe oenanthe');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('carduelis_cannabina', 'Carduelis cannabina (Acanthis cannabina)', 'Animalia', 'Aves', 'Passeriformes',
        'Fringillidae', 'Carduelis', 'Carduelis cannabina');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('glareola_nordmanni', 'Glareola nordmanni', 'Animalia', 'Aves', 'Charadriiformes', 'Glareolidae',
        'Glareola', 'Glareola nordmanni');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('numenius_arquata', 'Numenius arquata', 'Animalia', 'Aves', 'Charadriiformes', 'Scolopacidae',
        'Numenius', 'Numenius arquata');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('sterna_hirundo', 'Sterna hirundo', 'Animalia', 'Aves', 'Charadriiformes', 'Laridae', 'Sterna',
        'Sterna hirundo');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('turdus_viscivorus', 'Turdus viscivorus', 'Animalia', 'Aves', 'Passeriformes', 'Turdidae', 'Turdus',
        'Turdus viscivorus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('aythya_fuligula', 'Aythya fuligula', 'Animalia', 'Aves', 'Anseriformes', 'Anatidae', 'Aythya',
        'Aythya fuligula');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('picus_canus', 'Picus canus', 'Animalia', 'Aves', 'Piciformes', 'Picidae', 'Picus', 'Picus canus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('tetrao_urogallus', 'Tetrao urogallus', 'Animalia', 'Aves', 'Galliformes', 'Phasianidae', 'Tetrao',
        'Tetrao urogallus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('circus_macrourus', 'Circus macrourus', 'Animalia', 'Aves', 'Accipitriformes', 'Accipitridae', 'Circus',
        'Circus macrourus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('sterna_nilotica', 'Sterna nilotica', 'Animalia', 'Aves', 'Charadriiformes', 'Laridae', 'Sterna',
        'Sterna nilotica');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('dryocopus_martius', 'Dryocopus martius', 'Animalia', 'Aves', 'Piciformes', 'Picidae', 'Dryocopus',
        'Dryocopus martius');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('acrocephalus_arundinaceus', 'Acrocephalus arundinaceus', 'Animalia', 'Aves', 'Passeriformes',
        'Sylviidae', 'Acrocephalus', 'Acrocephalus arundinaceus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('sturnus_vulgaris', 'Sturnus vulgaris', 'Animalia', 'Aves', 'Passeriformes', 'Sturnidae', 'Sturnus',
        'Sturnus vulgaris');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('anas_crecca', 'Anas crecca', 'Animalia', 'Aves', 'Anseriformes', 'Anatidae', 'Anas', 'Anas crecca');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('clanga_pomarina', 'Clanga pomarina (Aquila pomarina)', 'Animalia', 'Aves', 'Accipitriformes',
        'Accipitridae', 'Clanga', 'Clanga pomarina');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('carduelis_carduelis', 'Carduelis carduelis', 'Animalia', 'Aves', 'Passeriformes', 'Fringillidae',
        'Carduelis', 'Carduelis carduelis');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('circus_pygargus', 'Circus pygargus', 'Animalia', 'Aves', 'Accipitriformes', 'Accipitridae', 'Circus',
        'Circus pygargus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('pluvialis_apricaria', 'Pluvialis apricaria', 'Animalia', 'Aves', 'Charadriiformes', 'Charadriidae',
        'Pluvialis', 'Pluvialis apricaria');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('miliaria_calandra', 'Miliaria calandra (Emberiza calandra)', 'Animalia', 'Aves', 'Passeriformes',
        'Emberizidae', 'Miliaria', 'Miliaria calandra');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('corvus_corone', 'Corvus corone', 'Animalia', 'Aves', 'Passeriformes', 'Corvidae', 'Corvus',
        'Corvus corone');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('ficedula_hypoleuca', 'Ficedula hypoleuca', 'Animalia', 'Aves', 'Passeriformes', 'Muscicapidae',
        'Ficedula', 'Ficedula hypoleuca');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('otus_scops', 'Otus scops', 'Animalia', 'Aves', 'Strigiformes', 'Strigidae', 'Otus', 'Otus scops');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('alcedo_atthis', 'Alcedo atthis', 'Animalia', 'Aves', 'Coraciiformes', 'Alcedinidae', 'Alcedo',
        'Alcedo atthis');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('chlidonias_niger', 'Chlidonias niger', 'Animalia', 'Aves', 'Charadriiformes', 'Laridae', 'Chlidonias',
        'Chlidonias niger');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('sylvia_nisoria', 'Sylvia nisoria', 'Animalia', 'Aves', 'Passeriformes', 'Sylviidae', 'Sylvia',
        'Sylvia nisoria');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('locustella_luscinioides', 'Locustella luscinioides', 'Animalia', 'Aves', 'Passeriformes', 'Sylviidae',
        'Locustella', 'Locustella luscinioides');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('melanocorypha_calandra', 'Melanocorypha calandra', 'Animalia', 'Aves', 'Passeriformes', 'Alaudidae',
        'Melanocorypha', 'Melanocorypha calandra');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('perdix_perdix', 'Perdix perdix', 'Animalia', 'Aves', 'Galliformes', 'Phasianidae', 'Perdix',
        'Perdix perdix');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('rallus_aquaticus', 'Rallus aquaticus', 'Animalia', 'Aves', 'Gruiformes', 'Rallidae', 'Rallus',
        'Rallus aquaticus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('saxicola_torquatus', 'Saxicola torquatus', 'Animalia', 'Aves', 'Passeriformes', 'Muscicapidae',
        'Saxicola', 'Saxicola torquatus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('corvus_monedula', 'Corvus monedula', 'Animalia', 'Aves', 'Passeriformes', 'Corvidae', 'Corvus',
        'Corvus monedula');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('ardea_cinerea', 'Ardea cinerea', 'Animalia', 'Aves', 'Pelecaniformes', 'Ardeidae', 'Ardea',
        'Ardea cinerea');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('tadorna_ferruginea', 'Tadorna ferruginea', 'Animalia', 'Aves', 'Anseriformes', 'Anatidae', 'Tadorna',
        'Tadorna ferruginea');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('falco_peregrinus', 'Falco peregrinus', 'Animalia', 'Aves', 'Falconiformes', 'Falconidae', 'Falco',
        'Falco peregrinus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('alauda_arvensis', 'Alauda arvensis', 'Animalia', 'Aves', 'Passeriformes', 'Alaudidae', 'Alauda',
        'Alauda arvensis');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('luscinia_luscinia', 'Luscinia luscinia', 'Animalia', 'Aves', 'Passeriformes', 'Muscicapidae',
        'Luscinia', 'Luscinia luscinia');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('turdus_torquatus', 'Turdus torquatus', 'Animalia', 'Aves', 'Passeriformes', 'Turdidae', 'Turdus',
        'Turdus torquatus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('prunella_collaris', 'Prunella collaris', 'Animalia', 'Aves', 'Passeriformes', 'Prunellidae',
        'Prunella', 'Prunella collaris');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('buteo_lagopus', 'Buteo lagopus', 'Animalia', 'Aves', 'Accipitriformes', 'Accipitridae', 'Buteo',
        'Buteo lagopus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('calandrella_brachydactyla', 'Calandrella brachydactyla', 'Animalia', 'Aves', 'Passeriformes',
        'Alaudidae', 'Calandrella', 'Calandrella brachydactyla');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('grus_grus', 'Grus grus', 'Animalia', 'Aves', 'Gruiformes', 'Gruidae', 'Grus', 'Grus grus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('picus_viridis', 'Picus viridis', 'Animalia', 'Aves', 'Piciformes', 'Picidae', 'Picus', 'Picus viridis');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('aythya_marila', 'Aythya marila', 'Animalia', 'Aves', 'Anseriformes', 'Anatidae', 'Aythya',
        'Aythya marila');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('coccothraustes_coccothraustes', 'Coccothraustes coccothraustes', 'Animalia', 'Aves', 'Passeriformes',
        'Fringillidae', 'Coccothraustes', 'Coccothraustes coccothraustes');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('botaurus_stellaris', 'Botaurus stellaris', 'Animalia', 'Aves', 'Pelecaniformes', 'Ardeidae',
        'Botaurus', 'Botaurus stellaris');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('larus_michahellis', 'Larus michahellis', 'Animalia', 'Aves', 'Charadriiformes', 'Laridae', 'Larus',
        'Larus michahellis');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('hirundo_daurica', 'Hirundo daurica', 'Animalia', 'Aves', 'Passeriformes', 'Hirundinidae', 'Hirundo',
        'Hirundo daurica');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('hippolais_pallida', 'Hippolais pallida', 'Animalia', 'Aves', 'Passeriformes', 'Sylviidae', 'Hippolais',
        'Hippolais pallida');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('sylvia_communis', 'Sylvia communis', 'Animalia', 'Aves', 'Passeriformes', 'Sylviidae', 'Sylvia',
        'Sylvia communis');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('regulus_ignicapilla', 'Regulus ignicapilla', 'Animalia', 'Aves', 'Passeriformes', 'Reguliidae',
        'Regulus', 'Regulus ignicapilla');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('circaetus_gallicus', 'Circaetus gallicus', 'Animalia', 'Aves', 'Accipitriformes', 'Accipitridae',
        'Circaetus', 'Circaetus gallicus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('coturnix_coturnix', 'Coturnix coturnix', 'Animalia', 'Aves', 'Galliformes', 'Phasianidae', 'Coturnix',
        'Coturnix coturnix');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('tachymarptis_melba', 'Tachymarptis melba', 'Animalia', 'Aves', 'Caprimulgiformes', 'Apodidae',
        'Tachymarptis', 'Tachymarptis melba');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('hirundo_rupestris', 'Hirundo rupestris (Ptyonoprogne rupestris)', 'Animalia', 'Aves', 'Passeriformes',
        'Hirundinidae', 'Hirundo', 'Hirundo rupestris');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('strix_aluco', 'Strix aluco', 'Animalia', 'Aves', 'Strigiformes', 'Strigidae', 'Strix', 'Strix aluco');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('pelecanus_onocrotalus', 'Pelecanus onocrotalus', 'Animalia', 'Aves', 'Pelecaniformes', 'Pelecanidae',
        'Pelecanus', 'Pelecanus onocrotalus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('sylvia_curruca', 'Sylvia curruca', 'Animalia', 'Aves', 'Passeriformes', 'Sylviidae', 'Sylvia',
        'Sylvia curruca');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('acrocephalus_palustris', 'Acrocephalus palustris', 'Animalia', 'Aves', 'Passeriformes', 'Sylviidae',
        'Acrocephalus', 'Acrocephalus palustris');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('anthus_campestris', 'Anthus campestris', 'Animalia', 'Aves', 'Passeriformes', 'Motacillidae', 'Anthus',
        'Anthus campestris');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('acrocephalus_agricola', 'Acrocephalus agricola', 'Animalia', 'Aves', 'Passeriformes', 'Sylviidae',
        'Acrocephalus', 'Acrocephalus agricola');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('dendrocopos_major', 'Dendrocopos major', 'Animalia', 'Aves', 'Piciformes', 'Picidae', 'Dendrocopos',
        'Dendrocopos major');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('phoenicurus_ochruros', 'Phoenicurus ochruros', 'Animalia', 'Aves', 'Passeriformes', 'Muscicapidae',
        'Phoenicurus', 'Phoenicurus ochruros');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('regulus_regulus', 'Regulus regulus', 'Animalia', 'Aves', 'Passeriformes', 'Reguliidae', 'Regulus',
        'Regulus regulus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('passer_montanus', 'Passer montanus', 'Animalia', 'Aves', 'Passeriformes', 'Passeridae', 'Passer',
        'Passer montanus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('ciconia_ciconia', 'Ciconia ciconia', 'Animalia', 'Aves', 'Ciconiiformes', 'Ciconiidae', 'Ciconia',
        'Ciconia ciconia');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('carduelis_spinus', 'Carduelis spinus', 'Animalia', 'Aves', 'Passeriformes', 'Fringillidae',
        'Carduelis', 'Carduelis spinus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('calidris_pugnax', 'Calidris pugnax (Philomachus pugnax)', 'Animalia', 'Aves', 'Charadriiformes',
        'Scolopacidae', 'Calidris', 'Calidris pugnax');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('turdus_pilaris', 'Turdus pilaris', 'Animalia', 'Aves', 'Passeriformes', 'Turdidae', 'Turdus',
        'Turdus pilaris');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('charadrius_dubius', 'Charadrius dubius', 'Animalia', 'Aves', 'Charadriiformes', 'Charadriidae',
        'Charadrius', 'Charadrius dubius');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('numenius_phaeopus', 'Numenius phaeopus', 'Animalia', 'Aves', 'Charadriiformes', 'Scolopacidae',
        'Numenius', 'Numenius phaeopus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('carduelis_chloris', 'Carduelis chloris (Chloris chloris)', 'Animalia', 'Aves', 'Passeriformes',
        'Fringillidae', 'Carduelis', 'Carduelis chloris');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('anser_albifrons', 'Anser albifrons', 'Animalia', 'Aves', 'Anseriformes', 'Anatidae', 'Anser',
        'Anser albifrons');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('falco_vespertinus', 'Falco vespertinus', 'Animalia', 'Aves', 'Falconiformes', 'Falconidae', 'Falco',
        'Falco vespertinus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('zapornia_pusilla', 'Zapornia pusilla (Porzana pusilla)', 'Animalia', 'Aves', 'Gruiformes', 'Rallidae',
        'Zapornia', 'Zapornia pusilla');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('columba_palumbus', 'Columba palumbus', 'Animalia', 'Aves', 'Columbiformes', 'Columbidae', 'Columba',
        'Columba palumbus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('falco_naumanni', 'Falco naumanni', 'Animalia', 'Aves', 'Falconiformes', 'Falconidae', 'Falco',
        'Falco naumanni');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('carpodacus_erythrinus', 'Carpodacus erythrinus', 'Animalia', 'Aves', 'Passeriformes', 'Fringillidae',
        'Carpodacus', 'Carpodacus erythrina');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('delichon_urbicum', 'Delichon urbicum', 'Animalia', 'Aves', 'Passeriformes', 'Hirundinidae', 'Delichon',
        'Delichon urbicum');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('pernis_apivorus', 'Pernis apivorus', 'Animalia', 'Aves', 'Accipitriformes', 'Accipitridae', 'Pernis',
        'Pernis apivorus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('lanius_collurio', 'Lanius collurio', 'Animalia', 'Aves', 'Passeriformes', 'Laniidae', 'Lanius',
        'Lanius collurio');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('calidris_minuta', 'Calidris minuta', 'Animalia', 'Aves', 'Charadriiformes', 'Scolopacidae', 'Calidris',
        'Calidris minuta');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('falco_columbarius', 'Falco columbarius', 'Animalia', 'Aves', 'Falconiformes', 'Falconidae', 'Falco',
        'Falco columbarius');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('sitta_europaea', 'Sitta europaea', 'Animalia', 'Aves', 'Passeriformes', 'Sittidae', 'Sitta',
        'Sitta europaea');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('buteo_buteo', 'Buteo buteo', 'Animalia', 'Aves', 'Accipitriformes', 'Accipitridae', 'Buteo',
        'Buteo buteo');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('asio_otus', 'Asio otus', 'Animalia', 'Aves', 'Strigiformes', 'Strigidae', 'Asio', 'Asio otus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('buteo_rufinus', 'Buteo rufinus', 'Animalia', 'Aves', 'Accipitriformes', 'Accipitridae', 'Buteo',
        'Buteo rufinus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('phylloscopus_bonelli', 'Phylloscopus bonelli', 'Animalia', 'Aves', 'Passeriformes', 'Sylviidae',
        'Phylloscopus', 'Phylloscopus bonelli');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('recurvirostra_avosetta', 'Recurvirostra avosetta', 'Animalia', 'Aves', 'Charadriiformes',
        'Recurvirostridae', 'Recurvirostra', 'Recurvirostra avosetta');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('anthus_spinoletta', 'Anthus spinoletta', 'Animalia', 'Aves', 'Passeriformes', 'Motacillidae', 'Anthus',
        'Anthus spinoletta');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('merops_apiaster', 'Merops apiaster', 'Animalia', 'Aves', 'Coraciiformes', 'Meropidae', 'Merops',
        'Merops apiaster');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('plegadis_falcinellus', 'Plegadis falcinellus', 'Animalia', 'Aves', 'Pelecaniformes',
        'Threskiornithidae', 'Plegadis', 'Plegadis falcinellus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('anas_platyrhynchos', 'Anas platyrhynchos', 'Animalia', 'Aves', 'Anseriformes', 'Anatidae', 'Anas',
        'Anas platyrhynchos');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('himantopus_himantopus', 'Himantopus himantopus', 'Animalia', 'Aves', 'Charadriiformes',
        'Recurvirostridae', 'Himantopus', 'Himantopus himantopus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('platalea_leucorodia', 'Platalea leucorodia', 'Animalia', 'Aves', 'Pelecaniformes', 'Threskiornithidae',
        'Platalea', 'Platalea leucorodia');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('clanga_clanga', 'Clanga clanga (Aquila clanga)', 'Animalia', 'Aves', 'Accipitriformes', 'Accipitridae',
        'Clanga', 'Clanga clanga');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('tringa_totanus', 'Tringa totanus', 'Animalia', 'Aves', 'Charadriiformes', 'Scolopacidae', 'Tringa',
        'Tringa totanus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('dryobates_minor', 'Dryobates minor (Dendrocopos minor)', 'Animalia', 'Aves', 'Piciformes', 'Picidae',
        'Dryobates', 'Dryobates minor');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('phoenicurus_phoenicurus', 'Phoenicurus phoenicurus', 'Animalia', 'Aves', 'Passeriformes',
        'Muscicapidae', 'Phoenicurus', 'Phoenicurus phoenicurus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('haliaeetus_albicilla', 'Haliaeetus albicilla', 'Animalia', 'Aves', 'Accipitriformes', 'Accipitridae',
        'Haliaeetus', 'Haliaeetus albicilla');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('lanius_senator', 'Lanius senator', 'Animalia', 'Aves', 'Passeriformes', 'Laniidae', 'Lanius',
        'Lanius senator');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('corvus_corax', 'Corvus corax', 'Animalia', 'Aves', 'Passeriformes', 'Corvidae', 'Corvus',
        'Corvus corax');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('garrulus_glandarius', 'Garrulus glandarius', 'Animalia', 'Aves', 'Passeriformes', 'Corvidae',
        'Garrulus', 'Garrulus glandarius');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('eremophila_alpestris', 'Eremophila alpestris', 'Animalia', 'Aves', 'Passeriformes', 'Alaudidae',
        'Eremophila', 'Eremophila alpestris');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('tringa_stagnatilis', 'Tringa stagnatilis', 'Animalia', 'Aves', 'Charadriiformes', 'Scolopacidae',
        'Tringa', 'Tringa stagnatilis');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('strix_uralensis', 'Strix uralensis', 'Animalia', 'Aves', 'Strigiformes', 'Strigidae', 'Strix',
        'Strix uralensis');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('mareca penelope', 'Mareca penelope (Anas penelope)', 'Animalia', 'Aves', 'Anseriformes', 'Anatidae',
        'Mareca', 'Mareca penelope');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('vanellus_leucurus', 'Vanellus leucurus', 'Animalia', 'Aves', 'Charadriiformes', 'Charadriidae',
        'Vanellus', 'Vanellus leucurus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('cinclus_cinclus', 'Cinclus cinclus', 'Animalia', 'Aves', 'Passeriformes', 'Cinclidae', 'Cinclus',
        'Cinclus cinclus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('panurus_biarmicus', 'Panurus biarmicus', 'Animalia', 'Aves', 'Passeriformes', 'Timaliidae',
        'Panuridae', 'Panurus biarmicus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('ficedula_albicollis', 'Ficedula albicollis', 'Animalia', 'Aves', 'Passeriformes', 'Muscicapidae',
        'Ficedula', 'Ficedula albicollis');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('falco_tinnunculus', 'Falco tinnunculus', 'Animalia', 'Aves', 'Falconiformes', 'Falconidae', 'Falco',
        'Falco tinnunculus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('aythya_nyroca', 'Aythya nyroca', 'Animalia', 'Aves', 'Anseriformes', 'Anatidae', 'Aythya',
        'Aythya nyroca');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('cygnus_olor', 'Cygnus olor', 'Animalia', 'Aves', 'Anseriformes', 'Anatidae', 'Cygnus', 'Cygnus olor');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('certhia_brachydactyla', 'Certhia brachydactyla', 'Animalia', 'Aves', 'Passeriformes', 'Certhiidae',
        'Certhia', 'Certhia brachydactyla');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('aythya_ferina', 'Aythya ferina', 'Animalia', 'Aves', 'Anseriformes', 'Anatidae', 'Aythya',
        'Aythya ferina');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('muscicapa_striata', 'Muscicapa striata', 'Animalia', 'Aves', 'Passeriformes', 'Muscicapidae',
        'Muscicapa', 'Muscicapa striata');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('lyrurus_tetrix', 'Lyrurus tetrix (Tetrao tetrix)', 'Animalia', 'Aves', 'Galliformes', 'Phasianidae',
        'Lyrurus', 'Lyrurus tetrix');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('tyto_alba', 'Tyto alba', 'Animalia', 'Aves', 'Strigiformes', 'Tytonidae', 'Tyto', 'Tyto alba');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('limosa_limosa', 'Limosa limosa', 'Animalia', 'Aves', 'Charadriiformes', 'Scolopacidae', 'Limosa',
        'Limosa limosa');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('cygnus_cygnus', 'Cygnus cygnus', 'Animalia', 'Aves', 'Anseriformes', 'Anatidae', 'Cygnus',
        'Cygnus cygnus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('melanitta_fusca', 'Melanitta fusca', 'Animalia', 'Aves', 'Anseriformes', 'Anatidae', 'Melanitta',
        'Melanitta fusca');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('phalacrocorax_carbo', 'Phalacrocorax carbo', 'Animalia', 'Aves', 'Suliformes', 'Phalacrocoracidae',
        'Phalacrocorax', 'Phalacrocorax carbo');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('oenanthe_pleschanka', 'Oenanthe pleschanka', 'Animalia', 'Aves', 'Passeriformes', 'Muscicapidae',
        'Oenanthe', 'Oenanthe pleschanka');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('ardea_purpurea', 'Ardea purpurea', 'Animalia', 'Aves', 'Pelecaniformes', 'Ardeidae', 'Ardea',
        'Ardea purpurea');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('accipiter_nisus', 'Accipiter nisus', 'Animalia', 'Aves', 'Accipitriformes', 'Accipitridae',
        'Accipiter', 'Accipiter nisus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('podiceps_grisegena', 'Podiceps grisegena', 'Animalia', 'Aves', 'Podicipediformes', 'Podicipedidae',
        'Podiceps', 'Podiceps grisegena');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('larus_melanocephalus', 'Larus melanocephalus', 'Animalia', 'Aves', 'Charadriiformes', 'Laridae',
        'Larus', 'Larus melanocephalus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('larus_cachinnans', 'Larus cachinnans', 'Animalia', 'Aves', 'Charadriiformes', 'Laridae', 'Larus',
        'Larus cachinnans');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('anser_erythropus', 'Anser erythropus', 'Animalia', 'Aves', 'Anseriformes', 'Anatidae', 'Anser',
        'Anser erythropus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('emberiza_cia', 'Emberiza cia', 'Animalia', 'Aves', 'Passeriformes', 'Emberizidae', 'Emberiza',
        'Emberiza cia');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('caprimulgus_europaeus', 'Caprimulgus europaeus', 'Animalia', 'Aves', 'Caprimulgiformes',
        'Caprimulgidae', 'Caprimulgus', 'Caprimulgus europaeus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('oenanthe_isabellina', 'Oenanthe isabellina', 'Animalia', 'Aves', 'Passeriformes', 'Muscicapidae',
        'Oenanthe', 'Oenanthe isabellina');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('parus_major', 'Parus major', 'Animalia', 'Aves', 'Passeriformes', 'Paridae', 'Parus', 'Parus major');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('podiceps_nigricollis', 'Podiceps nigricollis', 'Animalia', 'Aves', 'Podicipediformes', 'Podicipedidae',
        'Podiceps', 'Podiceps nigricollis');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('mareca_strepera', 'Mareca strepera (Anas strepera)', 'Animalia', 'Aves', 'Anseriformes', 'Anatidae',
        'Mareca', 'Mareca strepera');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('saxicola_rubetra', 'Saxicola rubetra', 'Animalia', 'Aves', 'Passeriformes', 'Muscicapidae', 'Saxicola',
        'Saxicola rubetra');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('sylvia_borin', 'Sylvia borin', 'Animalia', 'Aves', 'Passeriformes', 'Sylviidae', 'Sylvia',
        'Sylvia borin');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('picoides_tridactylus', 'Picoides tridactylus', 'Animalia', 'Aves', 'Piciformes', 'Picidae', 'Picoides',
        'Picoides tridactylus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('pyrrhula_pyrrhula', 'Pyrrhula pyrrhula', 'Animalia', 'Aves', 'Passeriformes', 'Fringillidae',
        'Pyrrhula', 'Pyrrhula pyrrhula');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('oenanthe_hispanica', 'Oenanthe hispanica', 'Animalia', 'Aves', 'Passeriformes', 'Muscicapidae',
        'Oenanthe', 'Oenanthe hispanica');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('motacilla_alba', 'Motacilla alba', 'Animalia', 'Aves', 'Passeriformes', 'Motacillidae', 'Motacilla',
        'Motacilla alba');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('phylloscopus_sibilatrix', 'Phylloscopus sibilatrix', 'Animalia', 'Aves', 'Passeriformes', 'Sylviidae',
        'Phylloscopus', 'Phylloscopus sibilatrix');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('acrocephalus_schoenobaenus', 'Acrocephalus schoenobaenus', 'Animalia', 'Aves', 'Passeriformes',
        'Sylviidae', 'Acrocephalus', 'Acrocephalus schoenobaenus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('egretta_garzetta', 'Egretta garzetta', 'Animalia', 'Aves', 'Pelecaniformes', 'Ardeidae', 'Egretta',
        'Egretta garzetta');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('falco_cherrug', 'Falco cherrug', 'Animalia', 'Aves', 'Falconiformes', 'Falconidae', 'Falco',
        'Falco cherrug');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('ciconia_nigra', 'Ciconia nigra', 'Animalia', 'Aves', 'Ciconiiformes', 'Ciconiidae', 'Ciconia',
        'Ciconia nigra');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('circus_aeruginosus', 'Circus aeruginosus', 'Animalia', 'Aves', 'Accipitriformes', 'Accipitridae',
        'Circus', 'Circus aeruginosus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('athene_noctua', 'Athene noctua', 'Animalia', 'Aves', 'Strigiformes', 'Strigidae', 'Athene',
        'Athene noctua');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('aquila_heliaca', 'Aquila heliaca', 'Animalia', 'Aves', 'Accipitriformes', 'Accipitridae', 'Aquila',
        'Aquila heliaca');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('calidris_alpina', 'Calidris alpina', 'Animalia', 'Aves', 'Charadriiformes', 'Scolopacidae', 'Calidris',
        'Calidris alpina');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('vanellus_vanellus', 'Vanellus vanellus', 'Animalia', 'Aves', 'Charadriiformes', 'Charadriidae',
        'Vanellus', 'Vanellus vanellus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('hydroprogne_caspia', 'Hydroprogne caspia (Sterna caspia)', 'Animalia', 'Aves', 'Charadriiformes',
        'Laridae', 'Hydroprogne', 'Hydroprogne caspia');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('thalasseus_sandvicensis', 'Thalasseus sandvicensis (Sterna sandvicensis)', 'Animalia', 'Aves',
        'Charadriiformes', 'Laridae', 'Thalasseus', 'Thalasseus sandvicensis');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('glaucidium_passerinum', 'Glaucidium passerinum', 'Animalia', 'Aves', 'Strigiformes', 'Strigidae',
        'Glaucidium', 'Glaucidium passerinum');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('dendrocopos_syriacus', 'Dendrocopos syriacus', 'Animalia', 'Aves', 'Piciformes', 'Picidae',
        'Dendrocopos', 'Dendrocopos syriacus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('podiceps_cristatus', 'Podiceps cristatus', 'Animalia', 'Aves', 'Podicipediformes', 'Podicipedidae',
        'Podiceps', 'Podiceps cristatus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('aegithalos_caudatus', 'Aegithalos caudatus', 'Animalia', 'Aves', 'Passeriformes', 'Aegithalidae',
        'Aegithalos', 'Aegithalos caudatus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('apus_apus', 'Apus apus', 'Animalia', 'Aves', 'Caprimulgiformes', 'Apodidae', 'Apus', 'Apus apus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('locustella_fluviatilis', 'Locustella fluviatilis', 'Animalia', 'Aves', 'Passeriformes', 'Sylviidae',
        'Locustella', 'Locustella fluviatilis');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('bombycilla_garrulus', 'Bombycilla garrulus', 'Animalia', 'Aves', 'Passeriformes', 'Bombycillidae',
        'Bombycilla', 'Bombycilla garrulus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('dendrocopos_leucotos', 'Dendrocopos leucotos', 'Animalia', 'Aves', 'Piciformes', 'Picidae',
        'Dendrocopos', 'Dendrocopos leucotos');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('falco_subbuteo', 'Falco subbuteo', 'Animalia', 'Aves', 'Falconiformes', 'Falconidae', 'Falco',
        'Falco subbuteo');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('emberiza_schoeniclus', 'Emberiza schoeniclus', 'Animalia', 'Aves', 'Passeriformes', 'Emberizidae',
        'Emberiza', 'Emberiza schoeniclus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('oxyura_leucocephala', 'Oxyura leucocephala', 'Animalia', 'Aves', 'Anseriformes', 'Anatidae', 'Oxyura',
        'Oxyura leucocephala');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('streptopelia_turtur', 'Streptopelia turtur', 'Animalia', 'Aves', 'Columbiformes', 'Columbidae',
        'Streptopelia', 'Streptopelia turtur');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('parus_caeruleus', 'Parus caeruleus', 'Animalia', 'Aves', 'Passeriformes', 'Paridae', 'Parus',
        'Parus caeruleus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('spatula_querquedula', 'Spatula querquedula (Anas querquedula)', 'Animalia', 'Aves', 'Anseriformes',
        'Anatidae', 'Spatula', 'Spatula querquedula');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('leiopicus_medius', 'Leiopicus medius (Dendrocopos medius)', 'Animalia', 'Aves', 'Piciformes',
        'Picidae', 'Leiopicus', 'Leiopicus medius');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('anas_acuta', 'Anas acuta', 'Animalia', 'Aves', 'Anseriformes', 'Anatidae', 'Anas', 'Anas acuta');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('ardea_alba', 'Ardea alba (Casmerodius albus; Egretta alba)', 'Animalia', 'Aves', 'Pelecaniformes',
        'Ardeidae', 'Ardea', 'Ardea alba');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('hieraaetus_pennatus', 'Hieraaetus pennatus', 'Animalia', 'Aves', 'Accipitriformes', 'Accipitridae',
        'Hieraaetus', 'Hieraaetus pennatus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('haematopus_ostralegus', 'Haematopus ostralegus', 'Animalia', 'Aves', 'Charadriiformes',
        'Haematopodidae', 'Haematopus', 'Haematopus ostralegus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('turdus_philomelos', 'Turdus philomelos', 'Animalia', 'Aves', 'Passeriformes', 'Turdidae', 'Turdus',
        'Turdus philomelos');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('glareola_pratincola', 'Glareola pratincola', 'Animalia', 'Aves', 'Charadriiformes', 'Glareolidae',
        'Glareola', 'Glareola pratincola');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('tringa_ochropus', 'Tringa ochropus', 'Animalia', 'Aves', 'Charadriiformes', 'Scolopacidae', 'Tringa',
        'Tringa ochropus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('pandion_haliaetus', 'Pandion haliaetus', 'Animalia', 'Aves', 'Accipitriformes', 'Pandionidae',
        'Pandion', 'Pandion haliaetus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('parus_palustris', 'Parus palustris', 'Animalia', 'Aves', 'Passeriformes', 'Paridae', 'Parus',
        'Parus palustris');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('ficedula_parva', 'Ficedula parva', 'Animalia', 'Aves', 'Passeriformes', 'Muscicapidae', 'Ficedula',
        'Ficedula parva');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('branta_ruficollis', 'Branta ruficollis', 'Animalia', 'Aves', 'Anseriformes', 'Anatidae', 'Branta',
        'Branta ruficollis');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('pelecanus_crispus', 'Pelecanus crispus', 'Animalia', 'Aves', 'Pelecaniformes', 'Pelecanidae',
        'Pelecanus', 'Pelecanus crispus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('riparia_riparia', 'Riparia riparia', 'Animalia', 'Aves', 'Passeriformes', 'Hirundinidae', 'Riparia',
        'Riparia riparia');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('passer_domesticus', 'Passer domesticus', 'Animalia', 'Aves', 'Passeriformes', 'Passeridae', 'Passer',
        'Passer domesticus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('bubulcus_ibis', 'Bubulcus ibis', 'Animalia', 'Aves', 'Pelecaniformes', 'Ardeidae', 'Bubulcus',
        'Bubulcus ibis');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('accipiter_brevipes', 'Accipiter brevipes', 'Animalia', 'Aves', 'Accipitriformes', 'Accipitridae',
        'Accipiter', 'Accipiter brevipes');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('bubo_bubo', 'Bubo bubo', 'Animalia', 'Aves', 'Strigiformes', 'Strigidae', 'Bubo', 'Bubo bubo');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('anthus_trivialis', 'Anthus trivialis', 'Animalia', 'Aves', 'Passeriformes', 'Motacillidae', 'Anthus',
        'Anthus trivialis');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('phylloscopus_trochilus', 'Phylloscopus trochilus', 'Animalia', 'Aves', 'Passeriformes', 'Sylviidae',
        'Phylloscopus', 'Phylloscopus trochilus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('aquila_chrysaetos', 'Aquila chrysaetos', 'Animalia', 'Aves', 'Accipitriformes', 'Accipitridae',
        'Aquila', 'Aquila chrysaetos');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('troglodytes_troglodytes', 'Troglodytes troglodytes', 'Animalia', 'Aves', 'Passeriformes',
        'Troglodytidae', 'Troglodytes', 'Troglodytes troglodytes');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('corvus_frugilegus', 'Corvus frugilegus', 'Animalia', 'Aves', 'Passeriformes', 'Corvidae', 'Corvus',
        'Corvus frugilegus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('microcarbo_pygmaeus', 'Microcarbo pygmaeus (Phalacrocorax pygmaeus)', 'Animalia', 'Aves', 'Suliformes',
        'Phalacrocoracidae', 'Microcarbo', 'Microcarbo pygmaeus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('acrocephalus_melanopogon', 'Acrocephalus melanopogon', 'Animalia', 'Aves', 'Passeriformes',
        'Sylviidae', 'Acrocephalus', 'Acrocephalus melanopogon');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('emberiza_hortulana', 'Emberiza hortulana', 'Animalia', 'Aves', 'Passeriformes', 'Emberizidae',
        'Emberiza', 'Emberiza hortulana');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('sternula_albifrons', 'Sternula albifrons (Sterna albifrons)', 'Animalia', 'Aves', 'Charadriiformes',
        'Laridae', 'Sternula', 'Sternula albifrons');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('crex_crex', 'Crex crex', 'Animalia', 'Aves', 'Gruiformes', 'Rallidae', 'Crex', 'Crex crex');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('larus_fuscus', 'Larus fuscus', 'Animalia', 'Aves', 'Charadriiformes', 'Laridae', 'Larus',
        'Larus fuscus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('anthus_pratensis', 'Anthus pratensis', 'Animalia', 'Aves', 'Passeriformes', 'Motacillidae', 'Anthus',
        'Anthus pratensis');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('mergellus_albellus', 'Mergellus albellus', 'Animalia', 'Aves', 'Anseriformes', 'Anatidae', 'Mergus',
        'Mergus albellus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('motacilla_cinerea', 'Motacilla cinerea', 'Animalia', 'Aves', 'Passeriformes', 'Motacillidae',
        'Motacilla', 'Motacilla cinerea');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('emberiza_melanocephala', 'Emberiza melanocephala', 'Animalia', 'Aves', 'Passeriformes', 'Emberizidae',
        'Emberiza', 'Emberiza melanocephala');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('charadrius_alexandrinus', 'Charadrius alexandrinus', 'Animalia', 'Aves', 'Charadriiformes',
        'Charadriidae', 'Charadrius', 'Charadrius alexandrinus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('streptopelia_decaocto', 'Streptopelia decaocto', 'Animalia', 'Aves', 'Columbiformes', 'Columbidae',
        'Streptopelia', 'Streptopelia decaocto');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('prunella_modularis', 'Prunella modularis', 'Animalia', 'Aves', 'Passeriformes', 'Prunellidae',
        'Prunella', 'Prunella modularis');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('monticola_saxatilis', 'Monticola saxatilis', 'Animalia', 'Aves', 'Passeriformes', 'Muscicapidae',
        'Monticola', 'Monticola saxatilis');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('remiz_pendulinus', 'Remiz pendulinus', 'Animalia', 'Aves', 'Passeriformes', 'Remizidae', 'Remiz',
        'Remiz pendulinus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('larus_canus', 'Larus canus', 'Animalia', 'Aves', 'Charadriiformes', 'Laridae', 'Larus', 'Larus canus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('aegolius_funereus', 'Aegolius funereus', 'Animalia', 'Aves', 'Strigiformes', 'Strigidae', 'Aegolius',
        'Aegolius funereus');
INSERT INTO organism (code, name_latin, regnum, classis, ordo, familia, genus, species)
VALUES ('emberiza_citrinella', 'Emberiza citrinella', 'Animalia', 'Aves', 'Passeriformes', 'Emberizidae',
        'Emberiza', 'Emberiza citrinella');

