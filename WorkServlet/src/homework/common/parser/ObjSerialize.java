package homework.common.parser;

import java.io.FileWriter;

import org.w3c.dom.Document;
import org.w3c.dom.bootstrap.DOMImplementationRegistry;
import org.w3c.dom.ls.DOMImplementationLS;
import org.w3c.dom.ls.LSOutput;
import org.w3c.dom.ls.LSSerializer;

public class ObjSerialize {
	 public static void out(Document doc,String path) throws Exception{
		//获取DOMImplementationRegistry对象
		DOMImplementationRegistry   registry = DOMImplementationRegistry.newInstance();
		//处理XML的格式
		//获取DOMImplementationLS
		DOMImplementationLS  ls = (DOMImplementationLS)registry.getDOMImplementation("LS");
		//获取
		LSSerializer   lss = ls.createLSSerializer();
		//设置使XML文档更美观
		lss.getDomConfig().setParameter("format-pretty-print", true);
		
		LSOutput  out = ls.createLSOutput();
		//指定输出文档的编码所用的字符集
		out.setEncoding("GBK");
		
		FileWriter   fw = new FileWriter(path);
		
		out.setCharacterStream(fw);
		
		//执行序列化(也就是将DOM数据转成XML文档)
		lss.write(doc, out);
		
	}
}
