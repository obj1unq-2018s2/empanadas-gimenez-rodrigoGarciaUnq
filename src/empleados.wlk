object gimenez {

	var sueldo = 15000
	var totalCobrado = 0
	
	method sueldo() { return 15000 }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(){
		totalCobrado += self.sueldo()
	}
}

object baigorria {
	var cantidadEmpanadasVendidas = 1000
	var montoPorEmpanada = 15
	var deuda = 0
	var dinero = 0
	
	method venderEmpanada() {cantidadEmpanadasVendidas += 1}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	
	method cobrarSueldo(){
		if (self.totalDeuda().between(1, self.sueldo())){
			deuda = self.sueldo() - deuda
		}
		else if (self.totalDeuda() == 0){dinero += self.sueldo()}
		     else{deuda-= self.sueldo()}
		
	}
	
	method totalDeuda() {return deuda}
	
	method totalDinero() {return dinero}
	
	method gastar(cantidad){
		if (dinero > cantidad){ dinero -= cantidad }
		else {deuda += (cantidad - dinero)}
	}
}


object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { 
		dinero -= empleado.sueldo()
    	empleado.cobrarSueldo() }
}
