package features;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;

import static org.junit.jupiter.api.Assertions.assertEquals;

@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class RunnerSesion2FlujoCrud {/*
    @Test
    @Order(1)
    void modificarUsuario() {
        Results result = Runner.path("sesion2/flujo_crud.feature").relativeTo(getClass()).tags("ModificarUsuario").parallel(1);
        assertEquals(0, result.getFailCount(), result.getErrorMessages());
    }

    @Test
    @Order(2)
    void eliminarUsuario() {
        Results result = Runner.path("sesion2/flujo_crud.feature").relativeTo(getClass()).tags("EliminarUsuario").parallel(1);
        assertEquals(0, result.getFailCount(), result.getErrorMessages());
    }*/
}
