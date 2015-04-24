.class Lcom/google/android/gms/internal/dp$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/dp;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sc:Lcom/google/android/gms/internal/dp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dp$2;->sc:Lcom/google/android/gms/internal/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/dp$2;->sc:Lcom/google/android/gms/internal/dp;

    invoke-static {v0}, Lcom/google/android/gms/internal/dp;->b(Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/hk;

    move-result-object v0

    const-string v1, "onStorePictureCanceled"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/hk;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
