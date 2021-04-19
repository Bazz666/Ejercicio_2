class CuentaBancaria

    attr_accessor :nombre_bco, :cuenta, :saldo

    def initialize (nombre_bco,cuenta,saldo=0)
        @nombre_bco = nombre_bco
        @cuenta = cuenta
        @saldo = saldo
    end
    
    def transferir(monto, otra_cuenta)
        @saldo = @saldo - monto
        otra_cuenta.saldo= otra_cuenta.saldo + monto
        print "actualizando transaccion... \n"
    end

end

cuenta1 = CuentaBancaria.new('BCI',123455678,5000)
cuenta2 = CuentaBancaria.new('Santander',567123456,5000)
puts "el saldo de la cuenta #{cuenta1.cuenta} es #{cuenta1.saldo}" 
puts "el saldo de la cuenta #{cuenta2.cuenta} es #{cuenta2.saldo}" 

cuenta1.transferir(5000,cuenta2)
puts "el saldo de la cuenta #{cuenta1.cuenta} es #{cuenta1.saldo}" 
puts "el saldo de la cuenta #{cuenta2.cuenta} es #{cuenta2.saldo}"

class Usuario 
    attr_accessor :usuario
    attr_reader :cuentas
    def initialize (usuario,cuentas)
        @usuario=usuario
        @cuentas=cuentas
    end

    def total
        total=0
        @cuentas.each do |cuentas|
        total+= cuentas.saldo
        end
        puts " calculando...."
        total
    end
end

cuenta3= CuentaBancaria.new('bva',23456789,4000)
usuario1= Usuario.new('Sergio',[cuenta1,cuenta2,cuenta3])
puts "el total en dinero del usuario es de #{usuario1.total}" 
