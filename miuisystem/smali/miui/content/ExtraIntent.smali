.class public Lmiui/content/ExtraIntent;
.super Ljava/lang/Object;
.source "ExtraIntent.java"


# static fields
.field public static final ACTION_ACTIVATE_ALL_MI_SERVICES:Ljava/lang/String; = "com.xiaomi.action.ACTIVATE_ALL_MI_SERVICES"

.field public static final ACTION_BIND_XIAOMI_ACCOUNT_SERVICE:Ljava/lang/String; = "android.intent.action.BIND_XIAOMI_ACCOUNT_SERVICE"

.field public static final ACTION_DISCARD_FIND_DEVICE_TOKEN:Ljava/lang/String; = "miui.intent.action.DISCARD_FIND_DEVICE_TOKEN"

.field public static final ACTION_LOCK_DEVICE:Ljava/lang/String; = "miui.intent.action.LOCK_DEVICE"

.field public static final ACTION_MICLOUD_STATUS_INFO_CHANGED:Ljava/lang/String; = "com.xiaomi.action.MICLOUD_STATUS_INFO_CHANGED"

.field public static final ACTION_MIUI_DISCLAIMER:Ljava/lang/String; = "android.intent.action.MIUI_DISCLAIMER"

.field public static final ACTION_MIUI_LICENSE:Ljava/lang/String; = "android.intent.action.MIUI_LICENSE"

.field public static final ACTION_NOISE:Ljava/lang/String; = "miui.intent.action.NOISE"

.field public static final ACTION_PRIVACY_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.PRIVACY_MODE_CHANGED"

.field public static final ACTION_REQUEST_LOCATION:Ljava/lang/String; = "miui.intent.action.REQUEST_LOCATION"

.field public static final ACTION_SHOW_APP_NOTIFICATION_PANEL:Ljava/lang/String; = "miui.intent.action.NOTIFICATION_PANEL"

.field public static final ACTION_SIM_ACTIVATED:Ljava/lang/String; = "com.xiaomi.action.SIM_ACTIVATED"

.field public static final ACTION_VIEW_LICENSE:Ljava/lang/String; = "android.intent.action.VIEW_LICENSE"

.field public static final ACTION_WIPE_DATA:Ljava/lang/String; = "miui.intent.action.WIPE_DATA"

.field public static final ACTION_XIAOMI_ACCOUNT_BIND_NICKNAME:Ljava/lang/String; = "android.settings.XIAOMI_ACCOUNT_BIND_NICKNAME"

.field public static final ACTION_XIAOMI_ACCOUNT_EXPIRED:Ljava/lang/String; = "android.intent.account.expired"

.field public static final ACTION_XIAOMI_ACCOUNT_SETTING:Ljava/lang/String; = "android.settings.XIAOMI_ACCOUNT_SYNC_SETTINGS"

.field public static final ACTION_XIAOMI_SYNC_ADVANCED_SETTINGS:Ljava/lang/String; = "com.xiaomi.SYNC_ADVANCED_SETTINGS"

.field public static final ACTION_XIAOMI_USER_INFO_CHANGED:Ljava/lang/String; = "com.xiaomi.action.XIAOMI_USER_INFO_CHANGED"

.field public static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field public static final EXTRA_AUTHORITY:Ljava/lang/String; = "authority"

.field public static final EXTRA_BIND_TYPE:Ljava/lang/String; = "extra_bind_type"

.field public static final EXTRA_DEVICE_AUTO:Ljava/lang/String; = "android.intent.extra.device_auto"

.field public static final EXTRA_DEVICE_CMD:Ljava/lang/String; = "android.intent.extra.device_cmd"

.field public static final EXTRA_DEVICE_DIGEST:Ljava/lang/String; = "android.intent.extra.device_digest"

.field public static final EXTRA_DEVICE_ID:Ljava/lang/String; = "extra_deviceId"

.field public static final EXTRA_DEVICE_MSGID:Ljava/lang/String; = "android.intent.extra.device_msgId"

.field public static final EXTRA_DEVICE_TIME:Ljava/lang/String; = "android.intent.extra.device_time"

.field public static final EXTRA_DEVICE_TOKEN:Ljava/lang/String; = "android.intent.extra.device_token"

.field public static final EXTRA_FROM_ADDRESS:Ljava/lang/String; = "android.intent.extra.from_address"

.field public static final EXTRA_LICENSE_TYPE:Ljava/lang/String; = "android.intent.extra.LICENSE_TYPE"

.field public static final EXTRA_LOCK_DEVICE_PASSWORD:Ljava/lang/String; = "android.intent.extra.lock_password"

.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field public static final EXTRA_MICLOUD_STATUS_INFO_WARN:Ljava/lang/String; = "extra_micloud_status_info_warn"

.field public static final EXTRA_PWD:Ljava/lang/String; = "extra_pwd"

.field public static final EXTRA_REG_TYPE_EMAIL:Ljava/lang/String; = "reg_type_email"

.field public static final EXTRA_REG_TYPE_SMS:Ljava/lang/String; = "reg_type_sms"

.field public static final EXTRA_UPLOAD_OPTION:Ljava/lang/String; = "extra_upload_opt"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "extra_user_id"

.field public static final EXTRA_XIAOMI_ACCOUNT:Ljava/lang/String; = "account"

.field public static final EXTRA_XIAOMI_ACCOUNT_NAME:Ljava/lang/String; = "user_name"

.field public static final EXTRA_XIAOMI_ACCOUNT_REG_TYPE:Ljava/lang/String; = "reg_type"

.field public static final EXTRA_XIAOMI_ACCOUNT_USER_ID:Ljava/lang/String; = "user_id"

.field public static final LICENSE_COPYRIGHT:I = 0x0

.field public static final LICENSE_INVALID:I = -0x1

.field public static final LICENSE_MIBI:I = 0x4

.field public static final LICENSE_MICLOUD_USERAGREEMENT:I = 0x5

.field public static final LICENSE_PRIVACY_POLICY:I = 0x1

.field public static final LICENSE_USER_AGREEMENT:I = 0x2

.field public static final LICENSE_USER_MANUAL:I = 0x3

.field public static final SYNC_SETTINGS_ACTION_APPENDER:Ljava/lang/String; = ".SYNC_SETTINGS"

.field public static final UPLOAD_OPTION_DISABLED:I = 0x2

.field public static final UPLOAD_OPTION_ENABLED:I = 0x1

.field public static final UPLOAD_OPTION_UNSPECIFIED:I = 0x3

.field public static final XIAOMI_ACCOUNT_TYPE:Ljava/lang/String; = "com.xiaomi"

.field public static final XIAOMI_ACCOUNT_TYPE_UNACTIVATED:Ljava/lang/String; = "com.xiaomi.unactivated"

.field public static final XIAOMI_KEY_ACCOUNT_TYPE:Ljava/lang/String; = "com.miui.auth"

.field public static final XIAOMI_KEY_AUTHTOKEN:Ljava/lang/String; = "token"

.field public static final XIAOMI_KEY_SERVICE_URL:Ljava/lang/String; = "service_url"


# direct methods
.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
