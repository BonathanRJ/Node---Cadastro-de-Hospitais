INSERT INTO HOS_HOSPITAL (CDHOS,DCHOS,NRLOGHOS,DCLOGHOS,NRCEPHOS,DCBAIHOS,DCCIDHOS,SGUFSHOS,CDPSIHOS,NRTELHOS,AUUSUULTALT,AUDATULTALT)
VALUES 
	('001', 'QUINTA DOR', 852, 'AV. 28 DE SETEMBRO', '95874521', 'VILA ISABEL', 'RIO DE JANEIRO', 'RJ', 'BR', '(21)9999-9999', 'ADMINISTRADOR',NOW())
	,('002', 'COPA DOR' , 689, 'AV. RIO COMPRIDO', '25986523', 'RIO COMPRIDO', 'RIO DE JANEIRO', 'RJ', 'BR', '(21)8888-8888', 'ADMINISTRADOR',NOW()
);

INSERT INTO HOS_ENFERMARIA (CDENF, IDHOS, CDHOS, DCBLO, AUUSUULTALT, AUDATULTALT)
VALUES 
	 ('0101',1,'001','A','ADMINISTRADOR',NOW())
	,('0102',1,'001','A','ADMINISTRADOR',NOW())
	,('0201',1,'001','A','ADMINISTRADOR',NOW())
	,('0102',1,'001','A','ADMINISTRADOR',NOW())
	,('0301',1,'001','A','ADMINISTRADOR',NOW())
	,('0302',1,'001','A','ADMINISTRADOR',NOW())
	,('0101',1,'001','B','ADMINISTRADOR',NOW())
	,('0102',1,'001','B','ADMINISTRADOR',NOW())
	,('0201',1,'001','B','ADMINISTRADOR',NOW())
	,('0102',1,'001','B','ADMINISTRADOR',NOW())
	,('0301',1,'001','B','ADMINISTRADOR',NOW())
	,('0302',1,'001','B','ADMINISTRADOR',NOW())
	,('0101',2,'002','A','ADMINISTRADOR',NOW())
	,('0102',2,'002','A','ADMINISTRADOR',NOW())
	,('0201',2,'002','A','ADMINISTRADOR',NOW())
	,('0102',2,'002','A','ADMINISTRADOR',NOW())
	,('0301',2,'002','A','ADMINISTRADOR',NOW())
	,('0302',2,'002','A','ADMINISTRADOR',NOW())
	,('0101',2,'002','B','ADMINISTRADOR',NOW())
	,('0102',2,'002','B','ADMINISTRADOR',NOW())
	,('0201',2,'002','B','ADMINISTRADOR',NOW())
	,('0102',2,'002','B','ADMINISTRADOR',NOW())
	,('0301',2,'002','B','ADMINISTRADOR',NOW())
	,('0302',2,'002','B','ADMINISTRADOR',NOW()
);


INSERT INTO PAC_ESTADO_CIVIL (CDESTCIV,DCESTCIV,AUUSUULTALT,AUDATULTALT)
VALUES 
	('01','SOLTEIRO(A)','ADMINISTRADOR',NOW()) 
	,('02', 'CASADO(A)'  ,'ADMINISTRADOR',NOW())  
	,('03', 'VIÚVO(A)'    ,'ADMINISTRADOR',NOW()) 
	,('04', 'DESQUITADO(A)','ADMINISTRADOR',NOW())
	,('05', 'DIVORCIADO(A)','ADMINISTRADOR',NOW())
	,('06', 'CONVIVENTE'   ,'ADMINISTRADOR',NOW())
	,('07', 'SEPARADO(A)'  ,'ADMINISTRADOR',NOW())
	,('08', 'SEM DESCRICAO','ADMINISTRADOR',NOW())
	,('09', 'UNIÃO ESTÁVEL','ADMINISTRADOR',NOW()
);

INSERT INTO FCO_CARGO (NRCGO  ,DCCGO  ,AUUSUULTALT  ,AUDATULTALT)  
VALUES 
	('00000100','ENFERMEIRO(A)','ADMINISTRADOR',NOW()) 
    ,('00000101','TÉCNICO ENFERMEIRO(A)','ADMINISTRADOR',NOW())
    ,('00000102','MAQUEIRO','ADMINISTRADOR',NOW())
	,('00000103','CIRURGIÃO(A)','ADMINISTRADOR',NOW())
	,('00000104','MÉDICO(A)','ADMINISTRADOR',NOW())
    ,('00000105','COORDENADOR(A) MÉDICO(A)','ADMINISTRADOR',NOW())
	,('00000106','RECEPCIONISTA','ADMINISTRADOR',NOW())
	,('00000107','SEGURANÇA(A)','ADMINISTRADOR',NOW())
    ,('00000108','ADMINISTRAÇÃO','ADMINISTRADOR',NOW())
    ,('00000109','AUXILIAR DE SERVIÇOS GERAIS','ADMINISTRADOR',NOW()
);

INSERT INTO FCO_FUNCIONARIO 
	(IDHOS		,CDHOS		,NRISC			,NMFCO			,DTNSCFCO	,TPSEXFCO		,NRCPFFCO   
	,DTISCFCO	,DCLOGFCO	,NRLOGFCO		,DCBAIFCO		,DCCIDFCO	,CDPSIFCO		
	,NRCEPFCO	,SGUFSFCO	,NRTELRSDFCO	,DCEMLFCO  		,NRCGO		,AUUSUULTALT	,AUDATULTALT)
VALUES 
(1, '001', '000000001', 'João Silva'          , '1988-03-10', 'M', '12345678909', '2023-09-15', 'Rua Copacabana'         , '45', 'Copacabana', 'Rio de Janeiro', 'BR', '22041012', 'RJ', '(21) 98765-4321', 'joao.silva@email.com', 		'00000102', 'administrador', now()),
(2, '002', '000000002', 'Maria Santos'        , '1995-11-22', 'F', '98765432100', '2023-08-25', 'Rua das Palmeiras'     , '33', 'Botafogo'   , 'Rio de Janeiro', 'BR', '22222222', 'RJ', '(21) 98765-6789', 'maria.santos@email.com', 		'00000105', 'administrador', now()),
(1, '001', '000000003', 'Ana Oliveira'        , '1992-08-25', 'F', '45678912345', '2023-04-15', 'Rua das Flores'        , '72', 'Laranjeiras', 'Rio de Janeiro', 'BR', '22222333', 'RJ', '(21) 98765-6789', 'ana.oliveira@email.com', 		'00000103', 'administrador', now()),
(2, '002', '000000004', 'Carlos Silva'        , '1987-07-18', 'M', '23456789012', '2023-11-07', 'Rua dos Coqueiros'     , '17', 'Ipanema'    , 'Rio de Janeiro', 'BR', '22441555', 'RJ', '(21) 98765-1234', 'carlos.silva@email.com', 		'00000108', 'administrador', now()),
(1, '001', '000000005', 'Juliana Almeida'     , '1990-02-03', 'F', '87654321098', '2023-05-20', 'Rua da Praia'          , '61', 'Copacabana' , 'Rio de Janeiro', 'BR', '22011789', 'RJ', '(21) 98765-9999', 'juliana.almeida@email.com', 	'00000106', 'administrador', now()),
(2, '002', '000000006', 'Luiz Pereira'        , '1982-12-08', 'M', '54321098765', '2023-10-02', 'Rua da Lapa'           , '28', 'Lapa'       , 'Rio de Janeiro', 'BR', '20021456', 'RJ', '(21) 98765-7777', 'luiz.pereira@email.com', 		'00000104', 'administrador', now()),
(1, '001', '000000007', 'Renata Ferreira'     , '1989-06-14', 'F', '98712345632', '2023-06-30', 'Rua do Catete'         , '54', 'Catete'     , 'Rio de Janeiro', 'BR', '20040123', 'RJ', '(21) 98765-8888', 'renata.ferreira@email.com', 	'00000109', 'administrador', now()),
(2, '002', '000000008', 'André Rodrigues'     , '1998-04-19', 'M', '34567890123', '2023-07-12', 'Rua da Glória'         , '37', 'Glória'     , 'Rio de Janeiro', 'BR', '20030456', 'RJ', '(21) 98765-5555', 'andre.rodrigues@email.com', 	'00000107', 'administrador', now()),
(1, '001', '000000009', 'Carolina Lima'       , '1984-09-28', 'F', '78901234567', '2023-02-14', 'Rua do Flamengo'       , '79', 'Flamengo'   , 'Rio de Janeiro', 'BR', '20050789', 'RJ', '(21) 98765-6666', 'carolina.lima@email.com', 		'00000100', 'administrador', now()),
(2, '002', '000000010', 'Eduardo Fernandes'   , '1993-01-07', 'M', '67890123456', '2023-03-05', 'Rua do Leblon'         , '14', 'Leblon'     , 'Rio de Janeiro', 'BR', '22440321', 'RJ', '(21) 98765-7777', 'eduardo.fernandes@email.com', 	'00000101', 'administrador', now()),
(1, '001', '000000011', 'Isabel Oliveira'     , '1991-07-03', 'F', '21098765432', '2023-08-10', 'Rua da Gávea'          , '40', 'Gávea'      , 'Rio de Janeiro', 'BR', '22440321', 'RJ', '(21) 98765-1234', 'isabel.oliveira@email.com', 	'00000104', 'administrador', now()),
(2, '002', '000000012', 'Rafael Santos'       , '1997-05-28', 'M', '65432109876', '2023-06-18', 'Rua da Laranjeiras'    , '53', 'Laranjeiras', 'Rio de Janeiro', 'BR', '22222333', 'RJ', '(21) 98765-9999', 'rafael.santos@email.com', 		'00000107', 'administrador', now()),
(1, '001', '000000013', 'Fernanda Lima'       , '1996-04-15', 'F', '12309876543', '2023-05-27', 'Rua do Botafogo'       , '25', 'Botafogo'   , 'Rio de Janeiro', 'BR', '22011678', 'RJ', '(21) 98765-8888', 'fernanda.lima@email.com', 		'00000105', 'administrador', now()),
(2, '002', '000000014', 'Rodrigo Almeida'    , '1986-02-09', 'M', '90876543210', '2023-09-03', 'Rua do Leblon'         , '9' , 'Leblon'     , 'Rio de Janeiro', 'BR', '22440666', 'RJ', '(21) 98765-5555', 'rodrigo.almeida@email.com', 	'00000100', 'administrador', now()),
(1, '001', '000000015', 'Mariana Ferreira'   , '1994-11-17', 'F', '65432101234', '2023-10-20', 'Rua do Catete'         , '67', 'Catete'     , 'Rio de Janeiro', 'BR', '20040111', 'RJ', '(21) 98765-9999', 'mariana.ferreira@email.com', 	'00000109', 'administrador', now()),
(2, '002', '000000016', 'Ricardo Oliveira'   , '1990-03-28', 'M', '12345678901', '2023-04-04', 'Rua das Flores'        , '15', 'Laranjeiras', 'Rio de Janeiro', 'BR', '22222333', 'RJ', '(21) 98765-8888', 'ricardo.oliveira@email.com', 	'00000102', 'administrador', now()),
(1, '001', '000000017', 'Patrícia Almeida'   , '1988-07-09', 'F', '78901234567', '2023-08-01', 'Rua da Praia'          , '98', 'Copacabana' , 'Rio de Janeiro', 'BR', '22011011', 'RJ', '(21) 98765-5555', 'patricia.almeida@email.com', 	'00000108', 'administrador', now()),
(2, '002', '000000018', 'Fernando Lima'      , '1985-12-22', 'M', '34567890123', '2023-07-23', 'Rua do Flamengo'       , '45', 'Flamengo'   , 'Rio de Janeiro', 'BR', '20052020', 'RJ', '(21) 98765-1234', 'fernando.lima@email.com', 		'00000106', 'administrador', now()),
(1, '001', '000000019', 'Camila Rodrigues'   , '1993-04-14', 'F', '21098765432', '2023-04-30', 'Rua dos Coqueiros'    , '33', 'Ipanema'    , 'Rio de Janeiro', 'BR', '22441333', 'RJ', '(21) 98765-7777', 'camila.rodrigues@email.com', 	'00000101', 'administrador', now()),
(2, '002', '000000020', 'Gustavo Pereira'    , '1986-01-31', 'M', '54321098765', '2023-09-17', 'Rua da Glória'        , '11', 'Glória'     , 'Rio de Janeiro', 'BR', '20030000', 'RJ', '(21) 98765-6666', 'gustavo.pereira@email.com', 		'00000103', 'administrador', now()),
(1, '001', '000000021', 'Daniela Santos'     , '1998-08-12', 'F', '87654321098', '2023-07-28', 'Rua da Lapa'          , '29', 'Lapa'       , 'Rio de Janeiro', 'BR', '20021456', 'RJ', '(21) 98765-7777', 'daniela.santos@email.com', 		'00000107', 'administrador', now()),
(2, '002', '000000022', 'Roberto Oliveira'   , '1992-05-04', 'M', '23456789012', '2023-06-13', 'Rua do Botafogo'      , '4' , 'Botafogo'   , 'Rio de Janeiro', 'BR', '22011678', 'RJ', '(21) 98765-1234', 'roberto.oliveira@email.com', 	'00000103', 'administrador', now()),
(1, '001', '000000023', 'Sandra Lima'        , '1989-10-27', 'F', '45678912345', '2023-03-19', 'Rua da Gávea'         , '58', 'Gávea'      , 'Rio de Janeiro', 'BR', '22440321', 'RJ', '(21) 98765-9999', 'sandra.lima@email.com', 			'00000106', 'administrador', now()),
(2, '002', '000000024', 'Marcos Rodrigues'   , '1983-09-09', 'M', '98712345632', '2023-05-04', 'Rua da Laranjeiras'   , '22', 'Laranjeiras', 'Rio de Janeiro', 'BR', '22222333', 'RJ', '(21) 98765-8888', 'marcos.rodrigues@email.com', 	'00000100', 'administrador', now()),
(1, '001', '000000025', 'Luciana Almeida'   , '1987-06-01', 'F', '12309876543', '2023-02-07', 'Rua do Catete'        , '43', 'Catete'     , 'Rio de Janeiro', 'BR', '20040123', 'RJ', '(21) 98765-5555', 'luciana.almeida@email.com', 		'00000104', 'administrador', now()),
(2, '002', '000000026', 'Alexandre Pereira' , '1994-03-24', 'M', '65432109876', '2023-03-30', 'Rua do Leblon'        , '6' , 'Leblon'     , 'Rio de Janeiro', 'BR', '22440666', 'RJ', '(21) 98765-9999', 'alexandre.pereira@email.com', 	'00000102', 'administrador', now()),
(1, '001', '000000027', 'Tatiana Oliveira'  , '1996-09-16', 'F', '32109876543', '2023-08-14', 'Rua das Palmeiras'    , '81', 'Botafogo'   , 'Rio de Janeiro', 'BR', '22011011', 'RJ', '(21) 98765-5555', 'tatiana.oliveira@email.com', 		'00000108', 'administrador', now()),
(2, '002', '000000028', 'Marcelo Lima'      , '1981-12-07', 'M', '87654321098', '2023-09-29', 'Rua do Flamengo'      , '36', 'Flamengo'   , 'Rio de Janeiro', 'BR', '20052020', 'RJ', '(21) 98765-1234', 'marcelo.lima@email.com', 			'00000105', 'administrador', now()),
(1, '001', '000000029', 'Cristina Rodrigues', '1991-03-03', 'F', '54321098765', '2023-02-26', 'Rua do Botafogo'      , '13', 'Botafogo'   , 'Rio de Janeiro', 'BR', '22011678', 'RJ', '(21) 98765-7777', 'cristina.rodrigues@email.com', 	'00000101', 'administrador', now()),
(2, '002', '000000030', 'Marcos Pereira'    , '1985-08-15', 'M', '21098765432', '2023-07-05', 'Rua da Glória'        , '68', 'Glória'     , 'Rio de Janeiro', 'BR', '20030000', 'RJ', '(21) 98765-6666', 'marcos.pereira@email.com', 		'00000109', 'administrador', now()),
(1, '001', '000000031', 'Larissa Santos'    , '1999-04-29', 'F', '67890123456', '2023-04-11', 'Rua do Leblon'        , '72', 'Leblon'     , 'Rio de Janeiro', 'BR', '22440321', 'RJ', '(21) 98765-5555', 'larissa.santos@email.com', 		'00000100', 'administrador', now()),
(2, '002', '000000032', 'Leonardo Oliveira' , '1993-11-18', 'M', '78901234567', '2023-03-22', 'Rua da Lapa'          , '2' , 'Lapa'       , 'Rio de Janeiro', 'BR', '20021456', 'RJ', '(21) 98765-7777', 'leonardo.oliveira@email.com', 	'00000102', 'administrador', now()),
(1, '001', '000000033', 'Luisa Lima'        , '1987-05-12', 'F', '45678912345', '2023-08-08', 'Rua do Catete'        , '31', 'Catete'     , 'Rio de Janeiro', 'BR', '22440321', 'RJ', '(21) 98765-9999', 'luisa.lima@email.com', 			'00000106', 'administrador', now()),
(2, '002', '000000034', 'Lucas Almeida'     , '1995-02-06', 'M', '98712345632', '2023-06-26', 'Rua da Gávea'         , '76', 'Gávea'      , 'Rio de Janeiro', 'BR', '22222333', 'RJ', '(21) 98765-8888', 'lucas.almeida@email.com', 		'00000103', 'administrador', now()),
(1, '001', '000000035', 'Marina Fernandes'  , '1998-06-25', 'F', '21098765432', '2023-02-18', 'Rua das Flores'        , '87', 'Laranjeiras', 'Rio de Janeiro', 'BR', '22440321', 'RJ', '(21) 98765-5555', 'marina.fernandes@email.com', 	'00000105', 'administrador', now()),
(2, '002', '000000036', 'Raul Rodrigues'    , '1986-09-10', 'M', '54321098765', '2023-06-05', 'Rua da Praia'          , '59', 'Copacabana' , 'Rio de Janeiro', 'BR', '20040111', 'RJ', '(21) 98765-9999', 'raul.rodrigues@email.com', 		'00000108', 'administrador', now()),
(1, '001', '000000037', 'Isabella Oliveira' , '1990-12-01', 'F', '87654321098', '2023-07-16', 'Rua dos Coqueiros'    , '24', 'Ipanema'    , 'Rio de Janeiro', 'BR', '22441333', 'RJ', '(21) 98765-5555', 'isabella.oliveira@email.com', 	'00000104', 'administrador', now()),
(2, '002', '000000038', 'Fábio Lima'        , '1994-08-14', 'M', '12309876543', '2023-03-09', 'Rua do Leblon'        , '68', 'Leblon'     , 'Rio de Janeiro', 'BR', '20030000', 'RJ', '(21) 98765-6666', 'fabio.lima@email.com', 			'00000101', 'administrador', now()),
(1, '001', '000000039', 'Amanda Santos'     , '1988-04-03', 'F', '32109876543', '2023-07-09', 'Rua da Glória'        , '74', 'Glória'     , 'Rio de Janeiro', 'BR', '22011011', 'RJ', '(21) 98765-5555', 'amanda.santos@email.com', 		'00000109', 'administrador', now()),
(2, '002', '000000040', 'Henrique Pereira'  , '1981-10-26', 'M', '67890123456', '2023-02-02', 'Rua do Flamengo'      , '11', 'Flamengo'   , 'Rio de Janeiro', 'BR', '20052020', 'RJ', '(21) 98765-1234', 'henrique.pereira@email.com', 		'00000107', 'administrador', now());

