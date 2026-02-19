import {
  BaseConfig,
  type ConfigArguments,
  type ConfigReturn,
} from "jsr:@shougo/dpp-vim/config";
import type { Plugin } from "jsr:@shougo/dpp-vim/types";
import * as fn from "jsr:@denops/std/function";

type Toml = {
  plugins?: Plugin[];
  ftplugins?: Record<string, string>;
};

type LazyMakeStateResult = {
  plugins: Plugin[];
  stateLines: string[];
};

export class Config extends BaseConfig {
  override async config(args: ConfigArguments): Promise<ConfigReturn> {
    args.contextBuilder.setGlobal({
      protocols: ["git"],
    });

    const [context, options] = await args.contextBuilder.get(args.denops);

    let plugins: Plugin[] = [];
    let stateLines: string[] = [];
    const ftplugins: Record<string, string> = {};

    const tomlResult = await args.dpp.extAction(
      args.denops,
      context,
      options,
      "toml",
      "load",
      {
        path: `${await fn.expand(args.denops, "~/.config/nvim")}/plugins/dpp.toml`,
        options: {},
      },
    ) as Toml | undefined;

    if (tomlResult) {
      plugins = [...plugins, ...(tomlResult.plugins ?? [])];
      for (const [ft, plug] of Object.entries(tomlResult.ftplugins ?? {})) {
        ftplugins[ft] = `${ftplugins[ft] ?? ""}${plug}`;
      }
    }

    const lazyResult = await args.dpp.extAction(
      args.denops,
      context,
      options,
      "lazy",
      "makeState",
      { plugins },
    ) as LazyMakeStateResult | undefined;

    if (lazyResult) {
      plugins = lazyResult.plugins;
      stateLines = lazyResult.stateLines;
    }

    return { ftplugins, plugins, stateLines };
  }
}
