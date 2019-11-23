class Plantas {

	var property anio
	var property altura

	method horasDeSol()

	method esFuerte() {
		return (self.horasDeSol() > 10)
	}

	method daSemillas() {
		return self.esFuerte()
	}

}

class Menta inherits Plantas {

	override method horasDeSol() = 6

	override method daSemillas() {
		return super() or self.altura() > 0.4
	}

	method espacio() {
		return self.altura() * 3
	}

}

class Soja inherits Plantas {

	override method horasDeSol() {
		if (self.altura() < 0.5) {
			return 6
		} else if (self.altura().between(0.5, 1)) {
			return 7
		} else {
			return 9
		}
	}

	override method daSemillas() {
		return super() or (self.anio() > 2007 and self.altura() > 1)
	}

	method espacio() {
		return self.altura() / 2
	}

}

class Quinoa inherits Plantas {

	var property horasDeSol

	method espacio() {
		return 0.5
	}

	override method daSemillas() {
		return super() or (self.anio() < 2005)
	}

}

class SojaTransgenica inherits Soja {

	override method daSemillas() {
		return false
	}

}

class HierbaBuena inherits Menta {

	override method espacio() {
		return super() * 2
	}

}

