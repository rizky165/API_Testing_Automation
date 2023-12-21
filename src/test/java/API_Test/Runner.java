package API_Test;

import com.intuit.karate.junit5.Karate;

public class Runner {
    @Karate.Test
    public Karate runGet() {

        return Karate.run("getRequest").relativeTo(getClass());
    }
    @Karate.Test
    public Karate runPost() {

        return Karate.run("postRequest").relativeTo(getClass());
    }

    @Karate.Test
    public Karate runDelete() {

        return Karate.run("deleteRequest").relativeTo(getClass());
    }
}
