<x-filament::page>
    <form wire:submit.prevent="merge" class="space-y-6">
        {{ $this->form }}

        <x-filament::button type="submit">
            Merge PDFs
        </x-filament::button>
    </form>

    @if (session()->has('success'))
        <div class="mt-4 text-green-600 font-semibold">
            {{ session('success') }}
        </div>
    @endif

    @if (!empty($mergedFiles))
        <div class="mt-6">
            <h3 class="text-lg font-bold">Merged Files:</h3>
            <ul class="list-disc list-inside">
                @foreach ($mergedFiles as $url)
                    <li>
                        <a href="{{ $url }}" class="text-blue-600 underline" target="_blank">
                            {{ basename($url) }}
                        </a>
                    </li>
                @endforeach
            </ul>
        </div>
    @endif
</x-filament::page>
