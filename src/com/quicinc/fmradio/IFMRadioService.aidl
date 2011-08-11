package com.quicinc.fmradio;

import com.quicinc.fmradio.IFMRadioServiceCallbacks;

interface IFMRadioService
{
    boolean fmOn();
    boolean fmOff();
    boolean isFmOn();
    boolean isAnalogModeEnabled();
    boolean isFmRecordingOn();
    boolean isSpeakerEnabled();
    boolean fmReconfigure();
    void registerCallbacks(IFMRadioServiceCallbacks cb);
    void unregisterCallbacks();
    boolean mute();
    boolean routeAudio(int device);
    boolean unMute();
    boolean isMuted();
    boolean startRecording();
    void stopRecording();
    boolean tune(int frequency);
    boolean seek(boolean up);
    void enableSpeaker(boolean speakerOn);
    boolean scan(int pty);
    boolean seekPI(int piCode);
    boolean searchStrongStationList(int numStations);
    int[]   getSearchList();
    boolean cancelSearch();
    String getProgramService();
    String getRadioText();
    int getProgramType();
    int getProgramID();
    boolean setLowPowerMode(boolean bLowPower);
    int getPowerMode();
    boolean enableAutoAF(boolean bEnable);
    boolean enableStereo(boolean bEnable);
    boolean isAntennaAvailable();
    boolean isWiredHeadsetAvailable();
    boolean isCallActive();
    int getRssi();
    int getIoC();
    int getMpxDcc();
    int getIntDet();
    void setHiLoInj(int inj);
    void delayedStop(long nDuration, int nType);
    void cancelDelayedStop (int nType);
    void requestFocus();
}

