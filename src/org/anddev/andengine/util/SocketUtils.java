package org.anddev.andengine.util;

import java.io.IOException;
import java.net.DatagramSocket;
import java.net.ServerSocket;
import java.net.Socket;

public class SocketUtils
{
  public static void closeSocket(DatagramSocket paramDatagramSocket)
  {
    if ((paramDatagramSocket != null) && (!paramDatagramSocket.isClosed())) {
      paramDatagramSocket.close();
    }
  }
  
  public static void closeSocket(ServerSocket paramServerSocket)
  {
    if ((paramServerSocket != null) && (!paramServerSocket.isClosed())) {}
    try
    {
      paramServerSocket.close();
      return;
    }
    catch (IOException localIOException)
    {
      Debug.e(localIOException);
    }
  }
  
  public static void closeSocket(Socket paramSocket)
  {
    if ((paramSocket != null) && (!paramSocket.isClosed())) {}
    try
    {
      paramSocket.close();
      return;
    }
    catch (IOException localIOException)
    {
      Debug.e(localIOException);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.SocketUtils
 * JD-Core Version:    0.7.0.1
 */