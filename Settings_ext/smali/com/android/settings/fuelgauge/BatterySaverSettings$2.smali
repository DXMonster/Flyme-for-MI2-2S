.class Lcom/android/settings_ext/fuelgauge/BatterySaverSettings$2;
.super Ljava/lang/Object;
.source "BatterySaverSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aar:Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/settings_ext/fuelgauge/BatterySaverSettings$2;->aar:Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySaverSettings$2;->aar:Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;

    invoke-static {v0}, Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;->a(Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;)V

    .line 169
    return-void
.end method
