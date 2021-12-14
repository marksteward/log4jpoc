import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class MyExample {
    private static final Logger logger = LogManager.getLogger(MyExample.class);

    public static void main(String[] args) {
        logger.error("${env:S${upper:e}CRET_VALUE:-:}");
        logger.error("${env:x:-$}{lower:X}");
        logger.error("hi: ${upper:{}}", "${env:x:-$}{lower:X}");
    }
}
