.class public final Lmiui/bluetooth/ble/ScanResult;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/bluetooth/ble/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mRssi:I

.field private mScanRecord:Lmiui/bluetooth/ble/ScanRecord;

.field private mTimestampNanos:J

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lmiui/bluetooth/ble/ScanResult$1;

    invoke-direct {v0}, Lmiui/bluetooth/ble/ScanResult$1;-><init>()V

    sput-object v0, Lmiui/bluetooth/ble/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Lmiui/bluetooth/ble/ScanRecord;IJI)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "scanRecord"    # Lmiui/bluetooth/ble/ScanRecord;
    .param p3, "rssi"    # I
    .param p4, "timestampNanos"    # J
    .param p6, "type"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lmiui/bluetooth/ble/ScanResult;->mType:I

    .line 56
    iput-object p1, p0, Lmiui/bluetooth/ble/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 57
    iput-object p2, p0, Lmiui/bluetooth/ble/ScanResult;->mScanRecord:Lmiui/bluetooth/ble/ScanRecord;

    .line 58
    iput p3, p0, Lmiui/bluetooth/ble/ScanResult;->mRssi:I

    .line 59
    iput-wide p4, p0, Lmiui/bluetooth/ble/ScanResult;->mTimestampNanos:J

    .line 60
    iput p6, p0, Lmiui/bluetooth/ble/ScanResult;->mType:I

    .line 61
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lmiui/bluetooth/ble/ScanResult;->mType:I

    .line 64
    invoke-direct {p0, p1}, Lmiui/bluetooth/ble/ScanResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/bluetooth/ble/ScanResult$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lmiui/bluetooth/ble/ScanResult$1;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lmiui/bluetooth/ble/ScanResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 176
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static varargs hash([Ljava/lang/Object;)I
    .locals 1
    .param p0, "values"    # [Ljava/lang/Object;

    .prologue
    .line 173
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 87
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lmiui/bluetooth/ble/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lmiui/bluetooth/ble/ScanRecord;->parseFromBytes([B)Lmiui/bluetooth/ble/ScanRecord;

    move-result-object v0

    iput-object v0, p0, Lmiui/bluetooth/ble/ScanResult;->mScanRecord:Lmiui/bluetooth/ble/ScanRecord;

    .line 92
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/bluetooth/ble/ScanResult;->mRssi:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/bluetooth/ble/ScanResult;->mTimestampNanos:J

    .line 94
    return-void
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 179
    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    if-ne p0, p1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v1

    .line 143
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 144
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 146
    check-cast v0, Lmiui/bluetooth/ble/ScanResult;

    .line 147
    .local v0, "other":Lmiui/bluetooth/ble/ScanResult;
    iget-object v3, p0, Lmiui/bluetooth/ble/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, v0, Lmiui/bluetooth/ble/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3, v4}, Lmiui/bluetooth/ble/ScanResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lmiui/bluetooth/ble/ScanResult;->mRssi:I

    iget v4, v0, Lmiui/bluetooth/ble/ScanResult;->mRssi:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lmiui/bluetooth/ble/ScanResult;->mScanRecord:Lmiui/bluetooth/ble/ScanRecord;

    iget-object v4, v0, Lmiui/bluetooth/ble/ScanResult;->mScanRecord:Lmiui/bluetooth/ble/ScanRecord;

    invoke-static {v3, v4}, Lmiui/bluetooth/ble/ScanResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-wide v4, p0, Lmiui/bluetooth/ble/ScanResult;->mTimestampNanos:J

    iget-wide v6, v0, Lmiui/bluetooth/ble/ScanResult;->mTimestampNanos:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lmiui/bluetooth/ble/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lmiui/bluetooth/ble/ScanResult;->mType:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lmiui/bluetooth/ble/ScanResult;->mRssi:I

    return v0
.end method

.method public getScanRecord()Lmiui/bluetooth/ble/ScanRecord;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lmiui/bluetooth/ble/ScanResult;->mScanRecord:Lmiui/bluetooth/ble/ScanRecord;

    return-object v0
.end method

.method public getTimestampNanos()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lmiui/bluetooth/ble/ScanResult;->mTimestampNanos:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 135
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lmiui/bluetooth/ble/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lmiui/bluetooth/ble/ScanResult;->mRssi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lmiui/bluetooth/ble/ScanResult;->mScanRecord:Lmiui/bluetooth/ble/ScanRecord;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lmiui/bluetooth/ble/ScanResult;->mTimestampNanos:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lmiui/bluetooth/ble/ScanResult;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanResult{mDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/bluetooth/ble/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScanRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/bluetooth/ble/ScanResult;->mScanRecord:Lmiui/bluetooth/ble/ScanRecord;

    invoke-static {v1}, Lmiui/bluetooth/ble/ScanResult;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/bluetooth/ble/ScanResult;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimestampNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lmiui/bluetooth/ble/ScanResult;->mTimestampNanos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lmiui/bluetooth/ble/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v0, p0, Lmiui/bluetooth/ble/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 75
    :goto_0
    iget-object v0, p0, Lmiui/bluetooth/ble/ScanResult;->mScanRecord:Lmiui/bluetooth/ble/ScanRecord;

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Lmiui/bluetooth/ble/ScanResult;->mScanRecord:Lmiui/bluetooth/ble/ScanRecord;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/ScanRecord;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 81
    :goto_1
    iget v0, p0, Lmiui/bluetooth/ble/ScanResult;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-wide v0, p0, Lmiui/bluetooth/ble/ScanResult;->mTimestampNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    return-void

    .line 73
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
