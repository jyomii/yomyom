package co.pr.fi.task;

public class CheckParameter {

	
	public static String replaceParameter(String param) {
		String result = param;
		if(param != null) {
			result = result.replaceAll("<", "&lt;");
			result = result.replaceAll(">","&gt;");
			result = result.replaceAll("\"", "&quot;");
			
		}
		return result;
	}
}
