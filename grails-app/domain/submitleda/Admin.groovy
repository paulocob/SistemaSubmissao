package submitleda

class Admin {
    String usuario
    String senha
    
    static constraints = {
    }
	
	static mapping = {
		table 'admin'
		version false
		id column: 'id_admin', insertable: false, updateable: false
		nome column: 'nome'
		
	}
}
