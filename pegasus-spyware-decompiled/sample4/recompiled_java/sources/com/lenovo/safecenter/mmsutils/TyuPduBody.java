package com.lenovo.safecenter.mmsutils;

import java.util.HashMap;
import java.util.Map;
import java.util.Vector;

public class TyuPduBody {
    private Vector<PduPart> a;
    private Map<String, PduPart> b;
    private Map<String, PduPart> c;
    private Map<String, PduPart> d;
    private Map<String, PduPart> e;

    public TyuPduBody() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.a = new Vector<>();
        this.b = new HashMap();
        this.c = new HashMap();
        this.d = new HashMap();
        this.e = new HashMap();
    }

    private void a(PduPart part) {
        byte[] contentId = part.getContentId();
        if (contentId != null) {
            this.b.put(new String(contentId), part);
        }
        byte[] contentLocation = part.getContentLocation();
        if (contentLocation != null) {
            this.c.put(new String(contentLocation), part);
        }
        byte[] name = part.getName();
        if (name != null) {
            this.d.put(new String(name), part);
        }
        byte[] fileName = part.getFilename();
        if (fileName != null) {
            this.e.put(new String(fileName), part);
        }
    }

    public boolean addPart(PduPart part) {
        if (part == null) {
            throw new NullPointerException();
        }
        a(part);
        return this.a.add(part);
    }

    public void addPart(int index, PduPart part) {
        if (part == null) {
            throw new NullPointerException();
        }
        a(part);
        this.a.add(index, part);
    }

    public PduPart removePart(int index) {
        return this.a.remove(index);
    }

    public void removeAll() {
        this.a.clear();
    }

    public PduPart getPart(int index) {
        return this.a.get(index);
    }

    public int getPartIndex(PduPart part) {
        return this.a.indexOf(part);
    }

    public int getPartsNum() {
        return this.a.size();
    }

    public PduPart getPartByContentId(String cid) {
        return this.b.get(cid);
    }

    public PduPart getPartByContentLocation(String contentLocation) {
        return this.c.get(contentLocation);
    }

    public PduPart getPartByName(String name) {
        return this.d.get(name);
    }

    public PduPart getPartByFileName(String filename) {
        return this.e.get(filename);
    }
}
