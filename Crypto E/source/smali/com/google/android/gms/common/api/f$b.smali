.class Lcom/google/android/gms/common/api/f$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field public final Sb:Lcom/google/android/gms/common/api/GoogleApiClient;

.field public final Se:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/f$b;->Sb:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p2, p0, Lcom/google/android/gms/common/api/f$b;->Se:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/api/f$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/api/f$b;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method
