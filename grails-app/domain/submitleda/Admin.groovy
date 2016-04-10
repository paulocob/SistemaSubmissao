package submitleda

class Admin {
    String usuario
    String senha
    
    static constraints = {
		usuario maxSize : 8, nullable : false
		senha maxSize : 10, nullable : false, password : true
    }
	
	static mapping = {
		table 'admin'
		version false
		id column: 'id_admin', insertable: false, updateable: false
		nome column: 'nome'
		
	}
}
