DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, 'mysql://root:qwe123@localhost/denunciasjp')

class Denuncia
	include DataMapper::Resource

	property :id,	Serial
	property :autor,	String
	property :resumo,	String
	property :descricao,	Text
	property :endereco,	String
	property :foto,	String
	property :data,	DateTime
end

DataMapper.auto_upgrade!
