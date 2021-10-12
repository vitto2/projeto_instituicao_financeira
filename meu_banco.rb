class Banco 

    attr_accessor :valor_compra, :saldo,:deposito, :limite_cred
 
     def initialize(deposito)
         @deposito = deposito; 
         @sacar = 0;
         @limite_cred = 0;   
 
         if deposito <= 2000
             @limite_cred = (deposito / 100) * 25;  
         elsif deposito > 2000 && deposito <= 9999 
             @limite_cred = (deposito / 100) * 35
         elsif deposito > 9999 
             @limite_cred = (deposito / 100) * 45
         end 
     end 
 
     def depositar(deposito) 
         @deposito =  @deposito + deposito;
         @saldo = @deposito; 

         puts "Deposito feito com sucesso. Seu novo saldo é de #{@saldo}"
     end
 
     def saldo
         @saldo
     end  
 
     def sacar(valor_saque) 
        @saldo = @saldo - valor_saque; 
         puts "Saque efetuado com sucesso."
     end 
 
     def limite_credito
         puts "Limite disponível R$#{@limite_cred}"
     end 

     def compra_credito(valor_compra)
       @limite_cred = @limite_cred - valor_compra
        puts "Compra no valor de R$#{valor_compra} aprovada."
     end 
 end 
 
cliente_1 = Banco.new(10000)
cliente_1.limite_credito
cliente_1.depositar(5000)
cliente_1.depositar(2000)
puts "Seu saldo é #{cliente_1.saldo}"
cliente_1.sacar(1000)
puts "Seu novo saldo é #{cliente_1.saldo}"
cliente_1.depositar(10000)
cliente_1.sacar(3000)
puts "Seu novo saldo é #{cliente_1.saldo}"
cliente_1.compra_credito(1559.90)
cliente_1.limite_credito