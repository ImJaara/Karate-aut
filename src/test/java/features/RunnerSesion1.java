package features;

import com.intuit.karate.Runner;
import com.intuit.karate.Results;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class RunnerSesion1 {
    @Test
    void ejemploGet() {
        Results result = Runner.path("sesion1/ejemplo_get.feature").relativeTo(getClass()).tags("ejemplo").parallel(1);
        assertEquals(0, result.getFailCount(), result.getErrorMessages());
    }
}
