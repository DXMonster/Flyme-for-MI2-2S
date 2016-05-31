.class public Lcom/android/settings_ext/WirelessSettings;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ext/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ext/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings_ext/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/SwitchPreference;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mManageMobilePlanMessage:Ljava/lang/String;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/settings_ext/nfc/NfcEnabler;

.field private mNsdEnabler:Lcom/android/settings_ext/NsdEnabler;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSmsApplicationPreference:Lcom/android/settings_ext/AppListPreference;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 495
    new-instance v0, Lcom/android/settings_ext/WirelessSettings$2;

    invoke-direct {v0}, Lcom/android/settings_ext/WirelessSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings_ext/WirelessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ext/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ext/WirelessSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ext/WirelessSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings_ext/WirelessSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings_ext/WirelessSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ext/WirelessSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings_ext/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    return-object p1
.end method

.method private initSmsApplicationSetting()V
    .locals 10

    .prologue
    .line 188
    const-string v8, "initSmsApplicationSetting:"

    invoke-direct {p0, v8}, Lcom/android/settings_ext/WirelessSettings;->log(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v7

    .line 193
    .local v7, "smsApplications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v1

    .line 194
    .local v1, "count":I
    new-array v5, v1, [Ljava/lang/String;

    .line 195
    .local v5, "packageNames":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 196
    .local v3, "i":I
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 197
    .local v6, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v8, v6, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    aput-object v8, v5, v3

    .line 198
    add-int/lit8 v3, v3, 0x1

    .line 199
    goto :goto_0

    .line 200
    .end local v6    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_0
    const/4 v2, 0x0

    .line 201
    .local v2, "defaultPackageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 202
    .local v0, "appName":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 205
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ext/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings_ext/AppListPreference;

    invoke-virtual {v8, v5, v2}, Lcom/android/settings_ext/AppListPreference;->setPackageNames([Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 234
    invoke-static {p0}, Lcom/android/settings_ext/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v1

    .line 238
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "toggleable":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSmsSupported()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 230
    const-string v0, "WirelessSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 480
    const v0, 0x7f0908d7

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 469
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 470
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 472
    .local v0, "isChoiceYes":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/settings_ext/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ext/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ext/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ext/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 475
    .end local v0    # "isChoiceYes":Ljava/lang/Boolean;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 476
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 25
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 250
    invoke-super/range {p0 .. p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 251
    if-eqz p1, :cond_0

    .line 252
    const-string v23, "mManageMobilePlanMessage"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 254
    :cond_0
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onCreate: mManageMobilePlanMessage="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->log(Ljava/lang/String;)V

    .line 256
    const-string v23, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 257
    const-string v23, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 259
    const-string v23, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/UserManager;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/WirelessSettings;->mUm:Landroid/os/UserManager;

    .line 261
    const v23, 0x7f060054

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->addPreferencesFromResource(I)V

    .line 263
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    .line 264
    .local v15, "myUserId":I
    if-eqz v15, :cond_15

    const/4 v10, 0x1

    .line 265
    .local v10, "isSecondaryUser":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v9

    .line 267
    .local v9, "isRestrictedUser":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 268
    .local v2, "activity":Landroid/app/Activity;
    const-string v23, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    .line 269
    const-string v23, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/SwitchPreference;

    .line 271
    .local v16, "nfc":Landroid/preference/SwitchPreference;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_1

    .line 273
    const-string v23, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    .line 276
    .local v14, "manageSub":Landroid/preference/PreferenceScreen;
    if-eqz v14, :cond_1

    .line 277
    invoke-virtual {v14}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 278
    .local v6, "intent":Landroid/content/Intent;
    const-string v23, "com.android.phone"

    const-string v24, "com.android.phone.SelectSubscription"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v23, "PACKAGE"

    const-string v24, "com.android.phone"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v23, "TARGET_CLASS"

    const-string v24, "com.android.phone.MSimMobileNetworkSubSettings"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v14    # "manageSub":Landroid/preference/PreferenceScreen;
    :cond_1
    const-string v23, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 288
    .local v3, "androidBeam":Landroid/preference/PreferenceScreen;
    const-string v23, "toggle_nsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    .line 290
    .local v17, "nsd":Landroid/preference/SwitchPreference;
    new-instance v23, Lcom/android/settings_ext/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v2, v1}, Lcom/android/settings_ext/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ext/AirplaneModeEnabler;

    .line 291
    new-instance v23, Lcom/android/settings_ext/nfc/NfcEnabler;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1, v3}, Lcom/android/settings_ext/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ext/nfc/NfcEnabler;

    .line 293
    const-string v23, "sms_application"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Lcom/android/settings_ext/AppListPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings_ext/AppListPreference;

    .line 295
    if-eqz v9, :cond_16

    .line 296
    const-string v23, "sms_application"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 303
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 306
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "airplane_mode_toggleable_radios"

    invoke-static/range {v23 .. v24}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 310
    .local v22, "toggleable":Ljava/lang/String;
    if-nez v10, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x1120062

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    if-eqz v23, :cond_17

    const/4 v11, 0x1

    .line 312
    .local v11, "isWimaxEnabled":Z
    :goto_2
    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v23, v0

    const-string v24, "no_config_mobile_networks"

    invoke-virtual/range {v23 .. v24}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 314
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    .line 315
    .local v21, "root":Landroid/preference/PreferenceScreen;
    const-string v23, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    .line 316
    .local v20, "ps":Landroid/preference/Preference;
    if-eqz v20, :cond_3

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 326
    .end local v20    # "ps":Landroid/preference/Preference;
    .end local v21    # "root":Landroid/preference/PreferenceScreen;
    :cond_3
    :goto_3
    if-eqz v22, :cond_4

    const-string v23, "wifi"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_5

    .line 327
    :cond_4
    const-string v23, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    const-string v24, "toggle_airplane"

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 330
    :cond_5
    if-nez v10, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v23, v0

    const-string v24, "no_config_vpn"

    invoke-virtual/range {v23 .. v24}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 331
    :cond_6
    const-string v23, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 335
    :cond_7
    if-eqz v22, :cond_8

    const-string v23, "bluetooth"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_8

    .line 340
    :cond_8
    if-eqz v22, :cond_9

    const-string v23, "nfc"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_a

    .line 341
    :cond_9
    const-string v23, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    const-string v24, "toggle_airplane"

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 342
    const-string v23, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    const-string v24, "toggle_airplane"

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 346
    :cond_a
    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v23, v0

    if-nez v23, :cond_b

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 350
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ext/nfc/NfcEnabler;

    .line 355
    :cond_b
    if-nez v10, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/settings_ext/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v23, v0

    const-string v24, "no_config_mobile_networks"

    invoke-virtual/range {v23 .. v24}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 357
    :cond_c
    const-string v23, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 358
    const-string v23, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 362
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0c0006

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 364
    .local v8, "isMobilePlanEnabled":Z
    if-nez v8, :cond_e

    .line 365
    const-string v23, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    .line 366
    .local v19, "pref":Landroid/preference/Preference;
    if-eqz v19, :cond_e

    .line 367
    const-string v23, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 372
    .end local v19    # "pref":Landroid/preference/Preference;
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ext/WirelessSettings;->isSmsSupported()Z

    move-result v23

    if-nez v23, :cond_f

    .line 373
    const-string v23, "sms_application"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 377
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v23, v0

    const-string v24, "android.hardware.type.television"

    invoke-virtual/range {v23 .. v24}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 378
    const-string v23, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 382
    :cond_10
    const-string v23, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    .line 383
    .local v13, "mGlobalProxy":Landroid/preference/Preference;
    const-string v23, "device_policy"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/admin/DevicePolicyManager;

    .line 386
    .local v12, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 387
    invoke-virtual {v12}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v23

    if-nez v23, :cond_1a

    const/16 v23, 0x1

    :goto_4
    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 390
    const-string v23, "connectivity"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 392
    .local v4, "cm":Landroid/net/ConnectivityManager;
    if-nez v10, :cond_11

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v23

    if-eqz v23, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v23, v0

    const-string v24, "no_config_tethering"

    invoke-virtual/range {v23 .. v24}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_1b

    .line 394
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    const-string v24, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 405
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x112006b

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 408
    .local v7, "isCellBroadcastAppLinkEnabled":Z
    if-eqz v7, :cond_12

    .line 409
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v23, v0

    const-string v24, "com.android.cellbroadcastreceiver"

    invoke-virtual/range {v23 .. v24}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_12

    .line 411
    const/4 v7, 0x0

    .line 417
    :cond_12
    :goto_6
    if-nez v10, :cond_13

    if-eqz v7, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v23, v0

    const-string v24, "no_config_cell_broadcasts"

    invoke-virtual/range {v23 .. v24}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 419
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    .line 420
    .restart local v21    # "root":Landroid/preference/PreferenceScreen;
    const-string v23, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    .line 421
    .restart local v20    # "ps":Landroid/preference/Preference;
    if-eqz v20, :cond_14

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 423
    .end local v20    # "ps":Landroid/preference/Preference;
    .end local v21    # "root":Landroid/preference/PreferenceScreen;
    :cond_14
    return-void

    .line 264
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v3    # "androidBeam":Landroid/preference/PreferenceScreen;
    .end local v4    # "cm":Landroid/net/ConnectivityManager;
    .end local v7    # "isCellBroadcastAppLinkEnabled":Z
    .end local v8    # "isMobilePlanEnabled":Z
    .end local v9    # "isRestrictedUser":Z
    .end local v10    # "isSecondaryUser":Z
    .end local v11    # "isWimaxEnabled":Z
    .end local v12    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v13    # "mGlobalProxy":Landroid/preference/Preference;
    .end local v16    # "nfc":Landroid/preference/SwitchPreference;
    .end local v17    # "nsd":Landroid/preference/SwitchPreference;
    .end local v22    # "toggleable":Ljava/lang/String;
    :cond_15
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 298
    .restart local v2    # "activity":Landroid/app/Activity;
    .restart local v3    # "androidBeam":Landroid/preference/PreferenceScreen;
    .restart local v9    # "isRestrictedUser":Z
    .restart local v10    # "isSecondaryUser":Z
    .restart local v16    # "nfc":Landroid/preference/SwitchPreference;
    .restart local v17    # "nsd":Landroid/preference/SwitchPreference;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings_ext/AppListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/AppListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 299
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ext/WirelessSettings;->initSmsApplicationSetting()V

    goto/16 :goto_1

    .line 310
    .restart local v22    # "toggleable":Ljava/lang/String;
    :cond_17
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 318
    .restart local v11    # "isWimaxEnabled":Z
    :cond_18
    if-eqz v22, :cond_19

    const-string v23, "wimax"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_3

    if-eqz v11, :cond_3

    .line 320
    :cond_19
    const-string v23, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    .line 321
    .restart local v20    # "ps":Landroid/preference/Preference;
    const-string v23, "toggle_airplane"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 387
    .end local v20    # "ps":Landroid/preference/Preference;
    .restart local v8    # "isMobilePlanEnabled":Z
    .restart local v12    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .restart local v13    # "mGlobalProxy":Landroid/preference/Preference;
    :cond_1a
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 396
    .restart local v4    # "cm":Landroid/net/ConnectivityManager;
    :cond_1b
    const-string v23, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 397
    .local v18, "p":Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/settings_ext/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v23

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/settings_ext/TetherSettings;->isProvisioningNeededButUnavailable(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_1c

    const/16 v23, 0x1

    :goto_7
    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_1c
    const/16 v23, 0x0

    goto :goto_7

    .line 414
    .end local v18    # "p":Landroid/preference/Preference;
    .restart local v7    # "isCellBroadcastAppLinkEnabled":Z
    :catch_0
    move-exception v5

    .line 415
    .local v5, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v7, 0x0

    goto/16 :goto_6
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/WirelessSettings;->log(Ljava/lang/String;)V

    .line 211
    packed-switch p1, :pswitch_data_0

    .line 226
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 213
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings_ext/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings_ext/WirelessSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/WirelessSettings$1;-><init>(Lcom/android/settings_ext/WirelessSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onManageMobilePlanClick()V
    .locals 12

    .prologue
    const v9, 0x7f090444

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 123
    const-string v8, "onManageMobilePlanClick:"

    invoke-direct {p0, v8}, Lcom/android/settings_ext/WirelessSettings;->log(Ljava/lang/String;)V

    .line 124
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settings_ext/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 127
    .local v6, "resources":Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/android/settings_ext/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 128
    .local v3, "ni":Landroid/net/NetworkInfo;
    iget-object v8, p0, Lcom/android/settings_ext/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v3, :cond_6

    .line 130
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_CARRIER_SETUP"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v5, "provisioningIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/settings_ext/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8, v5}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 133
    .local v0, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 134
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eq v8, v11, :cond_0

    .line 135
    const-string v8, "WirelessSettings"

    const-string v9, "Multiple matching carrier apps found, launching the first."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v5}, Lcom/android/settings_ext/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    .line 185
    .end local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "provisioningIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 143
    .restart local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "provisioningIntent":Landroid/content/Intent;
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ext/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v7

    .line 144
    .local v7, "url":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 145
    const-string v8, "android.intent.action.MAIN"

    const-string v9, "android.intent.category.APP_BROWSER"

    invoke-static {v8, v9}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 147
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 148
    const/high16 v8, 0x10400000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 151
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/settings_ext/WirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "provisioningIntent":Landroid/content/Intent;
    .end local v7    # "url":Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/android/settings_ext/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 182
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onManageMobilePlanClick: message="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ext/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ext/WirelessSettings;->log(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0, v11}, Lcom/android/settings_ext/WirelessSettings;->showDialog(I)V

    goto :goto_0

    .line 152
    .restart local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v5    # "provisioningIntent":Landroid/content/Intent;
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v8, "WirelessSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onManageMobilePlanClick: startActivity failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 157
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v8, p0, Lcom/android/settings_ext/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "operatorName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 161
    iget-object v8, p0, Lcom/android/settings_ext/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 162
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 163
    const v8, 0x7f090443

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ext/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_1

    .line 166
    :cond_4
    new-array v8, v11, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-virtual {v6, v9, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ext/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_1

    .line 170
    :cond_5
    new-array v8, v11, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-virtual {v6, v9, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ext/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_1

    .line 174
    .end local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "operatorName":Ljava/lang/String;
    .end local v5    # "provisioningIntent":Landroid/content/Intent;
    .end local v7    # "url":Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lcom/android/settings_ext/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v8

    if-nez v8, :cond_7

    .line 176
    const v8, 0x7f090445

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ext/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto/16 :goto_1

    .line 179
    :cond_7
    const v8, 0x7f090446

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ext/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 456
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPause()V

    .line 458
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ext/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ext/AirplaneModeEnabler;->pause()V

    .line 459
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ext/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ext/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ext/nfc/NfcEnabler;->pause()V

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->mNsdEnabler:Lcom/android/settings_ext/NsdEnabler;

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->mNsdEnabler:Lcom/android/settings_ext/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ext/NsdEnabler;->pause()V

    .line 465
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings_ext/AppListPreference;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 486
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 487
    const/4 v0, 0x1

    .line 489
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick: preference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ext/WirelessSettings;->log(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/android/settings_ext/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_0

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ext/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 118
    :goto_0
    return v0

    .line 114
    :cond_0
    const-string v0, "manage_mobile_plan"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->onManageMobilePlanClick()V

    .line 118
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 434
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 436
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ext/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ext/AirplaneModeEnabler;->resume()V

    .line 437
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ext/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ext/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ext/nfc/NfcEnabler;->resume()V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->mNsdEnabler:Lcom/android/settings_ext/NsdEnabler;

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->mNsdEnabler:Lcom/android/settings_ext/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ext/NsdEnabler;->resume()V

    .line 443
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 447
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 449
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    const-string v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/android/settings_ext/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 427
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onStart()V

    .line 429
    invoke-direct {p0}, Lcom/android/settings_ext/WirelessSettings;->initSmsApplicationSetting()V

    .line 430
    return-void
.end method