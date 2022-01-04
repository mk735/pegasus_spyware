package com.lenovo.feedback2.agent;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.lenovo.feedback2.message.Message;

public interface IFeedBackAgent extends IInterface {
    Message received(Message message) throws RemoteException;

    public static abstract class Stub extends Binder implements IFeedBackAgent {
        public Stub() {
            attachInterface(this, "com.lenovo.feedback2.agent.IFeedBackAgent");
        }

        public static IFeedBackAgent asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface("com.lenovo.feedback2.agent.IFeedBackAgent");
            if (iin == null || !(iin instanceof IFeedBackAgent)) {
                return new a(obj);
            }
            return (IFeedBackAgent) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            Message _arg0;
            switch (code) {
                case 1:
                    data.enforceInterface("com.lenovo.feedback2.agent.IFeedBackAgent");
                    if (data.readInt() != 0) {
                        _arg0 = Message.CREATOR.createFromParcel(data);
                    } else {
                        _arg0 = null;
                    }
                    Message _result = received(_arg0);
                    reply.writeNoException();
                    if (_result != null) {
                        reply.writeInt(1);
                        _result.writeToParcel(reply, 1);
                    } else {
                        reply.writeInt(0);
                    }
                    if (_arg0 != null) {
                        reply.writeInt(1);
                        _arg0.writeToParcel(reply, 1);
                        return true;
                    }
                    reply.writeInt(0);
                    return true;
                case 1598968902:
                    reply.writeString("com.lenovo.feedback2.agent.IFeedBackAgent");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class a implements IFeedBackAgent {
            private IBinder a;

            a(IBinder remote) {
                this.a = remote;
            }

            public final IBinder asBinder() {
                return this.a;
            }

            @Override // com.lenovo.feedback2.agent.IFeedBackAgent
            public final Message received(Message message) throws RemoteException {
                Message _result;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.lenovo.feedback2.agent.IFeedBackAgent");
                    if (message != null) {
                        _data.writeInt(1);
                        message.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    this.a.transact(1, _data, _reply, 0);
                    _reply.readException();
                    if (_reply.readInt() != 0) {
                        _result = Message.CREATOR.createFromParcel(_reply);
                    } else {
                        _result = null;
                    }
                    if (_reply.readInt() != 0) {
                        message.readFromParcel(_reply);
                    }
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }
    }
}
