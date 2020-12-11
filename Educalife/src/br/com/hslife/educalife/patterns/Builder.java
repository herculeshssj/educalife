package br.com.hslife.educalife.patterns;

import java.lang.reflect.*;

public class Builder<T> {

    T entity;

    public Builder() {

    }

    public Builder(T entity) {
        this.entity = entity;
    }
    
    
    private boolean isSetter(Method metodo) {
    	if (metodo.getName().startsWith("set") && metodo.getParameterCount() == 1 && metodo.getReturnType().equals(void.class)) {
    		return true;
    	}
    	
    	return false;
    }
    
    public Builder<T> set(String property, Object value) throws Exception {
    	
    	Method[] metodos = this.entity.getClass().getDeclaredMethods();
    	for (Method metodo : metodos) {
    		if (isSetter(metodo)) {
    			if (metodo.getName().toLowerCase().contains(property.toLowerCase())) {
    				metodo.invoke(this.entity, value);
    			}
    		}
    	}
    	
        return this;
    }

	public T build() throws Exception {
        return (T)entity;
    }
}
