.class Lcom/google/android/gms/internal/af$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hi$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/af;-><init>(Lcom/google/android/gms/internal/ay;Lcom/google/android/gms/internal/gn;Lcom/google/android/gms/internal/hg;Landroid/view/View;Lcom/google/android/gms/internal/hi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/hi$b",
        "<",
        "Lcom/google/android/gms/internal/ah;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic nl:Lorg/json/JSONObject;

.field final synthetic nm:Lcom/google/android/gms/internal/af;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/af;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/af$1;->nm:Lcom/google/android/gms/internal/af;

    iput-object p2, p0, Lcom/google/android/gms/internal/af$1;->nl:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ah;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/af$1;->b(Lcom/google/android/gms/internal/ah;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/internal/ah;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/af$1;->nm:Lcom/google/android/gms/internal/af;

    iget-object v1, p0, Lcom/google/android/gms/internal/af$1;->nl:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/af;->a(Lorg/json/JSONObject;)V

    return-void
.end method
