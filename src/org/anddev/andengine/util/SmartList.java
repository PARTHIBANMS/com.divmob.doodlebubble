package org.anddev.andengine.util;

import java.util.ArrayList;

public class SmartList<T>
  extends ArrayList<T>
{
  private static final long serialVersionUID = -8335986399182700102L;
  
  public SmartList() {}
  
  public SmartList(int paramInt)
  {
    super(paramInt);
  }
  
  public void call(IMatcher<T> paramIMatcher, ParameterCallable<T> paramParameterCallable)
  {
    for (int i = -1 + size();; i--)
    {
      if (i < 0) {
        return;
      }
      Object localObject = get(i);
      if (paramIMatcher.matches(localObject)) {
        paramParameterCallable.call(localObject);
      }
    }
  }
  
  public void call(ParameterCallable<T> paramParameterCallable)
  {
    for (int i = -1 + size();; i--)
    {
      if (i < 0) {
        return;
      }
      paramParameterCallable.call(get(i));
    }
  }
  
  public void clear(ParameterCallable<T> paramParameterCallable)
  {
    for (int i = -1 + size();; i--)
    {
      if (i < 0) {
        return;
      }
      paramParameterCallable.call(remove(i));
    }
  }
  
  public T find(IMatcher<T> paramIMatcher)
  {
    for (int i = -1 + size();; i--)
    {
      Object localObject;
      if (i < 0) {
        localObject = null;
      }
      do
      {
        return localObject;
        localObject = get(i);
      } while (paramIMatcher.matches(localObject));
    }
  }
  
  public T remove(IMatcher<T> paramIMatcher)
  {
    for (int i = 0;; i++)
    {
      if (i >= size()) {
        return null;
      }
      if (paramIMatcher.matches(get(i))) {
        return remove(i);
      }
    }
  }
  
  public T remove(IMatcher<T> paramIMatcher, ParameterCallable<T> paramParameterCallable)
  {
    for (int i = -1 + size();; i--)
    {
      if (i < 0) {
        return null;
      }
      if (paramIMatcher.matches(get(i)))
      {
        Object localObject = remove(i);
        paramParameterCallable.call(localObject);
        return localObject;
      }
    }
  }
  
  public boolean remove(T paramT, ParameterCallable<T> paramParameterCallable)
  {
    boolean bool = remove(paramT);
    if (bool) {
      paramParameterCallable.call(paramT);
    }
    return bool;
  }
  
  public boolean removeAll(IMatcher<T> paramIMatcher)
  {
    int i = -1 + size();
    boolean bool = false;
    for (int j = i;; j--)
    {
      if (j < 0) {
        return bool;
      }
      if (paramIMatcher.matches(get(j)))
      {
        remove(j);
        bool = true;
      }
    }
  }
  
  public boolean removeAll(IMatcher<T> paramIMatcher, ParameterCallable<T> paramParameterCallable)
  {
    int i = -1 + size();
    boolean bool = false;
    for (int j = i;; j--)
    {
      if (j < 0) {
        return bool;
      }
      if (paramIMatcher.matches(get(j)))
      {
        paramParameterCallable.call(remove(j));
        bool = true;
      }
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.SmartList
 * JD-Core Version:    0.7.0.1
 */