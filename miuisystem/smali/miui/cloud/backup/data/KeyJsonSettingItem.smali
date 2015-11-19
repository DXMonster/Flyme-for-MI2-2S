.class public Lmiui/cloud/backup/data/KeyJsonSettingItem;
.super Lmiui/cloud/backup/data/SettingItem;
.source "KeyJsonSettingItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/cloud/backup/data/SettingItem",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/cloud/backup/data/KeyJsonSettingItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "json"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lmiui/cloud/backup/data/KeyJsonSettingItem$1;

    invoke-direct {v0}, Lmiui/cloud/backup/data/KeyJsonSettingItem$1;-><init>()V

    sput-object v0, Lmiui/cloud/backup/data/KeyJsonSettingItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lmiui/cloud/backup/data/SettingItem;-><init>()V

    return-void
.end method


# virtual methods
.method protected getJsonValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lmiui/cloud/backup/data/KeyJsonSettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "json"

    return-object v0
.end method

.method protected setValueFromJson(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 34
    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/cloud/backup/data/KeyJsonSettingItem;->setValue(Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method protected bridge synthetic stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lmiui/cloud/backup/data/KeyJsonSettingItem;->stringToValue(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected stringToValue(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "rawValue"    # Ljava/lang/String;

    .prologue
    .line 18
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-object v1

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "SettingsBackup"

    const-string v2, "JSONException occorred when stringToValue()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 10
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/cloud/backup/data/KeyJsonSettingItem;->valueToString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected valueToString(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p1, "actualValue"    # Lorg/json/JSONObject;

    .prologue
    .line 28
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
