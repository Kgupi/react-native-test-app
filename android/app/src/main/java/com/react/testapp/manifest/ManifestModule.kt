//
// Copyright (c) Microsoft Corporation
//
// This source code is licensed under the MIT license found in the
// LICENSE file in the root directory of this source tree.
//

package com.react.testapp.manifest

import com.squareup.moshi.JsonAdapter
import com.squareup.moshi.Moshi
import dagger.Module
import dagger.Provides
import javax.inject.Singleton

@Module
class ManifestModule {

    @Provides
    @Singleton
    fun providesMoshi(): Moshi {
        return Moshi.Builder().add(MoshiBundleAdapter()).build()
    }

    @Provides
    @Singleton
    fun providesManifestMoshiAdapter(moshi: Moshi): JsonAdapter<Manifest> {
        return ManifestJsonAdapter(moshi)
    }
}
