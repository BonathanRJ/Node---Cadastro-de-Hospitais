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



INSERT INTO PAC_PACIENTE (IDHOS, CDHOS, IDENF, CDENF, NRMATPAC, NMPAC, DTNSCPAC, TPSEXPAC, NRCPFPAC, DTISCPAC, NMPAI, NMMAE, DTFALPAC, DCLOGPAC, NRLOGPAC, DCBAIPAC, DCCIDPAC, CDPSIPAC, NRCEPPAC, SGUFSPAC, NRTELRSDPAC, NRTELCOMPAC, DCEMLPAC, AUUSUULTALT, AUDATULTALT)
VALUES
(1, '001', 1, '0101', '0000000001', 'João Silva', '1990-05-15', 'M', '12345678900', '2023-09-22', 'José Silva', 'Maria Silva', '2023-09-15', 'Rua Aleatória 1', '45', 'Bairro Aleatório 1', 'Cidade Aleatória 1', 'BR', '12345678', 'SP', '987654321', '987654321', 'joao.silva@email.com', 'administrador', NOW()),
(2, '002', 2, '0101', '0000000002', 'Maria Santos', '1985-07-20', 'F', '98765432100', '2023-09-23', 'Carlos Santos', 'Ana Santos', '2023-08-25', 'Rua Aleatória 2', '56', 'Bairro Aleatório 2', 'Cidade Aleatória 2', 'BR', '23456789', 'RJ', '987654322', '987654322', 'maria.santos@email.com', 'administrador', NOW()),
(1, '001', 1, '0101', '0000000003', 'José Oliveira', '1998-03-10', 'M', '11122233344', '2023-09-24', 'Antônio Oliveira', 'Sônia Oliveira', NULL, 'Rua Aleatória 3', '78', 'Bairro Aleatório 3', 'Cidade Aleatória 3', 'BR', '34567890', 'MG', '987654323', '987654323', 'jose.oliveira@email.com', 'administrador', NOW()),
(2, '002', 2, '0101', '0000000004', 'Ana Pereira', '2000-12-05', 'F', '55544433322', '2023-09-25', 'Paulo Pereira', 'Carla Pereira', NULL, 'Rua Aleatória 4', '89', 'Bairro Aleatório 4', 'Cidade Aleatória 4', 'BR', '45678901', 'RS', '987654324', '987654324', 'ana.pereira@email.com', 'administrador', NOW()),
(1, '001', 1, '0102', '0000000005', 'Carlos Santos', '1992-08-30', 'M', '88877766655', '2023-09-26', 'Mário Santos', 'Fernanda Santos', NULL, 'Rua Aleatória 5', '12', 'Bairro Aleatório 5', 'Cidade Aleatória 5', 'BR', '56789012', 'PR', '987654325', '987654325', 'carlos.santos@email.com', 'administrador', NOW()),
(2, '002', 2, '0102', '0000000006', 'Sônia Lima', '1995-04-18', 'F', '33322211144', '2023-09-27', 'Rafael Lima', 'Isabela Lima', NULL, 'Rua Aleatória 6', '23', 'Bairro Aleatório 6', 'Cidade Aleatória 6', 'BR', '67890123', 'SC', '987654326', '987654326', 'sonia.lima@email.com', 'administrador', NOW()),
(1, '001', 1, '0102', '0000000007', 'Mário Pereira', '1987-11-25', 'M', '77788899900', '2023-09-28', 'Roberto Pereira', 'Laura Pereira', '2023-04-15', 'Rua Aleatória 7', '34', 'Bairro Aleatório 7', 'Cidade Aleatória 7', 'BR', '78901234', 'GO', '987654327', '987654327', 'mario.pereira@email.com', 'administrador', NOW()),
(2, '002', 2, '0102', '0000000008', 'Fernanda Oliveira', '1996-02-12', 'F', '22233344455', '2023-09-29', 'Gustavo Oliveira', 'Cláudia Oliveira', NULL, 'Rua Aleatória 8', '45', 'Bairro Aleatório 8', 'Cidade Aleatória 8', 'BR', '89012345', 'BA', '987654328', '987654328', 'fernanda.oliveira@email.com', 'administrador', NOW()),
(1, '001', 1, '0102', '0000000009', 'Rafael Lima', '2001-09-08', 'M', '66655544433', '2023-09-30', 'Ricardo Lima', 'Juliana Lima', NULL, 'Rua Aleatória 9', '56', 'Bairro Aleatório 9', 'Cidade Aleatória 9', 'BR', '90123456', 'MA', '987654329', '987654329', 'rafael.lima@email.com', 'administrador', NOW()),
(2, '002', 2, '0102', '0000000010', 'Isabela Silva', '1993-06-15', 'F', '55566677788', '2023-10-01', 'Marcelo Silva', 'Lúcia Silva', NULL, 'Rua Aleatória 10', '67', 'Bairro Aleatório 10', 'Cidade Aleatória 10', 'BR', '01234567', 'AM', '987654330', '987654330', 'isabela.silva@email.com', 'administrador', NOW()),
(1, '001', 1, '0102', '0000000011', 'Roberto Santos', '1989-01-22', 'M', '44477788899', '2023-10-02', 'Renato Santos', 'Eliana Santos', NULL, 'Rua Aleatória 11', '78', 'Bairro Aleatório 11', 'Cidade Aleatória 11', 'BR', '12345678', 'PA', '987654331', '987654331', 'roberto.santos@email.com', 'administrador', NOW()),
(2, '002', 2, '0102', '0000000012', 'Cláudia Oliveira', '1997-04-29', 'F', '33388877766', '2023-10-03', 'Cristiano Oliveira', 'Mariana Oliveira', '2023-10-02', 'Rua Aleatória 12', '89', 'Bairro Aleatório 12', 'Cidade Aleatória 12', 'BR', '23456789', 'AC', '987654332', '987654332', 'claudia.oliveira@email.com', 'administrador', NOW()),
(1, '001', 1, '0201', '0000000013', 'Gustavo Lima', '1986-10-06', 'M', '22255544433', '2023-10-04', 'Giovanni Lima', 'Aline Lima', NULL, 'Rua Aleatória 13', '90', 'Bairro Aleatório 13', 'Cidade Aleatória 13', 'BR', '34567890', 'RR', '987654333', '987654333', 'gustavo.lima@email.com', 'administrador', NOW()),
(2, '002', 2, '0201', '0000000014', 'Cláudia Pereira', '2002-02-13', 'F', '77799988877', '2023-10-05', 'Carlos Pereira', 'Fátima Pereira', '2023-05-20', 'Rua Aleatória 14', '01', 'Bairro Aleatório 14', 'Cidade Aleatória 14', 'BR', '45678901', 'AP', '987654334', '987654334', 'claudia.pereira@email.com', 'administrador', NOW()),
(1, '001', 1, '0201', '0000000015', 'Ricardo Santos', '1990-05-20', 'M', '11144477788', '2023-10-06', 'Rodrigo Santos', 'Priscila Santos', NULL, 'Rua Aleatória 15', '12', 'Bairro Aleatório 15', 'Cidade Aleatória 15', 'BR', '56789012', 'TO', '987654335', '987654335', 'ricardo.santos@email.com', 'administrador', NOW()),
(2, '002', 2, '0201', '0000000016', 'Mariana Silva', '1994-09-27', 'F', '55577788899', '2023-10-07', 'Manoel Silva', 'Tatiana Silva', NULL, 'Rua Aleatória 16', '23', 'Bairro Aleatório 16', 'Cidade Aleatória 16', 'BR', '67890123', 'RR', '987654336', '987654336', 'mariana.silva@email.com', 'administrador', NOW()),
(1, '001', 1, '0301', '0000000017', 'Renato Oliveira', '2003-01-03', 'M', '66677788899', '2023-10-08', 'Rafael Oliveira', 'Camila Oliveira', '2023-11-07', 'Rua Aleatória 17', '34', 'Bairro Aleatório 17', 'Cidade Aleatória 17', 'BR', '78901234', 'SC', '987654337', '987654337', 'renato.oliveira@email.com', 'administrador', NOW()),
(2, '002', 2, '0301', '0000000018', 'Eliana Lima', '1998-04-10', 'F', '33344455566', '2023-10-09', 'Eduardo Lima', 'Renata Lima', NULL, 'Rua Aleatória 18', '45', 'Bairro Aleatório 18', 'Cidade Aleatória 18', 'BR', '89012345', 'SE', '987654338', '987654338', 'eliana.lima@email.com', 'administrador', NOW()),
(1, '001', 1, '0301', '0000000019', 'Cristiano Santos', '1991-07-17', 'M', '22233344455', '2023-10-10', 'Cláudio Santos', 'Larissa Santos', NULL, 'Rua Aleatória 19', '56', 'Bairro Aleatório 19', 'Cidade Aleatória 19', 'BR', '90123456', 'PI', '987654339', '987654339', 'cristiano.santos@email.com', 'administrador', NOW()),
(2, '002', 2, '0301', '0000000020', 'Mariana Oliveira', '1999-10-24', 'F', '77788899900', '2023-10-11', 'Marcelo Oliveira', 'Mara Oliveira', NULL, 'Rua Aleatória 20', '67', 'Bairro Aleatório 20', 'Cidade Aleatória 20', 'BR', '01234567', 'PE', '987654340', '987654340', 'mariana.oliveira@email.com', 'administrador', NOW()),
(1, '001', 1, '0302', '0000000021', 'Rodrigo Lima', '1988-02-01', 'M', '44455566677', '2023-10-12', 'Roberto Lima', 'Simone Lima', NULL, 'Rua Aleatória 21', '78', 'Bairro Aleatório 21', 'Cidade Aleatória 21', 'BR', '12345678', 'MT', '987654341', '987654341', 'rodrigo.lima@email.com', 'administrador', NOW()),
(2, '002', 2, '0302', '0000000022', 'Priscila Pereira', '1992-05-08', 'F', '55566677788', '2023-10-13', 'Paulo Pereira', 'Mônica Pereira', NULL, 'Rua Aleatória 22', '89', 'Bairro Aleatório 22', 'Cidade Aleatória 22', 'BR', '23456789', 'MS', '987654342', '987654342', 'priscila.pereira@email.com', 'administrador', NOW()),
(1, '001', 1, '0302', '0000000023', 'Rodrigo Santos', '1997-08-15', 'M', '22255544433', '2023-10-14', 'Renato Santos', 'Érica Santos', NULL, 'Rua Aleatória 23', '90', 'Bairro Aleatório 23', 'Cidade Aleatória 23', 'BR', '34567890', 'MG', '987654343', '987654343', 'rodrigo.santos@email.com', 'administrador', NOW()),
(2, '002', 2, '0302', '0000000024', 'Simone Oliveira', '1994-11-22', 'F', '77799988877', '2023-10-15', 'Sérgio Oliveira', 'Roberta Oliveira', NULL, 'Rua Aleatória 24', '01', 'Bairro Aleatório 24', 'Cidade Aleatória 24', 'BR', '45678901', 'PA', '987654344', '987654344', 'simone.oliveira@email.com', 'administrador', NOW()),
(1, '001', 1, '0302', '0000000025', 'Érica Lima', '1993-02-28', 'F', '11144477788', '2023-10-16', 'Eduardo Lima', 'Júlia Lima', NULL, 'Rua Aleatória 25', '12', 'Bairro Aleatório 25', 'Cidade Aleatória 25', 'BR', '56789012', 'CE', '987654345', '987654345', 'erica.lima@email.com', 'administrador', NOW());

INSERT INTO PAC_ACOMPANHANTE (IDHOS, CDHOS, IDENF, CDENF, NRMATACO, NMACO, DTNSCACO, IDPAC, NRMATPAC, NRCPFACO, NRTELRSDACO, DCEMLACO, AUUSUULTALT, AUDATULTALT)
VALUES
(1, '001', 2, '0102', '0000000001', 'Ana Silva', 		'1985-03-10', 10, '0000000010' ,'12345678900', '987654321', 'ana.silva@email.com', 'administrador', NOW()),
(2, '002', 1, '0102', '0000000002', 'Carlos Santos',	'1989-07-20', 11, '0000000011' ,'98765432100', '987654322', 'carlos.santos@email.com', 'administrador', NOW()),
(1, '001', 2, '0102', '0000000003', 'João Oliveira',	'1992-11-15', 12, '0000000012' ,'11122233344', '987654323', 'joao.oliveira@email.com', 'administrador', NOW()),
(2, '002', 1, '0201', '0000000004', 'Maria Lima', 		'1996-05-05', 13, '0000000013' ,'55544433322', '987654324', 'maria.lima@email.com', 'administrador', NOW()),
(1, '001', 2, '0201', '0000000005', 'Paulo Santos', 	'1980-09-30', 14, '0000000014' ,'88877766655', '987654325', 'paulo.santos@email.com', 'administrador', NOW()),
(2, '002', 1, '0201', '0000000006', 'Sônia Pereira',	'1976-02-18', 15, '0000000015' ,'33322211144', '987654326', 'sonia.pereira@email.com', 'administrador', NOW()),
(1, '001', 2, '0201', '0000000007', 'Rafael Oliveira', 	'1990-12-25', 16, '0000000016' ,'77788899900', '987654327', 'rafael.oliveira@email.com', 'administrador', NOW()),
(2, '002', 1, '0301', '0000000008', 'Cláudia Lima', 	'1995-04-10', 17, '0000000017' ,'22233344455', '987654328', 'claudia.lima@email.com', 'administrador', NOW()),
(1, '001', 2, '0301', '0000000009', 'Renato Santos', 	'1997-08-08', 18, '0000000018' ,'66655544433', '987654329', 'renato.santos@email.com', 'administrador', NOW()),
(2, '002', 1, '0301', '0000000010', 'Isabela Silva', 	'1993-06-15', 19, '0000000019' ,'55566677788', '987654330', 'isabela.silva@email.com', 'administrador', NOW());