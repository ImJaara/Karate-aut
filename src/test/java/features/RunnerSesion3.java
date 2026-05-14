package features;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;

import static org.junit.jupiter.api.Assertions.assertEquals;
public class RunnerSesion3 {
    /*
    @Test
    void obtenerToken() {
        Results result = Runner.path("sesion3/login.feature").relativeTo(getClass()).tags("ObtenerToken").parallel(1);
        assertEquals(0, result.getFailCount(), result.getErrorMessages());
    }

    @Test
    void crearCarroDeCompra() {
        Results result = Runner.path("sesion3/crearCarroDeCompra.feature").relativeTo(getClass()).tags("CrearCarro").parallel(1);
        assertEquals(0, result.getFailCount(), result.getErrorMessages());
    }

    @Test
    void obtenerProducto() {
        Results result = Runner.path("sesion3/obtenerProducto.feature").relativeTo(getClass()).tags("ObtenerProductos").parallel(1);
        assertEquals(0, result.getFailCount(), result.getErrorMessages());
    }
*/
    @Test
    void flujoCarroDeCompra() {
        Results result = Runner.path("sesion3/flujoCarroCompra.feature").relativeTo(getClass()).parallel(1);
        assertEquals(0, result.getFailCount(), result.getErrorMessages());
    }
/*
    @Test
    @Order(2)
    void flujoCarroDeCompra2() {
        Results result = Runner.path("sesion3/flujoCarroCompra.feature").relativeTo(getClass()).tags("CrearCarro").parallel(1);
        assertEquals(0, result.getFailCount(), result.getErrorMessages());
    }*/
}
