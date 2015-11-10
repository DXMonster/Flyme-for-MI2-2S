.class public Lcom/miui/whetstone/CloudControlInfo;
.super Ljava/lang/Object;
.source "CloudControlInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/whetstone/CloudControlInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = true

.field private static final HTTP_MASK_CLASS:I = 0x2

.field private static final HTTP_MASK_CONFIG:I = 0x200

.field private static final HTTP_MASK_HTTP_METHOD:I = 0x10

.field private static final HTTP_MASK_INTENT_WITH_RESPONSE:I = 0x100

.field private static final HTTP_MASK_INTERVAL_AT_MIN:I = 0x40

.field private static final HTTP_MASK_PACKAGE:I = 0x1

.field private static final HTTP_MASK_PARAMS:I = 0x8

.field private static final HTTP_MASK_TIMEOUT:I = 0x80

.field private static final HTTP_MASK_TRIGGER_DELAY_AT_MIN:I = 0x20

.field private static final HTTP_MASK_URL:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "CloudControlInfo"


# instance fields
.field public mClassName:Ljava/lang/String;

.field public mConfig:Ljava/lang/String;

.field public mHttpMethod:Ljava/lang/String;

.field public mIntervalAtMin:I

.field public mIsIntentWithResponse:Z

.field public mParams:Ljava/lang/String;

.field public mPkgName:Ljava/lang/String;

.field public mTimeout:I

.field public mTriggerDelayAtMin:I

.field public mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/miui/whetstone/CloudControlInfo$1;

    invoke-direct {v0}, Lcom/miui/whetstone/CloudControlInfo$1;-><init>()V

    sput-object v0, Lcom/miui/whetstone/CloudControlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size of HttpRequest parcel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/whetstone/CloudControlInfo;->log(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 126
    .local v0, "flag":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    .line 127
    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    .line 128
    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    .line 129
    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    .line 130
    :cond_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    .line 131
    :cond_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mTriggerDelayAtMin:I

    .line 132
    :cond_5
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mIntervalAtMin:I

    .line 133
    :cond_6
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mTimeout:I

    .line 134
    :cond_7
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mIsIntentWithResponse:Z

    .line 135
    :cond_8
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    .line 136
    :cond_9
    return-void

    .line 134
    :cond_a
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/miui/whetstone/CloudControlInfo;)V
    .locals 0
    .param p1, "c"    # Lcom/miui/whetstone/CloudControlInfo;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p0, p1}, Lcom/miui/whetstone/CloudControlInfo;->copyFrom(Lcom/miui/whetstone/CloudControlInfo;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "params"    # Ljava/lang/String;
    .param p5, "httpMethod"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v10}, Lcom/miui/whetstone/CloudControlInfo;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "params"    # Ljava/lang/String;
    .param p5, "httpMethod"    # Ljava/lang/String;
    .param p6, "triggerDelayAtMin"    # I
    .param p7, "intervalAtMin"    # I
    .param p8, "timeout"    # I
    .param p9, "isIntentWithResponse"    # Z
    .param p10, "config"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual/range {p0 .. p10}, Lcom/miui/whetstone/CloudControlInfo;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V

    .line 62
    return-void
.end method

.method private buildFlagValue()I
    .locals 2

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "flag":I
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    .line 143
    :cond_2
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    .line 144
    :cond_3
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x10

    .line 145
    :cond_4
    or-int/lit8 v0, v0, 0x20

    .line 146
    or-int/lit8 v0, v0, 0x40

    .line 147
    or-int/lit16 v0, v0, 0x80

    .line 148
    or-int/lit16 v0, v0, 0x100

    .line 149
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x200

    .line 150
    :cond_5
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 261
    const-string v0, "CloudControlInfo"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void
.end method


# virtual methods
.method protected copyFrom(Lcom/miui/whetstone/CloudControlInfo;)V
    .locals 1
    .param p1, "c"    # Lcom/miui/whetstone/CloudControlInfo;

    .prologue
    .line 106
    iget-object v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    .line 107
    iget-object v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    .line 108
    iget-object v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    .line 109
    iget-object v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    .line 110
    iget-object v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    .line 111
    iget v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mTriggerDelayAtMin:I

    iput v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mTriggerDelayAtMin:I

    .line 112
    iget v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mIntervalAtMin:I

    iput v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mIntervalAtMin:I

    .line 113
    iget v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mTimeout:I

    iput v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mTimeout:I

    .line 114
    iget-boolean v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mIsIntentWithResponse:Z

    iput-boolean v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mIsIntentWithResponse:Z

    .line 115
    iget-object v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 201
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/miui/whetstone/CloudControlInfo;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .local v2, "p":Lcom/miui/whetstone/CloudControlInfo;
    if-nez p1, :cond_1

    .line 210
    .end local v2    # "p":Lcom/miui/whetstone/CloudControlInfo;
    :cond_0
    :goto_0
    return v3

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 210
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "p":Lcom/miui/whetstone/CloudControlInfo;
    :cond_1
    iget-object v4, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    iget-object v5, v2, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    iget-object v5, v2, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    iget-object v5, v2, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    iget-object v5, v2, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    iget-object v5, v2, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/miui/whetstone/CloudControlInfo;->mTriggerDelayAtMin:I

    iget v5, v2, Lcom/miui/whetstone/CloudControlInfo;->mTriggerDelayAtMin:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Lcom/miui/whetstone/CloudControlInfo;->mIntervalAtMin:I

    iget v5, v2, Lcom/miui/whetstone/CloudControlInfo;->mIntervalAtMin:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Lcom/miui/whetstone/CloudControlInfo;->mTimeout:I

    iget v5, v2, Lcom/miui/whetstone/CloudControlInfo;->mTimeout:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Lcom/miui/whetstone/CloudControlInfo;->mIsIntentWithResponse:Z

    iget-boolean v5, v2, Lcom/miui/whetstone/CloudControlInfo;->mIsIntentWithResponse:Z

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    iget-object v5, v2, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getComponentToShortString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "params"    # Ljava/lang/String;
    .param p5, "httpMethod"    # Ljava/lang/String;
    .param p6, "triggerDelayAtMin"    # I
    .param p7, "intervalAtMin"    # I
    .param p8, "timeout"    # I
    .param p9, "isIntentWithResponse"    # Z
    .param p10, "config"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    .line 94
    iput-object p5, p0, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    .line 95
    iput p6, p0, Lcom/miui/whetstone/CloudControlInfo;->mTriggerDelayAtMin:I

    .line 96
    iput p7, p0, Lcom/miui/whetstone/CloudControlInfo;->mIntervalAtMin:I

    .line 97
    iput p8, p0, Lcom/miui/whetstone/CloudControlInfo;->mTimeout:I

    .line 98
    iput-boolean p9, p0, Lcom/miui/whetstone/CloudControlInfo;->mIsIntentWithResponse:Z

    .line 99
    iput-object p10, p0, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CloudControlInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mTriggerDelayAtMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mIntervalAtMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mIsIntentWithResponse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/miui/whetstone/CloudControlInfo;->buildFlagValue()I

    move-result v0

    .line 158
    .local v0, "flag":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    :cond_3
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    :cond_4
    iget v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mTriggerDelayAtMin:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mIntervalAtMin:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mTimeout:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-boolean v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mIsIntentWithResponse:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_0
    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 168
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    :cond_5
    return-void

    .line 167
    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method
