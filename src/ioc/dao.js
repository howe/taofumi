var ioc = {
	dataSource : {
		type :"org.apache.commons.dbcp.BasicDataSource",
		events : {
			depose :"close"
		},
		fields : {
			driverClassName : 'com.mysql.jdbc.Driver',
			url             : 'jdbc:mysql://localhost:3306/taofumi?useUnicode=true&characterEncoding=UTF-8',
			username        : 'root',
			password        : '12345678',
			initialSize     : 10,
			maxActive       : 100,
			testOnReturn    : true,
			//validationQueryTimeout : 5,
			validationQuery : "select 1"
		}
	},
    dao : {
        type : "org.nutz.dao.impl.NutDao",
        fields : {
        	dataSource : {refer : 'dataSource'}
        }
    }
}