package br.com.ocorrencias.propertyEditor;

import java.beans.PropertyEditorSupport;
import java.text.ParseException;
import java.text.SimpleDateFormat;


public class DataPropertyEditor  extends PropertyEditorSupport {
	
	@Override
	public void setAsText(String text) {
		try {
			setValue(new SimpleDateFormat("dd/MM/yyyy").parse(text));
        } catch(ParseException e) {
            setValue(null);
        }
	}
}
