import semillas.*

class Parcela {

	var property ancho
	var property largo
	var property horasDeSol
	var plantas = #{}

	method superficie() {
		return (self.ancho() * self.largo())
	}

	method cantidadMaxima() {
		if (self.ancho() > self.largo()) {
			return (self.superficie() / 5)
		} else {
			return ((self.superficie() / 3) + self.largo())
		}
	}

	method tieneComplicaciones() {
		return plantas.any({ planta => planta.horasDeSol() < self.horasDeSol() })
	}

	method plantarUnaPlanta(planta) {
		plantas.add(planta)
		if (self.cantidadMaxima() or (planta.horasDeSol() < self.horasDeSol() + 2)) {
			self.error("supero la cantidad maxima.")
		}
	}

}

