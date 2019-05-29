public class stdPriceBook {
	
	private static Pricebook2 stdPriceBook; // singleton
	
	public static Id getStdPricebookId() {
		if (Test.isRunningTest()) {
			return Test.getStandardPricebookId();
		}
		else {
			return getStdPricebook().Id;
		}
	}

	private static Pricebook2 getStdPriceBook() {
		if (stdPriceBook == null) {
			stdPriceBook = [SELECT Id, Name FROM Pricebook2 WHERE isStandard = true LIMIT 1];
		}
		return stdPriceBook;
	}
}