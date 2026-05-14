package features;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

class RunnerEjercicio {

    @Test
    void flujoCarrito() {
        Results result = Runner.path("Ejercicio/login.feature", "Ejercicio/carrito.feature", "Ejercicio/crudCarrito.feature").relativeTo(getClass()).parallel(1);
        assertEquals(0, result.getFailCount(), result.getErrorMessages());
    }

}
