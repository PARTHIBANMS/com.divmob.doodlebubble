package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.query.Filter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class LogicalFilter
  implements SafeParcelable, Filter
{
  public static final Parcelable.Creator<LogicalFilter> CREATOR = new f();
  private List<Filter> EN;
  final Operator EO;
  final List<FilterHolder> EY;
  final int wj;
  
  LogicalFilter(int paramInt, Operator paramOperator, List<FilterHolder> paramList)
  {
    this.wj = paramInt;
    this.EO = paramOperator;
    this.EY = paramList;
  }
  
  public LogicalFilter(Operator paramOperator, Filter paramFilter, Filter... paramVarArgs)
  {
    this.wj = 1;
    this.EO = paramOperator;
    this.EY = new ArrayList(1 + paramVarArgs.length);
    this.EY.add(new FilterHolder(paramFilter));
    this.EN = new ArrayList(1 + paramVarArgs.length);
    this.EN.add(paramFilter);
    int i = paramVarArgs.length;
    for (int j = 0; j < i; j++)
    {
      Filter localFilter = paramVarArgs[j];
      this.EY.add(new FilterHolder(localFilter));
      this.EN.add(localFilter);
    }
  }
  
  public LogicalFilter(Operator paramOperator, Iterable<Filter> paramIterable)
  {
    this.wj = 1;
    this.EO = paramOperator;
    this.EN = new ArrayList();
    this.EY = new ArrayList();
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
    {
      Filter localFilter = (Filter)localIterator.next();
      this.EN.add(localFilter);
      this.EY.add(new FilterHolder(localFilter));
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    f.a(this, paramParcel, paramInt);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.drive.query.internal.LogicalFilter
 * JD-Core Version:    0.7.0.1
 */