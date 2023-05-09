package runner;

import org.testng.annotations.BeforeTest;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Optional;
import org.testng.annotations.Parameters;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;
import utilities.ConfigReader;

@CucumberOptions(plugin = { "pretty", "html:target/dsAlgoReport.html" }, // reporting purpose
		monochrome = false, // console output
		//tags = ("@TS_array_19 and @TS_array_20 and @TS_array_21"), // tags from feature file
		//tags="@register",
		features = { "src/test/resources/features/" }, // location of feature files
		glue = { "stepDefinition", "appHooks" }) // location of step definition files

public class TestRunner extends AbstractTestNGCucumberTests {
	@Override
	@DataProvider(parallel = false)
	public Object[][] scenarios() {

		return super.scenarios();
	}
	@BeforeTest
    @Parameters({"browser"})
    public void defineBrowser(@Optional("chrome")String browser) throws Throwable {
		 System.out.println(browser);
		ConfigReader.loadConfig();
		ConfigReader.setBrowserType(browser);
		System.out.println(" in runner " + browser);

}

}