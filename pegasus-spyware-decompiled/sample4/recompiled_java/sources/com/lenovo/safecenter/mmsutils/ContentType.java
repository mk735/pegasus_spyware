package com.lenovo.safecenter.mmsutils;

import java.util.ArrayList;

public class ContentType {
    public static final String APP_DRM_CONTENT = "application/vnd.oma.drm.content";
    public static final String APP_DRM_MESSAGE = "application/vnd.oma.drm.message";
    public static final String APP_SMIL = "application/smil";
    public static final String APP_WAP_XHTML = "application/vnd.wap.xhtml+xml";
    public static final String APP_XHTML = "application/xhtml+xml";
    public static final String AUDIO_3GPP = "audio/3gpp";
    public static final String AUDIO_AAC = "audio/aac";
    public static final String AUDIO_AMR = "audio/amr";
    public static final String AUDIO_IMELODY = "audio/imelody";
    public static final String AUDIO_MID = "audio/mid";
    public static final String AUDIO_MIDI = "audio/midi";
    public static final String AUDIO_MP3 = "audio/mp3";
    public static final String AUDIO_MP4 = "audio/mp4";
    public static final String AUDIO_MPEG = "audio/mpeg";
    public static final String AUDIO_MPEG3 = "audio/mpeg3";
    public static final String AUDIO_MPG = "audio/mpg";
    public static final String AUDIO_OGG = "application/ogg";
    public static final String AUDIO_UNSPECIFIED = "audio/*";
    public static final String AUDIO_X_MID = "audio/x-mid";
    public static final String AUDIO_X_MIDI = "audio/x-midi";
    public static final String AUDIO_X_MP3 = "audio/x-mp3";
    public static final String AUDIO_X_MPEG = "audio/x-mpeg";
    public static final String AUDIO_X_MPEG3 = "audio/x-mpeg3";
    public static final String AUDIO_X_MPG = "audio/x-mpg";
    public static final String IMAGE_GIF = "image/gif";
    public static final String IMAGE_JPEG = "image/jpeg";
    public static final String IMAGE_JPG = "image/jpg";
    public static final String IMAGE_PNG = "image/png";
    public static final String IMAGE_UNSPECIFIED = "image/*";
    public static final String IMAGE_WBMP = "image/vnd.wap.wbmp";
    public static final String MMS_GENERIC = "application/vnd.wap.mms-generic";
    public static final String MMS_MESSAGE = "application/vnd.wap.mms-message";
    public static final String MULTIPART_ALTERNATIVE = "application/vnd.wap.multipart.alternative";
    public static final String MULTIPART_MIXED = "application/vnd.wap.multipart.mixed";
    public static final String MULTIPART_RELATED = "application/vnd.wap.multipart.related";
    public static final String TEXT_HTML = "text/html";
    public static final String TEXT_PLAIN = "text/plain";
    public static final String TEXT_VCALENDAR = "text/x-vCalendar";
    public static final String TEXT_VCARD = "text/x-vCard";
    public static final String VIDEO_3G2 = "video/3gpp2";
    public static final String VIDEO_3GPP = "video/3gpp";
    public static final String VIDEO_H263 = "video/h263";
    public static final String VIDEO_MP4 = "video/mp4";
    public static final String VIDEO_UNSPECIFIED = "video/*";
    private static final ArrayList<String> a = new ArrayList<>();
    private static final ArrayList<String> b = new ArrayList<>();
    private static final ArrayList<String> c = new ArrayList<>();
    private static final ArrayList<String> d = new ArrayList<>();

    static {
        a.add("text/plain");
        a.add(TEXT_HTML);
        a.add(TEXT_VCALENDAR);
        a.add(TEXT_VCARD);
        a.add(IMAGE_JPEG);
        a.add(IMAGE_GIF);
        a.add(IMAGE_WBMP);
        a.add(IMAGE_PNG);
        a.add(IMAGE_JPG);
        a.add(AUDIO_AAC);
        a.add(AUDIO_AMR);
        a.add(AUDIO_IMELODY);
        a.add(AUDIO_MID);
        a.add(AUDIO_MIDI);
        a.add(AUDIO_MP3);
        a.add(AUDIO_MPEG3);
        a.add(AUDIO_MPEG);
        a.add(AUDIO_MPG);
        a.add(AUDIO_X_MID);
        a.add(AUDIO_X_MIDI);
        a.add(AUDIO_X_MP3);
        a.add(AUDIO_X_MPEG3);
        a.add(AUDIO_X_MPEG);
        a.add(AUDIO_X_MPG);
        a.add(AUDIO_3GPP);
        a.add(AUDIO_OGG);
        a.add(VIDEO_3GPP);
        a.add(VIDEO_3G2);
        a.add(VIDEO_H263);
        a.add(VIDEO_MP4);
        a.add(APP_SMIL);
        a.add(APP_WAP_XHTML);
        a.add(APP_XHTML);
        a.add(APP_DRM_CONTENT);
        a.add(APP_DRM_MESSAGE);
        b.add(IMAGE_JPEG);
        b.add(IMAGE_GIF);
        b.add(IMAGE_WBMP);
        b.add(IMAGE_PNG);
        b.add(IMAGE_JPG);
        c.add(AUDIO_AAC);
        c.add(AUDIO_AMR);
        c.add(AUDIO_IMELODY);
        c.add(AUDIO_MID);
        c.add(AUDIO_MIDI);
        c.add(AUDIO_MP3);
        c.add(AUDIO_MPEG3);
        c.add(AUDIO_MPEG);
        c.add(AUDIO_MPG);
        c.add(AUDIO_MP4);
        c.add(AUDIO_X_MID);
        c.add(AUDIO_X_MIDI);
        c.add(AUDIO_X_MP3);
        c.add(AUDIO_X_MPEG3);
        c.add(AUDIO_X_MPEG);
        c.add(AUDIO_X_MPG);
        c.add(AUDIO_3GPP);
        c.add(AUDIO_OGG);
        d.add(VIDEO_3GPP);
        d.add(VIDEO_3G2);
        d.add(VIDEO_H263);
        d.add(VIDEO_MP4);
    }

    private ContentType() {
    }

    public static boolean isSupportedType(String contentType) {
        return contentType != null && a.contains(contentType);
    }

    public static boolean isSupportedImageType(String contentType) {
        return isImageType(contentType) && isSupportedType(contentType);
    }

    public static boolean isSupportedAudioType(String contentType) {
        return isAudioType(contentType) && isSupportedType(contentType);
    }

    public static boolean isSupportedVideoType(String contentType) {
        return isVideoType(contentType) && isSupportedType(contentType);
    }

    public static boolean isTextType(String contentType) {
        return contentType != null && contentType.startsWith("text/");
    }

    public static boolean isImageType(String contentType) {
        return contentType != null && contentType.startsWith("image/");
    }

    public static boolean isAudioType(String contentType) {
        return contentType != null && contentType.startsWith("audio/");
    }

    public static boolean isVideoType(String contentType) {
        return contentType != null && contentType.startsWith("video/");
    }

    public static boolean isDrmType(String contentType) {
        return contentType != null && (contentType.equals(APP_DRM_CONTENT) || contentType.equals(APP_DRM_MESSAGE));
    }

    public static boolean isUnspecified(String contentType) {
        return contentType != null && contentType.endsWith(CharacterSets.MIMENAME_ANY_CHARSET);
    }

    public static ArrayList<String> getImageTypes() {
        return (ArrayList) b.clone();
    }

    public static ArrayList<String> getAudioTypes() {
        return (ArrayList) c.clone();
    }

    public static ArrayList<String> getVideoTypes() {
        return (ArrayList) d.clone();
    }

    public static ArrayList<String> getSupportedTypes() {
        return (ArrayList) a.clone();
    }
}
