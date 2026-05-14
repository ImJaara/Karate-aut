package features;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class RunnerSesion2 {
    @Test
    void crearUsuario() {
        Results result = Runner.path("sesion2/crear_usuario.feature").relativeTo(getClass()).tags("CrearUsuario").parallel(1);
        assertEquals(0, result.getFailCount(), result.getErrorMessages());
    }

    @Test
    void crearUsuarioDataset() {
        Results result = Runner.path("sesion2/crear_usuario.feature").relativeTo(getClass()).tags("CrearUsuarioDataset").parallel(1);
        assertEquals(0, result.getFailCount(), result.getErrorMessages());
    }
}
